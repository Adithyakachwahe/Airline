package Airline.java.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

@WebServlet("/Alter_flight")
public class Alter_flight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		
		String f_id = session.getAttribute("change_id").toString();
		String f_no = request.getParameter("f_no");
		String f_name = request.getParameter("f_name");
		String s = request.getParameter("s");
		String d = request.getParameter("d");
		String date = request.getParameter("date");
		String at = request.getParameter("ad");
		String dt = request.getParameter("dd");
		String p = request.getParameter("p");
		
		String url ="jdbc:mysql://localhost:3306/airline";
		String sql = "update  airline.flight  set f_no=?, f_name=? ,source=? ,dest=? ,date=? , a_time=?,d_time=? ,ticket_price=? where f_id=?;";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url , "root" , "systemserver");
			
			PreparedStatement st2 =con.prepareStatement(sql);
			st2.setString(1, f_no);
			st2.setString(2, f_name);
			st2.setString(3, s);
			st2.setString(4, d);
			st2.setString(5, date);
			st2.setString(6, at);
			st2.setString(7, dt);
			st2.setString(8, p);
			st2.setString(9, f_id);
			int s1 =  st2.executeUpdate();
			System.out.println(s1 +" row updated in flight table!");
			response.sendRedirect("edit_flight.jsp");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
			
			
	}

}
