<%@page import="Airline.java.jdbc.details"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successfully Booked</title>
<%@ include file="link" %>
</head>
<body>
<%@ include file="header.jsp" %>

<%
	String s = session.getAttribute("f_id").toString() ;
	int id1 = Integer.parseInt(s);
	//out.print(id1 + " printed");
	
	String s1 = session.getAttribute("b_id").toString();
	int b_id1 = Integer.parseInt(s1);
	//out.print("Id "+b_id1 + " printed");
%>
	
	<!-- Final Ticket start -->
       <div class="container" style="width:1300px;     margin: 3rem auto 6rem auto;">
           <div class="jumbotron ">
                   <table class="table table-bordered   " >
                       <thead>
                           <tr class="table-active">
                               <th colspan="4" >Confirm Details</th>
                           </tr>
                       </thead>
                       <tbody>
                           <tr class="table-light">
                               <td colspan="2"><strong>Flight No: </strong> <span style="margin-left: 15px;">
                               
								<%
									details obj = new details();
                                     String sq ="select f_no from airline.flight where f_id = " + id1 +" ;";  
                                  String data = obj.display_details_one(sq);
                                  out.print(data);
								%>
                                  
                                  
    
                                  
                               </span> </td>
                               <td colspan="2"><strong>Flight Name: </strong> <span style="margin-left: 15px;">
                               
                               <%
                               		details obj1 = new details();
                                     String sq1 ="select f_name from airline.flight where f_id = " + id1 +" ;";  
                                  String data1 = obj1.display_details_one(sq1);
                                  out.print(data1);
                               %>

                                  
                                  
    
                                  
                               </span> </td>
                           </tr>
                           
                           
                           <tr class="table-light">
                               <td colspan="2"><strong>Traval Id: </strong> <span style="margin-left: 15px;">
                               
									<%
									 out.print(id1+""+b_id1); 
									%>
                                     
                                  
    
                                      
                               </span> </td>
                               <td colspan="2"><strong>Traval Date: </strong> <span style="margin-left: 15px;">
                              <%  
	                              details obj1a = new details();
	                                     String sq1a ="select date from airline.flight where f_id = " + id1 +" ;";  
	                                  String data1a = obj1a.display_details_one(sq1a);
	                                  out.print(data1a);
                              %>

                                  
                                  
    
                                  
                               </span> </td>
    
                               
                           </tr>
                           <tr class="table-light">
                               <td colspan="2"><strong>Arival Time and Departure Time: </strong> <span style="margin-left: 15px;">
                               
                               <%  
	                              	details obj1aa = new details();
	                                     String sq1aa ="select a_time from airline.flight where f_id = " + id1 +" ;";  
	                                  String data1aa = obj1aa.display_details_one(sq1aa);
	                                  out.print(data1aa);
	                                  out.print(" and ");
	                                  
                              %>

                                  <%  
                              		details obj1ab = new details();
                                     String sq1ab ="select d_time from airline.flight where f_id = " + id1 +" ;";  
                                  String data1ab = obj1ab.display_details_one(sq1ab);
                                  out.print(data1ab);
                              %>
    
                                  
                                      

                                  
                                  
    
                                  
                               </span> </td>
                               <td colspan="2"><strong>AirPort Name: </strong> <span style="margin-left: 15px;">
                               
								<%
									details obj1abc = new details();
                                     String sq1abc ="select source from airline.flight where f_id = " + id1 +" ;";  
                                  String data1abc = obj1abc.display_details_one(sq1abc);
                                  out.print(data1abc);
                                  out.print(" INTERNATIONAL AIRPORT");
								%>
                                  
                                  
    
                                  
                               </span> </td>
                           </tr>
                           <tr class="table-light">
                               <td colspan="2"><strong>Source to Destination: </strong> <span style="margin-left: 15px;">
                               
									<%  
	                              details obj2 = new details();
	                                     String sq2 ="select source from airline.flight where f_id = " + id1 +" ;";  
	                                  String data2 = obj2.display_details_one(sq2);
	                                  out.print(data2);
	                                  out.print(" to");
                              %>
                                  
                                  <%  
	                              details obj3 = new details();
	                                     String sq3 ="select dest from airline.flight where f_id = " + id1 +" ;";  
	                                  String data3 = obj3.display_details_one(sq3);
	                                  out.print(data3);
                              %>
    
                                  
                                      

                                  
                                  
    
                                  
                               </span> </td>
                               <td colspan="2"></td>
                           </tr>
                           <tr class="table-active">
                               <td colspan="4"><strong>Final Amount: </strong> <span style="margin-left: 15px;">
                               
								
									<%  
	                              details obj5 = new details();
	                                     String sq5 ="select ticket_price from airline.flight where f_id = " + id1 +" ;";  
	                                  String data5 = obj5.display_details_one(sq5);
	                                  out.print(data5);
	                                  out.print(" Rupees Only");
                              %>
                                  
                                  
    
                                  
                               </span> </td>
                           </tr>
                           <tr>
                           
                           </tr>
                           
                           <tr class="table-light">
                               <td colspan="2"><strong>Name: </strong> <span style="margin-left: 15px;">
                               
								<%  
	                              details objA = new details();
	                                     String sqA = "select f_name from airline.ticket_booked where booked_id = "+ b_id1 +";";  
	                                     String sqA1 = "select l_name from airline.ticket_booked where booked_id = "+ b_id1 +";";
	                                  String dataA = objA.display_details_one(sqA);
	                                  String dataA1 = objA.display_details_one(sqA1);
	                                  String res = dataA+" "+dataA1;
	                                  out.print(res.toUpperCase());
                              %>
                                  
                                  
    
                                  
                               </span> </td>
                               <td colspan="2"><strong>Contact No: </strong> <span style="margin-left: 15px;">
                               
									<%  
	                              details objB = new details();
	                                     String sqB = "select phno from airline.ticket_booked where booked_id = "+ b_id1 +";";  
	                                  String dataB = objB.display_details_one(sqB);
	                                  out.print(dataB);
                              %>
                                  
                                  
    
                                  
                               </span> </td>
                           </tr>
                           <tr class="table-light">
                               <td colspan="2"><strong>Email: </strong> <span style="margin-left: 15px;">
    
                                <%  
		                              details objC = new details();
		                                     String sqC = "select email from airline.ticket_booked where booked_id = "+ b_id1 +";";  
		                                  String dataC = objC.display_details_one(sqC);
		                                  out.print(dataC);
                              %>

                                  
                                  
    
                                  
    
  </span> </td>
                               <td colspan="2"><strong>Reservation Date: </strong> <span style="margin-left: 15px;">
                               
                               
                               <%  
	                              details obj4 = new details();
	                                     String sq4 ="select date from airline.ticket_booked where booked_id = " + b_id1 +" ;";  
	                                  String data4 = obj4.display_details_one(sq4);
	                                  out.print(data4);
                              %>

                                  
                                  
    
                                  
                               </span> </td>
    
                               
                           </tr>
                           <tr class="table-light">
                               <td colspan="2"><strong>No of Person: </strong> <span style="margin-left: 15px;">
                               
								<%  
	                              details objD = new details();
	                                     String sqD = "select no_person from airline.ticket_booked where booked_id = "+ b_id1 +";";  
	                                  String dataD = objD.display_details_one(sqD);
	                                  out.print(dataD);
                              %>
                                  
                                  
    
                                  
                               </span> </td>
                               <td colspan="2"></td>
                           </tr>
                           
                           <tr class="table-light">
                               <td colspan="2"><strong>Address: </strong> <span style="margin-left: 15px;">
                               
							<%  
	                              details objE = new details();
	                                     String sqE = "select address from airline.ticket_booked where booked_id = "+ b_id1 +";";  
	                                  String dataE = objE.display_details_one(sqE);
	                                  out.print(dataE);
                              %>
                                  
                                  
    
                                  
                               </span> </td>
                               <td colspan="2"></td>
                           </tr>
                           
                           <tr class="table-danger">
                               <td colspan="4"><strong>Ticket Status: </strong> <span style="margin-left: 15px;"><b>Ticket has been Successfully Booked</b></span> </td>
                           <% 
                           session.setAttribute("active", b_id1);
                           %>
                          
                          
                          
    
                          
                           </tr>
                       </tbody>
                   </table>
           </div>
       </div>
       <!-- Final Ticket end -->
       

<%
	 //session.removeAttribute("f_id");
	  //session.removeAttribute("b_id");
%>
 

<%@ include file="footer.jsp" %>
<%@ include file="script" %>

</body>
</html>