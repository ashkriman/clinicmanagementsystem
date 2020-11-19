package com.clinic.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionUtils {
	static private Connection conn = null;
	
	public static Connection getConnection() throws Exception
	{
		System.out.println("Hello");
		if(conn == null)
		{
			
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/clinicsystem","postgres", "postgresql");
		}	
		else {
			System.out.println("Created");
		}
		
		return conn;
	}
}
