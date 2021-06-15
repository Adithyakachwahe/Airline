<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Ticket</title>
    <%@ include file="link" %>
	<style >
		
	
	</style>
</head>
<body style="background-color:aliceblue; ">
<%@ include file="header.jsp" %>
    
    <%
    	String id = request.getParameter("str");
		session.setAttribute("f_id", id);
		session.setAttribute("yn", "Not");
    %>
    
    
 	
 	<!-- Ticket booking -->
    <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">
        <div class="jumbotron ">
            <div class="card">
                <div class="card-body">
                    <form action="Book">
                        <h3>Ticket Booking</h3>
                        <br>
						
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">First-Name:*</span>
                            <input type="text" name="f_name" class="form-control" placeholder="FirstName"
                                aria-label="Username" aria-describedby="basic-addon1">
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Last-Name:*</span>
                            <input type="text" name="l_name" class="form-control" placeholder="LastName"
                                aria-label="Username" aria-describedby="basic-addon1">
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Mobile No:*</span>
                            <input type="text" name="phno" class="form-control" placeholder="Mobile number"
                                aria-label="Username" aria-describedby="basic-addon1">
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Email:*</span>
                            <input type="email" name="email" class="form-control" placeholder="Email@gmail.com"
                                aria-label="Username" aria-describedby="basic-addon1">
                        </div>
<!--  
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Date:*</span>
                            <input type="date" name="date" class="form-control" placeholder="Date"
                                aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        -->
						
						
						<div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Date:*</span>
                                <input type="date" data-date="" data-date-format="DD MMMM YYYY" value="2015-08-09" name="date"class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        
                        
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">No of Person:*</span>
                            <input type="number" value=1 name="num" class="form-control" placeholder="Person"
                                aria-label="Username" aria-describedby="basic-addon1">
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Address:*</span>
                            <textarea type="textarea"  rows="4" cols="50" name="add" class="form-control"
                                placeholder="Address" aria-label="Username" aria-describedby="basic-addon1"></textarea>
                        </div>



                        <button type="submit" class="btn btn-primary">Proceed To Payment</button>
                        <button type="submit" class="btn btn-primary " value="back">Back</button>
                        
                        
                   </form>

                    	
                    	
                </div>
            </div>
        </div>
    </div>
<!-- Ticket booking ends -->
 	
 	
 	
 	
 	
<%@ include file="footer.jsp" %>
    <%@ include file="script" %>

<script>
$("input").on("change", function() {
    this.setAttribute(
        "data-date",
        moment(this.value, "YYYY-MM-DD")
        .format( this.getAttribute("data-date-format") )
    )
}).trigger("change")
</script>
</body>
</html>