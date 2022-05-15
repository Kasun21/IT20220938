<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="Views/user.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/main.js"></script>
<meta charset="ISO-8859-1">
<title>Electro Grid System</title>
</head>
<body>
<div class="topnav" id="myTopnav">
  <a href="/Electro_Grid_System/user.jsp" class="active">Registraion</a>
  <a href="/Electro_Grid_System/Login.jsp">Login</a>
  <a href="/Electro_Grid_System/All.jsp">Profile</a>
  <a href="#about">About</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

 <div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Registration</h3>
                        
                        <form class="requires-validation" novalidate>

                           <div class="col-md-12">
                            <label class="form-check-label">First Name</label>
                               <input class="form-control" type="text" name="FirstName" placeholder="Frist Name" required>
                               
                            </div>

                            <div class="col-md-12">
                            <label class="form-check-label">Last Name</label>
                               <input class="form-control" type="text" name="LastName" placeholder="Last Name" required>
                               
                            </div>
                         
                           <div class="col-md-12">
                            <label class="form-check-label">Mobile</label>
                               <input class="form-control" type="text" name="Mobile" placeholder="Mobile" required>
                               
                            </div>
                            
                            <div class="col-md-12">
                            <label class="form-check-label">Email</label>
                               <input class="form-control" type="text" name="Email" placeholder="Email" required>
                           
                            <div class="col-md-12">
                            <label class="form-check-label">NIC</label>
                               <input class="form-control" type="text" name="NIC" placeholder="NIC" required>
                               
                            </div>
                            <div class="col-md-12">
                            <label class="form-check-label">Address</label>
                               <input class="form-control" type="text" name="Address" placeholder="Address" required>
                               
                            </div>
                            <div class="col-md-12">
                            <label class="form-check-label">Account Number</label>
                               <input class="form-control" type="text" name="AccountNumber" placeholder="Account Number" required>
                               
                            </div>
                          
                            <div class="col-md-12">
                            <label class="form-check-label">Password</label>
                               <input class="form-control" type="text" name="password" placeholder="Passs" required>
                               
                            </div>

                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                             <label class="form-check-label">I confirm that all data are correct</label>
                        </div>
                        
                            <div class="form-button mt-3">
                                <button id="submit" type="submit" class="btn btn-primary">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>