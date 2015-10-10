package com.huy.model.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.huy.model.pojo.Brain;
import com.huy.model.util.HibernateUtil;

public class BrainDao {
	public BrainDao() {
		
	}
	
	public List<Brain> GetBrains() {
		List<Brain> lstBrains = null;
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		Query query = session.createQuery("FROM Brain");
		lstBrains = (List<Brain>)query.list();
		
		session.close();
		
		return lstBrains;
	}
}
