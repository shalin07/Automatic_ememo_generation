package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.condition.RequestMethodsRequestCondition;

import com.VO.LocationVO;
import com.VO.reportsVO;
import com.VO.staffAllocationVO;
import com.VO.staffVO;
import com.DAO.*;
@Controller
public class demo {
	
	@Autowired
	DAO d;
	/*@RequestMapping(value="/index.html",method= RequestMethod.GET)
	public ModelAndView helloworld(){
		
		return new ModelAndView("admin/index");
	}*/
	
	@RequestMapping(value="/training.html",method= RequestMethod.GET)
	public ModelAndView training(){
		
		return new ModelAndView("admin/training");
	}
	@RequestMapping(value="/reports.html",method= RequestMethod.GET)
	public ModelAndView reports(){
		reportsVO rv = new reportsVO();
		Map model = new HashMap();
		List ls = d.searchreports(rv);
		Iterator itr=ls.iterator();  
		System.out.println("traversing elements in forward direction...");  
		while(itr.hasNext()){  
			System.out.println(itr.next());  
		}
		return new ModelAndView("admin/reports");
	}
	
	/*@RequestMapping(value="/reports.html",method= RequestMethod.GET)
	public String index(Map<String, Object> map) {
		try {
			map.put("document", new Document());
			map.put("documentList", documentDao.list());
		}catch(Exception e) {
			e.printStackTrace();
		}

		return "documents";
	}*/


@RequestMapping(value="/admin_dataset.html",method= RequestMethod.GET)
public ModelAndView admin_dataset(){
	
	return new ModelAndView("admin/admin_dataset");
}

@RequestMapping(value="/admin_managefine.html",method= RequestMethod.GET)
public ModelAndView admin_managefine(){
	
	return new ModelAndView("admin/admin_managefine");
}








}
