package com.huy.model.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import com.huy.model.util.*;
import com.huy.model.pojo.Product;

public class ProductDao {
	//Session sesion = null;
	
		public ProductDao() {
			//sesion = HibernateUtil.getSessionFactory().openSession();
		}
		
		public List<Product> GetProducts() {
			List<Product> products = null;
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			
			Query query = session.createQuery("FROM Product");
			products = query.list();
			
			session.close();
			
			return products;
		}
		
		public Product GetProduct(int productId) {
			Product product = null;
			
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			
			Query query = session.createQuery("FROM Product WHERE ProductId = " + productId);
			product = (Product)query.list().get(0);
			
			//session.close();
			
			return product;
		}
}
