package Airline.java.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Airline.java.*;

@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname =  request.getParameter("uname");
		String pass =request.getParameter("pass");
		
		String sql = "select id from airline.loged where username=? and password=?";
		Airline.java.jdbc.check obj = new Airline.java.jdbc.check();
		try {
			if(obj.isid(sql, uname, pass))
			{
				HttpSession session = request.getSession();
				session.setAttribute("user", uname);
				response.sendRedirect("index.jsp");
			}
			else {
				response.sendRedirect("login.jsp");
			}
		} catch (Exception  e) {
			e.printStackTrace();
		}

		
	}

}
