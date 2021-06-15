<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AirLine Ticket Booking</title>
<%@ include file="link" %>
	
	<style>
		/* CSS RESAT */
	*{
	    margin: 0%;
	    padding: 0%;
	    style="font-family:monospace"
	}
	</style>
</head>
<body style="background-color:aliceblue; ">
<%@ include file="header.jsp" %>
    
        <!-- body starting -->
    <div class="container-sm" style="width:auto;margin: 1rem auto;">

        <div class="jumbotron">

            <div class=" card" style="align-items: center;">
                <h2 style="font-family:monospace;color:gray;">WELCOME TO AIRLINE RESERVATION <%String name =  session.getAttribute("user").toString();
                out.print(name.toUpperCase());
                %>
                </h2>
        
            </div>
        </div>

    </div>
    <div class="container-sm" style="width:auto;"     >

        <div class=" jumbotron"  >

            <div class=" card">
        <div class="cont" style="display:flex; gap:1rem; justify-content:center; margin: 3rem;">
            <div class="card" style="width: 18rem; background: aliceblue;">
                <div class="conta" style="align-self: center;">
                    <img class="card-img-top" src="images/about.jpg"
                        style="border:2px solid;width:7rem;margin-top: 1rem;border-radius: 50%;" alt="  ">
                </div>
                <div class="card-body">
                    <h5 class="card-title" style="text-align:center;">About</h5>
                    <p class="card-text">Some quick example text to Lorem ipsum, dolor sit amet consectetur
                        adipisicing elit. Provident repellat labore, debitis minus harum facilis at tempora
                        numquam mollitia quisquam hic molestias velit?build on the card title and make up the
                        bulk
                        of
                        the card's content.</p>
                    <div style="text-align-last: center;margin-top: 1rem;">
                        <a href="index.jsp" class="btn btn-primary">Home Page</a>
                    </div>
                </div>
            </div>

            <div class="card" style="width: 18rem;background: aliceblue;">
                <div class="conta" style="align-self: center;">
                    <img class="card-img-top" src="images/flight.jpg"
                        style="border:2px solid;width:7rem;margin-top: 1rem;border-radius: 50%;" alt="  ">
                </div>
                <div class="card-body">
                    <h5 class="card-title" style="text-align:center;">Flight</h5>
                    <p class="card-text">Some quick example te Lorem ipsum dolor sit amet consectetur
                        adipisicing elit. Ut aliquid vitae nulla eos libero in inventore, iste voluptas
                        reprehenderit beatae maiores deleniti esse!xt to build on the card title and make up the
                        bulk
                        of
                        the card's content.</p>
                    <div style="text-align-last: center; margin-top:1rem;">
                        <a href="flight.jsp" class="btn btn-primary ">Go to Flights</a>
                    </div>
                </div>
            </div>

            <div class="card" style="width: 18rem;background: aliceblue;">
                <div class="conta" style="align-self: center;">
                    <img class="card-img-top" src="images/status.jpg"
                        style="border:2px solid;width:7rem;margin-top: 1rem;border-radius: 50%;" alt="  ">
                </div>
                <div class="card-body">
                    <h5 class="card-title" style="text-align:center;">Status</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk
                        of Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem nulla,
                        dignissimos laboriosam ullam omnis ducimus ipsam atque, non voluptatum maiores,
                        assumenda veritatis eveniet.
                        the card's content.</p>
                    <div style="text-align-last: center; margin-top:1rem;">
                        <a href="status.jsp" class="btn btn-primary">Go to Status</a>
                    </div>
                </div>
            </div>

            <div class="card" style="width: 18rem;background: aliceblue;">
                <div class="conta" style="align-self: center;">
                    <img class="card-img-top" src="images/admin1.jpg"
                        style="border:2px solid;width:7rem;margin-top: 1rem;border-radius: 50%;" alt="  ">
                </div>
                <div class="card-body">
                    <h5 class="card-title" style="text-align:center;">Admin Login </h5>
                    <p class="card-text">Some quick example Lorem ipsum dolor sit amet consectetur adipisicing
                        elit. Omnis similique deleniti ex quasi vero molestiae ipsa asperiores veniam! Aliquam
                        tempora ab nobis odio!text to build on the card title and make up the bulk
                        of
                        the card's content.</p>
                    <div style="text-align-last: center;margin-top: 1rem;">
                        <a href="admin.jsp" class="btn btn-primary">Go to Admin</a>
                    </div>
                </div>
            </div>
        </div>





    </div>
    </div>

    </div>
   
    <!-- body ending -->
        
  



<%@ include file="footer.jsp" %>

        
  <%@ include file="script" %>

</body>
</html>