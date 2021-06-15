package Airline.java.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class check   {
	String url = "jdbc:mysql://localhost:3306/airline";
	public boolean isid(String sql ,  String user_id , String password) throws ClassNotFoundException, SQLException
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(url , "root" ,"systemserver");
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, user_id );
		st.setString(2, password);
		ResultSet rs = st.executeQuery();
		if(rs.next())
		{
			return true;
		}
		
		else {
			return false;
		}
		
	}
}
