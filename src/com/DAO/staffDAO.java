package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.LocationVO;
import com.VO.staffAllocationVO;
import com.VO.staffVO;
@Repository
public class staffDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	
	public void insert(staffVO v) {
		
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(v);
		tr.commit();
		session.flush();
		session.close();
	
}


			
	public List viewStaff(staffVO sv){
				List ls= new ArrayList();
				Session session = sessionFactory.openSession();
				
				Query q= session.createQuery("from staffVO");
			//Query q= session.createQuery("from regvo where fn ='"+v.getFn()+"'");		
				 ls=q.list();
				 session.flush();
				session.close();
				return ls;
	}
	
	public List searchbyid(staffVO sv){
		List ls= new ArrayList();
		Session session = sessionFactory.openSession();
		
		//Query q= session.createQuery("from regvo where fn like '%"+v.getFn()+"%'");
		Query q= session.createQuery("from staffVO where id ='"+sv.getStaffID()+"'");		
		ls=q.list();
		 session.flush();
		session.close();
		return ls;
	}
	
public void update(staffVO sv) {
		
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.update(sv);
		tr.commit();
		session.flush();
		session.close();
	
}
	
public void delete(staffVO sv) {
		
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(sv);
		tr.commit();
		session.flush();
		session.close();
	
}
}
