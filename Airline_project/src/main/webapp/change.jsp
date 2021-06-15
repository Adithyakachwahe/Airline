<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Flight Details</title>
<%@ include file="link" %>

</head>
<body>
<%@ include file="header.jsp" %>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/database_1" user="root" password="systemserver"/>
	<sql:query var="rs" dataSource="${db}">select * from airline.flight where f_id = <%
			String id = request.getParameter("change_id");
			session.setAttribute("change_id", id);
			out.print(id);
	%>;</sql:query> 
		
		<c:forEach var="ele" items="${rs.rows}">
		    <!-- Change-flight starting -->
     <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">
         <div class="jumbotron ">
             <div class="card">
                 <div class="card-body">
                     <form action="Alter_flight">
                         <h3>Change-Flight-Details</h3>
                         <br>
                        
                         <div class="input-group mb-3">
                             <span class="input-group-text" id="basic-addon1">Flight Number:*</span>
                             <input type="text" name="f_no" class="form-control" placeholder="Flight Number"
                                 value= "${ele.f_no}"
                                  aria-label="Username" aria-describedby="basic-addon1">
                             </div>
                        
                        
                        
                         <div class="input-group mb-3">
                             <span class="input-group-text" id="basic-addon1">Flight Name:*</span>
                             <select name="f_name" id="inputState" class="form-control">
                                 <option selected>${ele.f_name}</option>
                                 <option>IndiGo</option>
                                 <option>Air India</option>
                                 <option>GoAir</option>
                                 <option>AirAsia India</option>
                                 <option>Vistara</option>
                                 <option>Alliance Air</option>
                                 <option>TruJet</option>
                                 </select>
                             </div>
                        
                         <div class="input-group mb-3">
                             <span class="input-group-text" id="basic-addon1">Source:*</span>
                             <select name="s" id="inputState" class="form-control">
                                 <option selected> ${ele.f_name} </option>
                                 <option>Andhra Pradesh</option>
                                 <option>Arunachal Pradesh</option>
                                 <option>Assam(Dispur) </option>
                                 <option>Bihar(Patna)</option>
                                 <option>Chhattisgarh(Raipur)</option>
                                 <option>Goa(Panaji)</option>
                                 <option>Karnataka Bengaluru (formerly Bangalore)</option>
                                 <option>Madhya Pradesh(Bhopal)</option>
                                 <option>Maharashtra(Mumbai)</option>
                                 </select>
                             </div>
                        
                         <div class="input-group mb-3">
                             <span class="input-group-text" id="basic-addon1">Destination:*</span>
                             <select name="d" id="inputState" class="form-control">
                                 <option selected>${ele.dest}</option>
                                 <option>Andhra Pradesh</option>
                                 <option>Arunachal Pradesh</option>
                                 <option>Assam(Dispur) </option>
                                 <option>Bihar(Patna)</option>
                                 <option>Chhattisgarh(Raipur)</option>
                                 <option>Goa(Panaji)</option>
                                 <option>Karnataka Bengaluru (formerly Bangalore)</option>
                                 <option>Madhya Pradesh(Bhopal)</option>
                                 <option>Maharashtra(Mumbai)</option>
                                 </select>
                             </div>
                        
                        
                        
                         <div class="input-group mb-3">
                             <span class="input-group-text" id="basic-addon1">Date:*</span>
                             <input type="date" data-date="" data-date-format="DD MMMM YYYY" value="${ele.date}"
                                name="date" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                             </div>
                        
                        
                         <div class="input-group mb-3">
                             <span class="input-group-text" id="basic-addon1">Arival Time:*</span>
                             <input type="text" value="${ele.a_time}"  name="ad"
                                class="form-control"  placeholder="YYYY-MM-DD HH-MM-SS" aria-label="Username"
                                aria-describedby="basic-addon1">
                             </div>
                        
                         <div class="input-group mb-3">
                             <span class="input-group-text" id="basic-addon1">Departure Time:*</span>
                             <input type="text" value="${ele.d_time}" name="dd"
                                class="form-control"  placeholder="YYYY-MM-DD HH-MM-SS" aria-label="Username"
                                aria-describedby="basic-addon1">
                             </div>
                        
                         <div class="input-group mb-3">
                             <span class="input-group-text" id="basic-addon1">Price:*</span>
                             <input type="text" value="${ele.ticket_price}"  name="p"
                                class="form-control" aria-label="Username"  aria-describedby="basic-addon1">
                             </div>
                        
                        
                        
                         <button type="submit" class="btn btn-primary">Change</button>
                        
                        
                        
                         </form>
                    
                    
                    
                     </div>
                 </div>
             </div>
         </div>
    
    <!-- change-flight ending -->
		</c:forEach>
<%@ include file="footer.jsp" %>
<%@ include file="script" %>


</body>
</html>