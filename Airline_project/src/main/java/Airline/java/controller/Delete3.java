package Airline.java.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Airline.java.jdbc.deleterow;

/**
 * Servlet implementation class Delete1
 */
@WebServlet("/Delete3")
public class Delete3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("str");
		System.out.println(id);
		deleterow obj =new deleterow();
		if(obj.delete(id, "airline.flight")) {
			response.sendRedirect("edit_flight.jsp");
		}
		
	}

}
