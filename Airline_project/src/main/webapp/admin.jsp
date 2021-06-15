<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN</title>
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

        <!-- body starting -->
        <div class="container-sm" style="width:auto;margin: 1rem auto;">

            <div class="jumbotron">

                <div class=" card" style="align-items: center;">
                    <h2 style="font-family:monospace;color:gray;">WELCOME ADMIN
                        
						<% 
                        //String uname = session.getAttribute("user").toString().toUpperCase();
                        //out.print(" "+uname);
						%>
                    </h2>

                </div>
            </div>

        </div>
        <div class="container-sm" style="width:auto;">

            <div class=" jumbotron">

                <div class=" card">
                    <div class="cont" style="display:flex; gap:1rem; justify-content:center; margin: 3rem;">
                        <div class="card" style="width: 18rem; background: aliceblue;">
                            <div class="conta" style="align-self: center;">
                                <img class="card-img-top" src="images/about.jpg"
                                    style="border:2px solid;width:7rem;margin-top: 1rem;border-radius: 50%;" alt="  ">
                            </div>
                            <div class="card-body">
                                <h5 class="card-title" style="text-align:center;">Admin Page</h5>
                                <p class="card-text">Some quick example text to Lorem ipsum, dolor sit amet consectetur
                                    adipisicing elit. Provident repellat labore, debitis minus harum facilis at tempora
                                    numquam mollitia quisquam hic molestias velit?build on the card title and make up
                                    the
                                    bulk
                                    of
                                    the card's content.</p>
                                <div style="text-align-last: center;margin-top: 1rem;">
                                    <a href="admin.jsp" class="btn btn-primary">Admin Page</a>
                                </div>
                            </div>
                        </div>

                        <div class="card" style="width: 18rem;background: aliceblue;">
                            <div class="conta" style="align-self: center;">
                                <img class="card-img-top" src="images/flight.jpg"
                                    style="border:2px solid;width:7rem;margin-top: 1rem;border-radius: 50%;" alt="  ">
                            </div>
                            <div class="card-body">
                                <h5 class="card-title" style="text-align:center;">Edit Flight</h5>
                                <p class="card-text">Some quick example te Lorem ipsum dolor sit amet consectetur
                                    adipisicing elit. Ut aliquid vitae nulla eos libero in inventore, iste voluptas
                                    reprehenderit beatae maiores deleniti esse!xt to build on the card title and make up
                                    the
                                    bulk
                                    of
                                    the card's content.</p>
                                <div style="text-align-last: center; margin-top:1rem;">
                                    <a href="edit_flight.jsp" class="btn btn-primary ">Go to Edit-Flights</a>
                                </div>
                            </div>
                        </div>

                        <div class="card" style="width: 18rem;background: aliceblue;">
                            <div class="conta" style="align-self: center;">
                                <img class="card-img-top" src="images/status.jpg"
                                    style="border:2px solid;width:7rem;margin-top: 1rem;border-radius: 50%;" alt="  ">
                            </div>
                            <div class="card-body">
                                <h5 class="card-title" style="text-align:center;">Reservations</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the
                                    bulk
                                    of Lorem ipsum dolor, sit amet consectetur adipisicing elit. Voluptatem nulla,
                                    dignissimos laboriosam ullam omnis ducimus ipsam atque, non voluptatum maiores,
                                    assumenda veritatis eveniet.
                                    the card's content.</p>
                                <div style="text-align-last: center; margin-top:1rem;">
                                    <a href="reservation.jsp" class="btn btn-primary">Go to Reservations</a>
                                </div>
                            </div>
                        </div>

                        <div class="card" style="width: 18rem;background: aliceblue;">
                            <div class="conta" style="align-self: center;">
                                <img class="card-img-top" src="images/admin1.jpg"
                                    style="border:2px solid;width:7rem;margin-top: 1rem;border-radius: 50%;" alt="  ">
                            </div>
                            <div class="card-body">
                                <h5 class="card-title" style="text-align:center;">Logout </h5>
                                <p class="card-text">Some quick example Lorem ipsum dolor sit amet consectetur
                                    adipisicing
                                    elit. Omnis similique deleniti ex quasi vero molestiae ipsa asperiores veniam!
                                    Aliquam
                                    tempora ab nobis odio!text to build on the card title and make up the bulk
                                    of
                                    the card's content.</p>
                                <div style="text-align-last: center;margin-top: 1rem;">
                                    <a href="admin_login.jsp" class="btn btn-primary">Go to Login</a>
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