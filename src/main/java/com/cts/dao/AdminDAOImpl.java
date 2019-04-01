package com.cts.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cts.entity.Admin;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void registerUser(Admin admin) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(admin);
		
	}
	

}
