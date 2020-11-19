package com.clinic.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.dao.UserDao;
import com.clinic.pojos.Users;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = "";
		String email = "";
		String password = "";
		String mobno = "";
		name = request.getParameter("name");
		email = request.getParameter("email");
		mobno = request.getParameter("mobno");
		password = request.getParameter("password");
		
		Users user = new Users(name,email,mobno,password);
		
		
		boolean status;
		try {
			UserDao dao = new UserDao();
			status = dao.register(user);
			if(status) {
				System.out.println("Registered Successfully");
				response.sendRedirect("login.jsp");
			}
			else
				System.out.println("Registration failed");
				response.sendRedirect("register.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
