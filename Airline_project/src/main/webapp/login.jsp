<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<%@ include file="link" %>
</head>
<body style="background-color:aliceblue; ">
    <!-- login starting -->
    <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">

        <div class="jumbotron ">
            <div class="card">

                <div class="card-body">
                    <div class="logo" style="text-align-last: center; margin-bottom: 1.5rem;">
                        <img src="images/like.png" alt="" class="img-thumbnail" style="width:6rem; border-radius: 50%;">
                    </div>
                    <h3 style="  margin: auto auto 2rem auto;text-align-last: center"><strong>LOGIN PAGE</strong> </H3>

                    <form action="Login">
                        <div class="form-group row" style="margin-bottom: 1.5rem;">
                            <label for="inputEmail3" class="col-sm-2 col-form-label">UserName</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputEmail3" name="uname"
                                    placeholder="UserName">
                            </div>
                        </div>
                        <div class="form-group row" style="margin-bottom: 1rem;">
                            <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" name="pass" id="inputPassword3"
                                    placeholder="Password">
                            </div>
                        </div>



                        <div class="form-group row">
                            <div class="col-sm-10" style="text-align-last: center; margin-top: 1.5rem; width:100%;">
                                <button type="submit" class="btn btn-secondary">Sign in</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>

            <div class="card" style="margin-top:1rem;">
                <div class="card-body">
                    <h3 style="  text-align-last: center"><strong>Create Account</strong> </H3>

                    <form action="create.jsp">
                        <div class="form-group row">
                            <div class="col-sm-10" style="text-align-last: center; margin-top: 1.5rem; width:100%;">
                                <button type="submit" class="btn btn-success">Join Us Now </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>

<%
	session.setAttribute("active", false);
    session.setAttribute("yn", "Not");

    
%>
    



    <!-- login ending -->
    <%@ include file="script" %>
    
</body>
</html>