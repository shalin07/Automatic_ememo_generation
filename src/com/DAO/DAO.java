package com.DAO;
import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.LocationVO;
import com.VO.reportsVO;
import com.VO.staffAllocationVO;
import com.VO.staffVO;
@Repository
public class DAO {


	



	
	

		@Autowired
		SessionFactory sessionFactory;
		

		public void insert(LocationVO v) {
			
			Session session = sessionFactory.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(v);
			tr.commit();
			session.flush();
			session.close();
		
	}
		public List searchreports(reportsVO v){
			List ls= new ArrayList();
			Session session = sessionFactory.openSession();
			Map model = new HashMap();
			//Query q= session.createQuery("from regvo where fn like '%"+v.getFn()+"%'");
			Query q= session.createQuery("SELECT E.report FROM reportsVO E");		
			ls=q.list();
			session.flush();
			session.close();
			return ls;
		}

		
		
		
		
		
		/*public List searchbyid(regvo v){
			List ls= new ArrayList();
			Session session = sessionFactory.openSession();
			
			Query q= session.createQuery("from regvo where fn like '%"+v.getFn()+"%'");
		Query q= session.createQuery("from regvo where id ='"+v.getId()+"'");		
			ls=q.list();
			 session.flush();
			session.close();
			return ls;
		}
		
		public List<regvo> searchbyuser(regvo v){
			List<regvo> ls= new ArrayList<regvo>();
			Session session = sessionFactory.openSession();
			
			Query q= session.createQuery("from regvo where fn like '%"+v.getFn()+"%'");
			Query q= session.createQuery("from regvo where un ='"+v.getUn()+"'");		
			ls=q.list();
			 session.flush();
			session.close();
			return ls;
		}
		
		
	*/	
		
		

}




