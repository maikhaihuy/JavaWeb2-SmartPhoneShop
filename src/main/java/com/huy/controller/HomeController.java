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

import com.huy.model.pojo.*;

import com.huy.model.services.*;

/**
 * Servlet implementation class HomeController
 */
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	final private String index = "index";
	final private String products = "products";
	final private String detailProduct = "detailProduct";
	final private String searchAdv = "searchAdvance";
	
	final private String urlIndex = "/pages/home/index.jsp";
	final private String urlProducts = "/pages/home/products.jsp";
	final private String urlDetailProduct = "/pages/home/detail-product.jsp";
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ServiceDao sd = new ServiceDao();
		
		String url = urlIndex;
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		
		if (action != null) {
			// Action products
			if (action.equals(products)) {
				// Get products from database
				List<Product> products = sd.GetProducts();
				//Set products to request
				request.setAttribute("products", products);

				url = urlProducts;
			}
			// Action detail product
			else if (action.equals(detailProduct)) {
				// Get product from requets
				String productId = request.getParameter("productId");
				
				if (productId != null) {
					// Get detail product from database
					List<DetailProduct> detailProducts = sd.GetDetailProducts(Integer.valueOf(productId));
					// Get product from database
					Product product = sd.GetProduct(Integer.valueOf(productId));
					
					// Define images for product
					List<Image> images = new ArrayList<Image>(product.getImages());
					// Define colors for product
					List<Color> colors = new ArrayList<Color>();
					for(DetailProduct detailProduct : detailProducts) {
						colors.add(detailProduct.getColor());
					}
					
					// Set information of product to request
					request.setAttribute("product", product);
					request.setAttribute("detailProducts", detailProducts);
					request.setAttribute("images", images);
					request.setAttribute("colors", colors);
					url = urlDetailProduct;
				}
			}
		}

		List<Brain> brains = sd.GetBrains();
		session.setAttribute("brains", brains);

		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		processRequest(request, response);
	}
}
