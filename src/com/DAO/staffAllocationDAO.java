package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.staffAllocationVO;
@Repository
public class staffAllocationDAO {

	@Autowired
	SessionFactory sessionFactory;
	
public void insert(staffAllocationVO sav) {
		
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(sav);
		tr.commit();
		session.flush();
		session.close();

	}

public List viewStaffAllocation(staffAllocationVO sav){
	List ls= new ArrayList();
	Session session = sessionFactory.openSession();
	
	Query q= session.createQuery("from staffAllocationVO");
//Query q= session.createQuery("from regvo where fn ='"+v.getFn()+"'");		
	 ls=q.list();
	 session.flush();
	session.close();
	return ls;
}
	
}
