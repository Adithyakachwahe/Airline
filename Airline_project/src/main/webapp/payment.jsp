<%@page import="Airline.java.jdbc.details"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Airline.java.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment</title>
<%@ include file="link" %>
</head>
<body >

<%
	String s = session.getAttribute("f_id").toString() ;
	int id1 = Integer.parseInt(s);
	//out.print(id1 + " printed");
	
	String s1 = session.getAttribute("b_id").toString();
	int b_id1 = Integer.parseInt(s1);
	//out.print("Id "+b_id1 + " printed");

%>

<%@ include file="header.jsp" %>

   <!-- Ticket booking -->

    <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">

        <div class="jumbotron ">
            <div class="card">
                <div class="card-body">
                    <form>
                        <h3>Your Details</h3>
                        <br>
                        <div class="form-group row">
                            <label for="staticEmail" class="col-sm-2 col-form-label">Name</label>
                            <div class="col-sm-10">
                                <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                    placeholder="Mobile number" value="					<%
                                                details objA=new details(); 
                            		String  sqA=" select f_name from airline.ticket_booked where booked_id=" + b_id1 +" ;"; 
                            		String sqA1="select l_name from airline.ticket_booked where booked_id = " + b_id1 +";";
                                    String dataA=objA.display_details_one(sqA); 
                                    String dataA1=objA.display_details_one(sqA1); String res=dataA+" "+dataA1;
                                          out.print(res.toUpperCase()); 
                                            %>
                                           ">

                            </div>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Mobile No</label>
                                <div class="col-sm-10">
                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="					<%
                                            details objB=new details(); 
                                            String sqB=" select phno from airline.ticket_booked where booked_id=" + b_id1 +" ;";
                                            String dataB=objB.display_details_one(sqB);
                                        out.print(dataB); %>
                                    " >

                                </div>
                            </div>
                            <div class=" form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="					<%
                                                    details objC=new details(); 
                                                    String sqC=" select email from airline.ticket_booked where booked_id=" + b_id1+" ;";
                                                    String dataC=objC.display_details_one(sqC);
                                        out.print(dataC); %>
                                    " >

                                </div>
                            </div>
                            <div class=" form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Flight No</label>
                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="					<%
                                                        details obj=new details(); 
                                                    String sq=" select f_no from airline.flight where f_id=" + id1 +";";
                                                    String data=obj.display_details_one(sq);
                                                    out.print(data); %>

                                    " >

                                </div>

                            </div>
                            <div class=" form-group row">

                                <label for="staticEmail" class="col-sm-2 col-form-label">Flight
                                    Name</label>

                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="					<%
                                                            details obj1=new details(); 
                                                        String sq1=" select f_name from airline.flight where f_id=" + id1 +" ;"; 
                                                        String data1=obj1.display_details_one(sq1);
                                        out.print(data1); %>

                                    " >

                                </div>

                            </div>

                            <div class=" form-group row">

                                <label for="staticEmail" class="col-sm-2 col-form-label">Source</label>

                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="					<%
                                                                details obj2=new details(); 
                                                            String sq2=" select source from airline.flight where f_id=" + id1 +" ;"; 
                                                            String data2=obj2.display_details_one(sq2);
                                        out.print(data2); %>

                                    " >

                                </div>

                            </div>
                            <div class=" form-group row">

                                <label for="staticEmail" class="col-sm-2 col-form-label">Destination</label>
                                <div class="col-sm-10">

                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="					<%
                                                                    details obj3=new details(); 
                                                                    String sq3=" select dest from airline.flight where f_id=" + id1 +" ;"; 
                                                                    String data3=obj3.display_details_one(sq3);
                                        out.print(data3); %>" >
                                </div>

                            </div>
                            <div class=" form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Date</label>
                                <div class="col-sm-10">
                                    <input type="text" name="admin-id" readonly class="form-control-plaintext"
                                        placeholder="Mobile number" value="					<%
                                                                details obj4=new details(); String
                                                                    sq4=" select date from airline.ticket_booked where booked_id=" + b_id1 +" ;"; 
                                                                    String data4=obj4.display_details_one(sq4);
                                        out.print(data4); %>
                                    ">

                                </div>

                            </div>
                            <div class=" form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">No of Person</label>
                                <div class="col-sm-10">
                                    <input type="text" name="admin-id" readonly class="form-control-plaintext" value="					<%
                                                details objD=new details(); 
                                                String sqD=" select no_person from airline.ticket_booked where booked_id="+ b_id1 +" ;"; 
                                                String dataD=objD.display_details_one(sqD);
                                        out.print(dataD); %>" >

                                </div>
                            </div>


                            <div class=" form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Final Amount</label>
                                <div class="col-sm-10">
                                    <input type="text" name="admin-id" readonly class="form-control-plaintext" value="					<%
                                                details obj5=new details(); 
                                                String sq5=" select ticket_price from airline.flight where f_id=" + id1 +" ;"; 
                                                String data5=obj5.display_details_one(sq5);
                                        out.print(data5); %>
                                    " >

                                </div>

                            </div>
                            <div class=" form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Address</label>
                                <div class="col-sm-10">
                                    <textarea  rows="4" cols="50" readonly name="admin-id"
                                        class="form-control" placeholder="Address" aria-label="Username"
                                        ria-describedby="basic-addon1"><%
                             details objE = new details();
                                    String sqE = "select address from airline.ticket_booked where booked_id = "+ b_id1 +";";  
                                      String dataE = objE.display_details_one(sqE);
                                      out.print(dataE);
                        %>
                                                                  
        </textarea>

                                </div>
                            </div>

                        </div>



                    </form>

                </div>




            </div>




        </div>

    </div>

    <!-- Ticket booking ends -->






    <!-- Payment -->

    <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">

        <div class="jumbotron ">

            <div class="card">

                <div class="card-body">

                    <form action="final_ticket.jsp" method="post">

                        <h3>Payment</h3>

                        <br>


                        <div class="input-group mb-3">

                            <span class="input-group-text" id="basic-addon1" required>Card No:*</span>

                            <input type="text" name="f_name" class="form-control" aria-label="Username"
                                aria-describedby="basic-addon1">

                        </div>


                        <div class="input-group mb-3">

                            <span class="input-group-text" id="basic-addon1">Card Holder Name:*</span>

                            <input type="text" name="l_name" class="form-control" aria-label="Username"
                                aria-describedby="basic-addon1">

                        </div>


                        <div class="input-group mb-3">

                            <span class="input-group-text" id="basic-addon1">Month and Year:*</span>

                            <input type="month" name="phno" class="form-control" aria-label="Username"
                                aria-describedby="basic-addon1">

                        </div>




                        <div class="input-group mb-3">

                            <span class="input-group-text" id="basic-addon1">Cvv No:*</span>

                            <input type="text" name="date" class="form-control" aria-describedby="basic-addon1">

                        </div>


                        <button type="submit" class="btn btn-primary">Payment and Book</button>



                    </form>




                </div>

            </div>

        </div>

    </div>

    <!-- Payment end  -->
<%@ include file="footer.jsp" %>
<%@ include file="script" %>

</body>
</html>