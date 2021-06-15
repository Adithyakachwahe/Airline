package Airline.java.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class deleterow {
	public boolean delete(String idString , String tablename)
	{
		String url ="jdbc:mysql://localhost:3306/database_1";
		String uname = "root";
		String pass = "systemserver";
		String sql="";
		if(tablename == "airline.flight") 
		{
			 sql = "delete from "+ tablename +" where f_id=" + idString + ";";
		}
		else if(tablename == "airline.ticket_booked") 
		{
			 sql = "delete from "+ tablename +" where booked_id=" + idString + ";";
		}
		else if(tablename == "airline.confirmation") {
			sql = "delete from "+ tablename +" where c_id=" + idString + ";";
		}
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,uname,pass);
			Statement st = con.createStatement();
			int count =  st.executeUpdate(sql);
			//System.out.println(count);
			return true;
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
}
