package oop_login;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {

	
	private static Connection con;

	public static Connection getConnection() {
		String url = "jdbc:mysql://localhost:3306/laundrydb";
		String userN = "root";
		String psw = "1234";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userN,psw);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}

}
