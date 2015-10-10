package com.huy.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huy.model.pojo.Account;
import com.huy.model.pojo.Brain;
import com.huy.model.services.ServiceDao;
import javax.servlet.http.HttpSession;  
/**
 * Servlet implementation class AccountController
 */
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Actions
		final private String loadLoginPage = "loadLogin";
		final private String loadRegisterPage = "loadRegister";
		final private String login = "login";
		final private String register = "register";
		final private String logout = "logout";
		final private String registerSuc = "registerSuccess";
		// Uri
		final private String urlIndex = "/pages/home/index.jsp";
		final private String urlLogin = "/pages/account/login.jsp";
		final private String urlRegister = "/pages/account/register.jsp";
		final private String urlRegisterSuc = "/pages/account/register_success.jsp";
				
		protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			//response.setContentType("text/html;charset=UTF-8");
			ServiceDao sd = new ServiceDao();
			
	        String url = urlIndex;
			String action = request.getParameter("action");
			HttpSession session = request.getSession();
			
			List<Brain> brains = sd.GetBrains();
			session.setAttribute("brains", brains);
			
			if (action != null) {
				if(session.getAttribute("user") == null && session.getAttribute("email") == null){
					// Action load login page
					if (action.equals(loadLoginPage)) {
						url = urlLogin;
					}
					// Action load register page
					else if (action.equals(loadRegisterPage)) {
						url = urlRegister;
					}
					//Action login account
					else if (action.equals(login)) {
						String email = request.getParameter("email");
						String password = request.getParameter("password");
						
						Account acc = sd.Login(email, password);
						
						// Login is successful!
						if(acc != null) {
							session.setAttribute("user", acc.getFirstname() + " " + acc.getLastname());
							session.setAttribute("email", acc.getEmail());
							
		                    /*Cookie loginCookie = new Cookie("username", user.getFirstName() + user.getLastName());
		                    //setting cookie to expiry in 30 mins
		                    loginCookie.setMaxAge(30*60);
		                    response.addCookie(loginCookie);*/
		                    url = "home.do";
		                    response.sendRedirect(url);
		                    return ;
						}
						else {
							String msg = "Username or Password was wrong.";
		                    request.setAttribute("msg", msg);
							url = urlLogin;
						}
							
					}
					// Action register account
					else if (action.equals(register)){
						String firstname = request.getParameter("firstname");
						String lastname = request.getParameter("lastname");
						String email = request.getParameter("email");
						String password = request.getParameter("password");
						
						Account acc = sd.Register(email, firstname, lastname, password);
						
						// Register succesful!
						if (acc != null) {
							String msg = "Registration successful";
							// Set information of user to request
		                    request.setAttribute("msg", msg);
		                    request.setAttribute("firstname", acc.getFirstname());
		                    request.setAttribute("lastname", acc.getLastname());
		                    request.setAttribute("email", acc.getEmail());
		                    
		                    // Set user to session
							session.setAttribute("user", acc.getFirstname() + " " + acc.getLastname());
							session.setAttribute("email", acc.getEmail());
		                    
							url = urlRegisterSuc;
						}
						else {
							String msg = "Registration failure";
		                    request.setAttribute("msg", msg);
							url = urlRegister;
						}
					}
				}
				
				else if (action.equals(logout)) {
					url = "home.do";
	                response.setContentType("text/html");
	                /*Cookie loginCookie = null;
	                Cookie[] cookies = request.getCookies();
	                if(cookies != null){
	                for(Cookie cookie : cookies){
	                    if(cookie.getName().equals("username")){
	                        loginCookie = cookie;
	                        break;
	                    }
	                }
	                }
	                if(loginCookie != null){
	                    loginCookie.setMaxAge(0);
	                    response.addCookie(loginCookie);
	                }*/
	                session.invalidate();
	                
	                response.sendRedirect(url);
	                return;
				}
			}
			
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
