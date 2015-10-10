package com.huy.model.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.huy.model.pojo.Account;
import com.huy.model.util.HibernateUtil;

public class AccountDao {
	public AccountDao() {
		
	}
	
	public Account Login(String email, String password) {
		Account acc = null;
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		Query query = session.createQuery("FROM Account WHERE Email = \'" + email + "\'");
		if(query.list().size() > 0)
			acc = (Account)query.list().get(0);
		
		if (acc != null) {
			if (!acc.getPassword().equals(password))
				acc = null;
		}
		
		session.close();
		
		return acc;
	}
	
	public Account Register(String email, String password, String firstname, String lastname) {
		Account acc = null;
		Integer accId = null;
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction  tx = session.beginTransaction();

        acc = new Account(email, firstname, lastname, password);
        accId = (Integer) session.save(acc); 
        tx.commit();
		
		return accId != null ? acc : null;
	}
}
