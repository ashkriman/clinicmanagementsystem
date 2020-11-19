package com.clinic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.clinic.pojos.Clinic;
import com.clinic.pojos.Users;
import com.clinic.utils.ConnectionUtils;


public class UserDao {
	private PreparedStatement pst,pst1,pst2,pst3,pst4,pst5;
	private Statement stmt;
	private Connection conn;
	
	public UserDao() throws Exception {
		super();
		
		this.conn= ConnectionUtils.getConnection();
		this.pst = this.conn.prepareStatement("select * from credentials where username=? and password=?");
		this.pst1 = this.conn.prepareStatement("insert into users values(?,?,?,?)");
		this.pst2 = this.conn.prepareStatement("insert into credentials values(?,?)");
		this.stmt = this.conn.createStatement();
		this.pst3 = this.conn.prepareStatement("select * from clinic where clid=?");
		this.pst4 = this.conn.prepareStatement("select * from doctor where clid=?");
		this.pst5 = this.conn.prepareStatement("insert into clinic values(?,?,?,?,?,?)");
	}

	public boolean authenticate(String username, String password) throws Exception {
		pst.setString(1,username);
		pst.setString(2,password);
		ResultSet rs = pst.executeQuery();
		
		//this.stmt = this.conn.createStatement();
		//ResultSet rs = stmt.executeQuery("select * from credentials where username='Piyush' and password='12345'");
		
		if(rs.next())
		{
			return true;
			
		}
		return false;
		}
	
	public boolean register(Users user) throws SQLException {
		pst1.setString(1, user.getName());
		pst1.setString(2, user.getEmail());
		pst1.setString(3, user.getMobno());
		pst1.setString(4, user.getPassword());
		pst2.setString(1, user.getMobno());
		pst2.setString(2, user.getPassword());
		
		int status1 = pst1.executeUpdate();
		int status2 = pst2.executeUpdate();
		System.out.println("status1"+ status1);
		System.out.println("status2"+ status2);
		if(status1>0 && status2>0) {
			return true;
		}
		else
			return false;
		
	}
	
	public boolean clinic(Clinic cl) throws SQLException {
		pst5.setInt(1, cl.getClid());
		pst5.setString(2, cl.getClname());
		pst5.setString(3, cl.getCladd());
		pst5.setString(4, cl.getClspeciality());
		pst5.setString(5, cl.getCtcontact());
		pst5.setString(6, cl.getCtdesc());
		
		int status1 = pst5.executeUpdate();
		
		System.out.println("status1"+ status1);
		
		if(status1>0) {
			return true;
		}
		else
			return false;
		
	}
	
	
     
	

}
