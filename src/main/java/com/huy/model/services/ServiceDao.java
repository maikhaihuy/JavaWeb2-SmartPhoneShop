package com.huy.model.services;

import java.util.List;

import com.huy.model.dao.*;
import com.huy.model.pojo.*;

public class ServiceDao {
	ProductDao pd = new ProductDao();
	BrainDao bd = new BrainDao();
	DetailProductDao dpd = new DetailProductDao();
	AccountDao ad = new AccountDao();
	CartDao cd = new CartDao();
	
	public ServiceDao() {
		
	}
	
	// Brain
	public List<Brain> GetBrains() {
		return bd.GetBrains();
	}
	
	// Product
	public Product GetProduct(int productId) {
		return pd.GetProduct(productId);
	}
	
	public List<Product> GetProducts(){
		return pd.GetProducts();
	}
	
	//Detail product
	public List<DetailProduct> GetDetailProducts(int productId) {
		return dpd.GetDetailProducts(productId);
	}
	
	public DetailProduct GetDetailProduct(int detailProductId, int colorId){
		return dpd.GetDetailProduct(detailProductId, colorId);
	}
	
	// Account
	public Account Login(String email, String password) {
		return ad.Login(email, password);
	}
	
	public Account Register(String email, String firstname, String lastname, String password){
		return ad.Register(email, password, firstname, lastname);
	}
	
	// Cart
	public Cart AddCart(String email, List<DetailProduct> lstDetailProduct) {
		return cd.AddCart(email, lstDetailProduct);
	}
}
