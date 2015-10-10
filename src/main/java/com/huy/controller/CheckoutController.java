package com.huy.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.huy.common.SendMail;
import com.huy.model.pojo.Brain;
import com.huy.model.pojo.DetailProduct;
import com.huy.model.pojo.Product;
import com.huy.model.services.ServiceDao;

/**
 * Servlet implementation class CheckoutController
 */
public class CheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	final private String checkOut = "checkOut";
	final private String addToCart = "addToCart";
	final private String editCart = "editCart";
	final private String confirmBook = "confirmBook";
	
	final private String urlIndex = "/pages/checkout/index.jsp";
	final private String urlCart = "/pages/checkout/cart.jsp";
	final private String urlCheckOut = "/pages/checkout/check-out.jsp";
	final private String urlLogin = "/pages/account/login.jsp";
	final private String urlBookSuc = "/pages/checkout/book-success.jsp";
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Service from Dao
		ServiceDao sd = new ServiceDao();
		
		// Define variable
		String url = urlIndex;
		String action = request.getParameter("action");
		HttpSession session=request.getSession();
		
		// Check action
		if (action != null) {
			// action: add product to cart
			if (action.equals(addToCart)) {
				// Warning
				// Get parameter from request
				String productId = request.getParameter("productId");
				String colorId = request.getParameter("colorId");
				
				// Get detail product from database
				DetailProduct detailProductAddToCart = (DetailProduct) sd.GetDetailProduct(Integer.valueOf(productId), Integer.valueOf(colorId));
				
				//Cart get from session
				List<DetailProduct> cart = (List<DetailProduct>)session.getAttribute("cart");
				// Total cost
				Float totalCost = (Float) session.getAttribute("totalCost");
				
				// Add new cart
				if(cart == null) {
					cart = new ArrayList<DetailProduct>();
					totalCost = 0f;
					
					session.setAttribute("cart", cart);
					session.setAttribute("totalCost", totalCost);
				}
				
				// Update cart
				cart.add(detailProductAddToCart);
				
				// Update total cost
				totalCost += detailProductAddToCart.getProduct().getPrice();
				session.setAttribute("totalCost", totalCost);
				
				// Set products for request
				List<Product> products = sd.GetProducts();
				request.setAttribute("products", products);
				
				url = urlCart;
			} else if (action.equals(editCart)) { // Only remove product, not edit number of product.
				// Warning
				String detailProductId = request.getParameter("detailProductId");
				
				// Edit cart
				if(detailProductId != null) {
					// Cart get from session
					List<DetailProduct> cart = (List<DetailProduct>)session.getAttribute("cart");
					Float totalCost = (Float) session.getAttribute("totalCost");
					
					// Remove product.
					int i = 0;
					for(DetailProduct dProduct : cart){
						if(dProduct.getDetailProductId().equals(Integer.valueOf(detailProductId))) {
							totalCost -= dProduct.getProduct().getPrice();
							session.setAttribute("totalCost", totalCost);
							cart.remove(i);
							break;
						}
						i++;
					}
					session.setAttribute("cart", cart);
				}
				url = urlCart;
			} else if (action.equals(checkOut)) {
				String user = (String) session.getAttribute("user");
				String email = (String) session.getAttribute("email");
				
				// Check out
				if (user != null && email != null) {
					url = urlCheckOut;
				}
				// Login || Register
				else {
					url = urlLogin;
				}
					
			} else if (action.equals(confirmBook)) {
				String address = request.getParameter("address");
				String phone = request.getParameter("phone");
				
				String user = (String) session.getAttribute("user");
				String email = (String) session.getAttribute("email");
				List<DetailProduct> lstDetailProduct = (List<DetailProduct>)session.getAttribute("cart");
				//Clear session
				session.removeAttribute("cart");
				session.removeAttribute("totalCost");
				
				// Send mail
				SendMail send = new SendMail();
				send.SendTo(user, email);
				
				// Save database
				sd.AddCart(email, lstDetailProduct);
				
				// Set request
				request.setAttribute("address", address);
				request.setAttribute("phone", phone);
				url = urlBookSuc;
			}
		}

		List<Brain> brains = sd.GetBrains();
		session.setAttribute("brains", brains);

		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		processRequest(request, response);
	}

}
