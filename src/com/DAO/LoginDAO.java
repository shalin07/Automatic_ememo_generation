package com.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.VO.LoginVO;

@Repository
public class LoginDAO {

	@Autowired
	SessionFactory factory;
	
	public void addUser(LoginVO v)
	{
	
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		session.save(v);
		t.commit();
		session.close();
	}
	
	public List getLoginId(LoginVO loginVO)
	{
		List ls = new ArrayList();
		try
			{
				Session session=factory.openSession();
				Query query=session.createQuery("from LoginVO where loginUsername='"+loginVO.getUsername()+"'");
				ls=query.list();
			}
		catch(Exception ex)
			{
				ex.printStackTrace();
			}
		return ls;
	}

}

