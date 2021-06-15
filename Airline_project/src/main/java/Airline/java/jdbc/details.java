package Airline.java.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class details {
	String url = "jdbc:mysql://localhost:3306/airline";
	

	public String display_details_one(String sql) throws ClassNotFoundException, SQLException {
		String url ="jdbc:mysql://localhost:3306/database_1";
		String uname = "root";
		String pass = "systemserver";

		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,uname,pass);
		Statement st = con.createStatement();
		ResultSet rSet =  st.executeQuery(sql);    //DDL , DML ,DQL
		
		while(rSet.next()){
//			System.out.println(rSet.getString(1));
			String data = rSet.getString(1);
//			System.out.println(data);
			return data;
		}
		
		
		st.close();
		con.close();
		return "Not Entered";
		
	}

}
