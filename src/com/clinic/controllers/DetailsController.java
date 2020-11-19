package com.clinic.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DetailsController")
public class DetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String clid = request.getParameter("clid");
		HttpSession session = request.getSession();
		session.setAttribute("clid", clid);
		
		System.out.println("clid"+clid);
		
		response.sendRedirect("details.jsp");
		
		
	}

}
