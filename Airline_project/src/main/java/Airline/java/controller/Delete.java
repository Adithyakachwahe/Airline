package Airline.java.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Airline.java.*;

@WebServlet("/Delete")
public class Delete extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String id = request.getParameter("delete_id");
 		session.setAttribute("d_id", id);	
 		System.out.println(session.getAttribute("d_id"));
 		
 		Airline.java.jdbc.deleterow  obj = new Airline.java.jdbc.deleterow();
 		if(obj.delete(id, "airline.flight"))
 		{
 			response.sendRedirect("edit_flight.jsp");
 		}
	}

}
