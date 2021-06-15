package Airline.java.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import Airline.java.jdbc.deleterow;

@WebServlet("/Confirming")
public class Confirming extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			HttpSession session = request.getSession();
		
			int count =0;
			String stat =   request.getParameter("str");
			System.out.println(stat);
			String sql = "SELECT * FROM airline.confirmation;";
			String url ="jdbc:mysql://localhost:3306/database_1";
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection(url , "root" ,"systemserver");
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(sql);
				while(rs.next())
					count++;
				String sql2 = "update  airline.confirmation set status ='Confirmed' where c_id = "+ count +";";
				int c = st.executeUpdate(sql2);
				System.out.println(c + "row updated to confirmed");
				
				
				deleterow obj =new deleterow();
				if(obj.delete(stat, "airline.ticket_booked")) {
					session.setAttribute("yn", "");
					response.sendRedirect("reservation.jsp");
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}

}
