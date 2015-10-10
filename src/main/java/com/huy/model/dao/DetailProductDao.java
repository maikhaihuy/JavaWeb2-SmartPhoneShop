package com.huy.model.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.huy.model.pojo.DetailProduct;
import com.huy.model.util.HibernateUtil;

public class DetailProductDao {
	public DetailProductDao(){
		
	}
	
	public DetailProduct AddDetailProduct() {
		DetailProduct dp = null;
		return null;
	}
	
	public List<DetailProduct> GetDetailProducts(int productId) {
		List<DetailProduct> detailProducts = null;
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		Query query = session.createQuery("FROM DetailProduct WHERE ProductId = " + productId);
		detailProducts = (List<DetailProduct>)query.list();
		
		//session.close();
		
		return detailProducts;
	}
	
	public DetailProduct GetDetailProduct(int productId, int colorId) {
		DetailProduct detailProduct = null;
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		
		Query query = session.createQuery("FROM DetailProduct WHERE ProductId = " + productId + "AND ColorId = " + colorId);
		detailProduct = (DetailProduct)query.list().get(0);
		
		//session.close();
		
		return detailProduct;
	}
}
