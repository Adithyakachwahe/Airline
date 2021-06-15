package Airline.java.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Airline.java.controller.*;


@WebServlet("/Admin")
public class Admin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String admin_id =  request.getParameter("admin-id");
		String admin_password =request.getParameter("admin-password");
		
		String sql = "select admin_id from airline.admin where username=? and password=?";
		Airline.java.jdbc.check obj = new Airline.java.jdbc.check();
		try {
			if(obj.isid(sql, admin_id, admin_password))
			{
				HttpSession session = request.getSession();
				request.setAttribute("user", admin_id);
				response.sendRedirect("admin.jsp");
			}
			else {
				response.sendRedirect("admin_login.jsp");
			}
		} catch (Exception  e) {
			e.printStackTrace();
		}
		
	}

}
