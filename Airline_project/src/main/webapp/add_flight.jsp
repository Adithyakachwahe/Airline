<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Flight Details</title>
	<%@ include file="link" %>
</head>
<body>
<!-- add-flight starting -->
    <div class="container-sm" style="width:700px;     margin: 3rem auto 6rem auto;">
        <div class="jumbotron ">
            <div class="card">
                <div class="card-body">
                    <form action="Add">
                        <h3>Add-Flight-Details</h3>
                        <br>

                        " <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Flight Number:*</span>
                            <input type="text" name="f_no" class="form-control" placeholder="Flight Number"
                                value="12252" aria-label="Username" aria-describedby="basic-addon1">
                        </div>



                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Flight Name:*</span>
                            <select name="f_name" id="inputState" class="form-control">
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
                                <option>Andhra Pradesh</option>
                                <option>Arunachal Pradesh</option>
                                <option>Assam(Dispur) </option>
                                <option>Bihar(Patna)</option>
                                <option>Chhattisgarh(Raipur)</option>
                                <option>Goa(Panaji)</option>
                                <option selected>Karnataka Bengaluru (formerly Bangalore)</option>
                                <option>Madhya Pradesh(Bhopal)</option>
                                <option>Maharashtra(Mumbai)</option>
                            </select>
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Destination:*</span>
                            <select name="d" id="inputState" class="form-control">
                                <option>Andhra Pradesh</option>
                                <option>Arunachal Pradesh</option>


                                <option>Assam(Dispur) </option>
                                <option>Bihar(Patna)</option>
                                <option>Chhattisgarh(Raipur)</option>
                                <option>Goa(Panaji)</option>
                                <option>Karnataka Bengaluru (formerly Bangalore)</option>
                                <option>Madhya Pradesh(Bhopal)</option>
                                <option selected>Maharashtra(Mumbai)</option>
                            </select>
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Date:*</span>
                            <input type="text" data-date="" data-date-format="DD MMMM YYYY" value="2021-05-09"
                                name="date" class="form-control" aria-label="Username" aria-describedby="basic-addon1">
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Arival Time:*</span>
                            <input type="text" value="2021-07-22 02:00:00" name="ad" class="form-control"
                                placeholder="YYYY-MM-DD HH-MM-SS" aria-label="Username" aria-describedby="basic-addon1">
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Departure Time:*</span>
                            <input type="text" value="2021-07-22 03:00:00" name="dd" class="form-control"
                                placeholder="YYYY-MM-DD HH-MM-SS" aria-label="Username" aria-describedby="basic-addon1">
                        </div>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Price:*</span>
                            <input type="text" value="2000" name="p" class="form-control" aria-label="Username"
                                aria-describedby="basic-addon1">
                        </div>



                        <button type="submit" class="btn btn-primary">Add</button>



                    </form>



                </div>
            </div>
        </div>
    </div>
    <!-- add-flight ending -->
                            
		<%@ include file="footer.jsp" %>
		
		
<%@ include file="script" %>
	
</body>
</html>