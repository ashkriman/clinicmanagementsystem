package com.clinic.controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.clinic.dao.UserDao;
import com.clinic.pojos.Clinic;
import com.clinic.pojos.Users;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/AddClinicController")
public class AddClinicController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int clid;
		String clname = "";
		String cladd = "";
		String clspeciality = "";
		String clcontact = "";
		String cldesc = "";
		String id = request.getParameter("clid");
		clid =Integer.parseInt(id);
		clname = request.getParameter("clnm");
		cladd = request.getParameter("clad");
		clspeciality = request.getParameter("clsp");
		clcontact = request.getParameter("clct");
		cldesc = request.getParameter("clds");
		
		Clinic cl = new Clinic(clid,clname,cladd,clspeciality,clcontact,cldesc);
		
		
		boolean status;
		try {
			UserDao dao = new UserDao();
			status = dao.clinic(cl);
			if(status) {
				System.out.println("Registered Successfully");
				
				response.sendRedirect("adminpage.jsp");
			}
			else
				System.out.println("Registration failed");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
