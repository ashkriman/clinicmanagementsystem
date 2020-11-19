package com.clinic.controllers;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.clinic.dao.UserDao;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HttpSession session = request.getSession();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			System.out.println("Username"+username);
			//Connection conn = ConnectionUtils.getConnection();
			UserDao dao = new UserDao();
			boolean status = dao.authenticate(username, password);
			if(status) {
				session.setAttribute("username", username);
				if(username.equals("admin")) {
					System.out.println("Successful");
				    response.sendRedirect("adminpage.jsp");
				
				}
				System.out.println("Successful");
				response.sendRedirect("homepage.jsp");
				
			}
			else
			System.out.println("failed");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
