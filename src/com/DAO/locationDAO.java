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
@Repository
public class locationDAO {
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
	
	public List searchbyid(LocationVO v){
		List ls= new ArrayList();
		Session session = sessionFactory.openSession();
		
		//Query q= session.createQuery("from regvo where fn like '%"+v.getFn()+"%'");
		Query q= session.createQuery("from LocationVO where id ='"+v.getLocationId()+"'");		
		ls=q.list();
		 session.flush();
		session.close();
		return ls;
	}
	
	public List viewLocation(LocationVO v){
		List ls= new ArrayList();
		Session session = sessionFactory.openSession();
		
		Query q= session.createQuery("from LocationVO");
	//Query q= session.createQuery("from regvo where fn ='"+v.getFn()+"'");		
		 ls=q.list();
		 session.flush();
		session.close();
		return ls;
	}
	public void update(LocationVO v) {
		
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.update(v);
		tr.commit();
		session.flush();
		session.close();
	
}
	
	public void delete(LocationVO v) {
		
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(v);
		tr.commit();
		session.flush();
		session.close();
	
}
}
