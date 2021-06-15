<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
<%@ include file="link" %>
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
    <!-- confirm header end --> 

    <div class="container">
        <div class="jumbotron ">
            <div class=" card" style="    margin: 2rem auto;">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Confirmation_id</th>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">Mobile</th>
                            <th scope="col">Email</th>
                            <th scope="col">Date</th>
                            <th scope="col">Person</th>
                            <th scope="col">Address</th>
                            <th scope="col">Confirm</th>
                            <th scope="col">Delete</th>
                       </tr>
                    </thead>
                    <tbody>

               	<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/airline" user="root" password="systemserver"/>
	<sql:query var="rs" dataSource="${db}">SELECT * FROM airline.confirmation </sql:query> 
	
	<c:forEach var="ele" items="${rs.rows}">

		
					<tr>
                        <th scope="row"><c:out value="${ele.c_id}"/></th>
                        <td><c:out value="${ele.f_name}"/></td>
                        <td><c:out value="${ele.l_name}"/></td>
                        <td><c:out value="${ele.phno}"/></td>
                        <td><c:out value="${ele.email}"/></td>
                        <td><c:out value="${ele.date}"/></td>
                        <td><c:out value="${ele.no_person}"/></td>
                        <td><c:out value="${ele.address}"/></td>
                        
                        	
                        
                        <th scope="row"><div class="btn-group" role="group" aria-label="Basic example">
                        <form action="#"><input type="submit" class="btn btn-primary" value="${ele.status}" disabled="disabled" name="str"></input></form>
                          </div></th>    
                          <th scope="row"><div class="btn-group" role="group" aria-label="Basic example">
                        <form action="Delete1"><button type="submit" class="btn btn-danger" value="${ele.c_id}" name="str">Delete</button></form>
                          </div></th>                
                    </tr>	
		
	</c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- confirm ending -->
    <%@ include file="footer.jsp" %>
    
    <%@ include file="script" %>
    
</body>
</html>