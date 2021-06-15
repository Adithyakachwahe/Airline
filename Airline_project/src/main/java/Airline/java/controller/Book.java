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
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;



@WebServlet("/Book")
public class Book extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String f_name = request.getParameter("f_name");
		String l_name = request.getParameter("l_name");
		String phno = request.getParameter("phno");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String num = request.getParameter("num");
		String add = request.getParameter("add");
		
		String url ="jdbc:mysql://localhost:3306/airline";
		
		String sql = "insert into airline.ticket_booked values(?,?,?,?,?,?,?,?,?);";
		String sqla = "insert into airline.confirmation values(?,?,?,?,?,?,?,?,?);";
		
		String sql2 ="SELECT * FROM airline.ticket_booked";
		String sqla2 = "SELECT * FROM airline.confirmation;";
		
		int count1 = 1;
		int count2 = 1;
		HttpSession session = request.getSession();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url , "root" , "systemserver");
			
			Statement st = con.createStatement();
			ResultSet tbrs = st.executeQuery(sql2);
			while(tbrs.next())
				count1++;
			
			
			Statement sta = con.createStatement();
			ResultSet ctrs = sta.executeQuery(sqla2);
			while(ctrs.next())
				count2++;
			
			PreparedStatement st2 =con.prepareStatement(sql);
			st2.setInt(1, count1);
			st2.setString(2, f_name);
			st2.setString(3, l_name);
			st2.setString(4, phno);
			st2.setString(5, email);
			st2.setString(6, date);
			st2.setString(7, num);
			st2.setString(8, add);
			st2.setString(9, "Not Confirmed");
			int s =  st2.executeUpdate();
			System.out.println(s +" row updated in booking table!");
			session.setAttribute("b_id",count1 );
			
			PreparedStatement st2a =con.prepareStatement(sqla);
			st2a.setInt(1, count2);
			st2a.setString(2, f_name);
			st2a.setString(3, l_name);
			st2a.setString(4, phno);
			st2a.setString(5, email);
			st2a.setString(6, date);
			st2a.setString(7, num);
			st2a.setString(8, add);
			st2a.setString(9, "Not Confirmed");
			int ss =  st2a.executeUpdate();
			System.out.println(ss +" row updated in confirmation table!");
			session.setAttribute("c_id",count2 );
			 
			response.sendRedirect("payment.jsp");
			st2.close();
			st.close();
			con.close();
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
	}

}
