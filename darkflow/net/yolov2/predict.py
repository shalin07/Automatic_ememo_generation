import numpy as np
import math
import cv2
import os
import json
from flask import Flask
import time

from flaskext.mysql import MySQL
# from scipy.special import expit
# from utils.box import BoundBox, box_iou, prob_compare
# from utils.box import prob_compare2, box_intersection
from ...utils.box import BoundBox
from ...cython_utils.cy_yolo2_findboxes import box_constructor
mysql = MySQL()
app = Flask(__name__)
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'project'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)

conn = mysql.connect()
cursor = conn.cursor()

def expit(x):
    return 1. / (1. + np.exp(-x))


def _softmax(x):
    e_x = np.exp(x - np.max(x))
    out = e_x / e_x.sum()
    return out


def findboxes(self, net_out):
    # meta
    meta = self.meta
    boxes = list()
    boxes = box_constructor(meta, net_out)
    return boxes


def postprocess(self, net_out, im, save=True):
    """
    Takes net output, draw net_out, save to disk
    """
    boxes = self.findboxes(net_out)
    cursor.execute("select max(id) from reports")
    data = cursor.fetchone()
    count = data[0] + 1
    counter = 0
    #print(count)


    # meta
    meta = self.meta
    threshold = meta['thresh']
    colors = meta['colors']
    labels = meta['labels']
    if type(im) is not np.ndarray:
        imgcv = cv2.imread(im)
    else:
        imgcv = im
    h, w, _ = imgcv.shape

    resultsForJSON = []
    for b in boxes:
        boxResults = self.process_box(b, h, w, threshold)
        if boxResults is None:
            continue
        left, right, top, bot, mess, max_indx, confidence = boxResults
        #print(max_indx)
        #print(confidence)
        left = left -100
        right = right +100
        top = top -20
        bot = bot +20
        #print(top)
        #print(left)
        thick = int((h + w) // 300)
        if self.FLAGS.json:
            resultsForJSON.append(
                {"label": mess, "confidence": float('%.2f' % confidence), "topleft": {"x": left, "y": top},
                 "bottomright": {"x": right, "y": bot}})
            continue
        imgsave = imgcv[top:bot, left:right]
        if mess == "bike" and confidence > 0.80:
            name= "adminresources\\reports\\gray" + str(count) + ".jpg"
            #print("writing image")
            print(str(count) + " "+ str(confidence))


            cv2.imwrite("C:\\New folder (2)\\finalproject2\\WebContent\\"+ name, imgsave)


            cursor.execute("insert ignore into reports(report) VALUES(%s) ", (name))

            conn.commit()


        cv2.rectangle(imgcv,
                      (left, top), (right, bot),
                      colors[max_indx], thick)
        cv2.putText(imgcv, mess, (left, top - 12),
                    0, 1e-3 * h, colors[max_indx], thick // 3)


    if not save: return imgcv

    outfolder = os.path.join(self.FLAGS.imgdir, 'out')
    img_name = os.path.join(outfolder, os.path.basename(im))
    if self.FLAGS.json:
        textJSON = json.dumps(resultsForJSON)
        textFile = os.path.splitext(img_name)[0] + ".json"
        with open(textFile, 'w') as f:
            f.write(textJSON)
        return

    cv2.imwrite(img_name, imgcv)