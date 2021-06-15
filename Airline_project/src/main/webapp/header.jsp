<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HEADER</title>
<%@ include file="link" %>
</head>
<body style="background-color:aliceblue; ">


    <!-- navbar -->

    <div class="card" >

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
                                <a class="nav-link " aria-current="page" href="index.jsp"><strong>Home</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="flight.jsp"><strong>Flight</strong> </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="status.jsp"><strong>Status</strong> </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="admin_login.jsp"><strong>Admin Login</strong> </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    <strong>Dropdown</strong>
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="index.jsp">Home</a></li>
                                    <li><a class="dropdown-item" href="flight.jsp">Flight </a></li>
                                    <li><a class="dropdown-item" href="status.jsp">Status </a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="admin_login.jsp">Admin Login </a></li>
                                    <li><a class="dropdown-item" href="login.jsp">Logout </a></li>
                                </ul>
                            </li>
                        </ul>
                       
                    </div>

                </div>

            </nav>
        </div>
    </div>
    <!-- navbar ends-->
    <%@ include file="script" %>
    </body>
    
</html>