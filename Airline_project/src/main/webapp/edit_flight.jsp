<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Flight</title>
<%@include file="link" %>
</head>
<body>
			        <!-- admin header start -->
        <!-- navbar -->

        <div class="card">

            <div class="card-body">
                <nav class="navbar navbar-expand-lg navbar-light " style="background: aliceblue;">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">AirLine Ticket Booking</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="position:absolute;right:50px;">
                                <li class="nav-item">
                                    <a class="nav-link " aria-current="page" href="admin.jsp"><strong>Home</strong></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="edit_flight.jsp"><strong>Edit-Flight</strong> </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="reservation.jsp"><strong>Reservations</strong> </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="confirm.jsp"><strong>Confirmed</strong> </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="admin_login.jsp"><strong>Logout</strong> </a>
                                </li>
                              
                            </ul>
                          
                        </div>

                    </div>

                </nav>
            </div>
        </div>

        <!-- admin header end -->
        
        
        <!-- filght starting -->
      
        <div class="container">
      
                <div class="jumbotron ">
    <div class=" card" style="    margin: 2rem auto;">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Flight No</th>
                              <th scope="col">Flight Name</th>
                              <th scope="col">From City</th>
                              <th scope="col">To City</th>
                              <th scope="col">Date</th>
                              <th scope="col">Arrival Time</th>
                              <th scope="col">Departure Time</th>    
                              <th scope="col">Ticket Price</th>     
                              <th scope="col">Edit</th>     
                              <th scope="col">Delete</th>    
                        </tr>    
                    </thead>      
                      <tbody>    
                   
                        <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/airline" user="root" password="systemserver"/>
	<sql:query var="rs" dataSource="${db}">SELECT * FROM airline.flight; </sql:query> 
	
	<c:forEach var="ele" items="${rs.rows}">

		
					<tr>
                        <th scope="row"><c:out value="${ele.f_id}"/></th>
                        <td><c:out value="${ele.f_name}"/></td>
                        <td><c:out value="${ele.source}"/></td>
                        <td><c:out value="${ele.dest}"/></td>
                        <td><c:out value="${ele.date}"/></td>
                        <td><c:out value="${ele.a_time}"/></td>
                        <td><c:out value="${ele.d_time}"/></td>
                        <td><c:out value="${ele.ticket_price}"/></td>
                        
                        	
                        
                        <th scope="row"><div class="btn-group" role="group" aria-label="Basic example">
                        <form action="change.jsp"><button type="submit" class="btn btn-warning" value="${ele.f_id}"  name="change_id">Edit</button></form>
                          </div></th>    
                          <th scope="row"><div class="btn-group" role="group" aria-label="Basic example">
                        <form action="Delete3"><button type="submit" class="btn btn-danger"  value="${ele.f_id}" name="str">Delete</button></form>
                          </div></th>                
                    </tr>	
		
	</c:forEach>
      
                        
      
                    </tbody>    
                </table>     
            </div>    
            </div>     
        </div>
          <div class="container">
            <div class="jumbotron ">
        <div class=" card" style="    margin: 2rem auto; padding:1rem;">
    <form action="add_flight.jsp" style="align-self:center;">
        <button type="submit" class="btn btn-info">Add Flight</button>      
      </form>
      
      </div>      
      </div>
      </div>
                <!-- filght ending -->
        
        <%@ include file="footer.jsp" %>
                <%@ include file="script" %>
</body>
</html>