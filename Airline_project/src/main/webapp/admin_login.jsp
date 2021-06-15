<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<%@ include file="link" %>
</head>
<body style="background-color:aliceblue; ">
		<%@ include file="header.jsp" %>
		
	
	    <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;" >
        <div class="jumbotron ">
            <div class="card" >
                <div class="card-body"  >   
                    <form action="Admin">
                    		<h3>Admin Login</h3>
                    		<br>
                          
                          <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">User-Name:</span>
                            <input type="text" name="admin-id" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" >
                          </div>


                        <div class="mb-3">
                          <label for="exampleInputPassword1" class="form-label">Password</label>
                          <input type="password" class="form-control" name="admin-password">
                        </div>


                        <button type="submit" class="btn btn-primary">Submit</button>
                      </form>                </div>
              </div>
        </div>
 </div>
<%@ include file="footer.jsp" %>


<%@ include file="link" %>

</body>
</html>