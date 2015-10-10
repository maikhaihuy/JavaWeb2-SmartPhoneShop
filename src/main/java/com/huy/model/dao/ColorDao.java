package com.huy.model.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.huy.model.pojo.Color;
import com.huy.model.util.HibernateUtil;

public class ColorDao {
	public ColorDao() {
		
	}
	
	public List<Color> GetColors() {
		List<Color> lstColors = null;
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		Query query = session.createQuery("FROM Color");
		lstColors = query.list();
		
		session.close();
		
		return lstColors;
	}
}
