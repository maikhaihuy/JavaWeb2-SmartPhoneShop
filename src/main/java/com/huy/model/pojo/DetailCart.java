package com.huy.model.pojo;
// Generated Oct 10, 2015 2:13:18 AM by Hibernate Tools 4.3.1

/**
 * DetailCart generated by hbm2java
 */
public class DetailCart implements java.io.Serializable {

	private Integer detailCartId;
	private Cart cart;
	private DetailProduct detailProduct;

	public DetailCart() {
	}

	public DetailCart(Cart cart, DetailProduct detailProduct) {
		this.cart = cart;
		this.detailProduct = detailProduct;
	}

	public Integer getDetailCartId() {
		return this.detailCartId;
	}

	public void setDetailCartId(Integer detailCartId) {
		this.detailCartId = detailCartId;
	}

	public Cart getCart() {
		return this.cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public DetailProduct getDetailProduct() {
		return this.detailProduct;
	}

	public void setDetailProduct(DetailProduct detailProduct) {
		this.detailProduct = detailProduct;
	}

}
