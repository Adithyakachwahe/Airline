<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight List</title>
<%@ include file="link" %>
</head>
<body style="background-color:aliceblue; ">
	
	<%@ include file="header.jsp" %>
	
	
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
                        <th scope="col">Book</th>
                    </tr>
                </thead>
                <tbody>
                
  
             
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/airline" user="root" password="systemserver"/>
	<sql:query var="rs" dataSource="${db}">SELECT * FROM airline.flight;</sql:query> 
	
	<c:forEach var="ele" items="${rs.rows}">

		
					<tr>
                        <th scope="row"><c:out value="${ele.f_no}"/></th>
                        <td><c:out value="${ele.f_name}"/></td>
                        <td><c:out value="${ele.source}"/></td>
                        <td><c:out value="${ele.dest}"/></td>
                        <td><c:out value="${ele.date}"/></td>
                        <td><c:out value="${ele.a_time}"/></td>
                        <td><c:out value="${ele.d_time}"/></td>
                        <td><c:out value="${ele.ticket_price}"/></td>
                        
                        	<c:set var="str" value="${ele.f_id}"/>
                        
                        <th scope="row"><div class="btn-group" role="group" aria-label="Basic example">
                        <form action="book_ticket.jsp"><button type="submit" class="btn btn-primary" value="${ele.f_id}" name="str">Book</button></form>
                          </div></th>                    
                    </tr>	
		
	</c:forEach>
                
                    
                   
                </tbody>
            </table>

        </div>
        </div>
    </div>

	<%@ include file="footer.jsp" %>
		
	
	<%@ include file="script" %>
	
</body>
</html>