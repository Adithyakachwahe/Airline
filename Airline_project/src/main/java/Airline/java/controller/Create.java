package Airline.java.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Create")
public class Create extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int count =1;
		String uString  = request.getParameter("u");
		String pString = request.getParameter("p");
		
		String url ="jdbc:mysql://localhost:3306/database_1";
		String uname = "root";
		String pass = "systemserver";
		String sql = "SELECT * FROM airline.loged;";
		String sql1 = "insert into airline.loged values(?,?,?);";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url , "root" ,"systemserver");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next())
				count++;
			
			PreparedStatement st1 = con.prepareStatement(sql1);
			st1.setInt(1, count);
			st1.setString(2, uString);
			st1.setString(3,pString);
			int c =  st1.executeUpdate();
			System.out.println(c + "row updated/added");
			response.sendRedirect("login.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
