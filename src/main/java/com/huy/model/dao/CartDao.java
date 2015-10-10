package com.huy.model.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.huy.model.pojo.Account;
import com.huy.model.pojo.Cart;
import com.huy.model.pojo.DetailCart;
import com.huy.model.pojo.DetailProduct;
import com.huy.model.util.HibernateUtil;

public class CartDao {
	public CartDao() {
		
	}
	
	public Cart AddCart(String email, List<DetailProduct> lstDetailProduct) {
		Cart cart = null;
		Integer cartId = null;
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction  tx = session.beginTransaction();

		cart = new Cart(email, (new Date()).toString());
		cartId = (Integer) session.save(cart); 
        tx.commit();
		session.close();
		
        if(cartId != null) {
        	AddDetailCart(cart, lstDetailProduct);
        }
        
		return cartId != null ? cart : null;
	}
	
	private void AddDetailCart(Cart cart, List<DetailProduct> lstDetailProduct) {
		for(DetailProduct dp : lstDetailProduct ) {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction  tx = session.beginTransaction();

			DetailCart dcart = new DetailCart(cart, dp);
			session.save(dcart);
	        tx.commit();
		}
	}
}
