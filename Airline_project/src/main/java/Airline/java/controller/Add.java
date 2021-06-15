package Airline.java.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String f_no = request.getParameter("f_no");
		String f_name = request.getParameter("f_name");
		String source = request.getParameter("s");
		String dest = request.getParameter("d");
		String date = request.getParameter("date");
		String a_time = request.getParameter("ad");
		String d_time = request.getParameter("dd");
		String price = request.getParameter("p");
		
		String url ="jdbc:mysql://localhost:3306/airline";
		
		String sql = "insert into airline.flight values(?,?,?,?,?,?,?,?,?);";
		String sql2 ="SELECT * FROM airline.flight;";
		int count1 =1;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url , "root" , "systemserver");
			
			Statement st = con.createStatement();
			ResultSet tbrs = st.executeQuery(sql2);
			while(tbrs.next())
				count1++;
			PreparedStatement st2 =con.prepareStatement(sql);
			st2.setInt(1, count1);
			st2.setString(2, f_no);
			st2.setString(3, f_name);
			st2.setString(4, source);
			st2.setString(5, dest);
			st2.setString(6, date);
			st2.setString(7, a_time);
			st2.setString(8, d_time);
			st2.setString(9, price);
			int s =  st2.executeUpdate();
			System.out.println(s +" row added in flight table!");
			response.sendRedirect("edit_flight.jsp");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
