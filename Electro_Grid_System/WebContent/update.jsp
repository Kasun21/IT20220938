<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="Views/update.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/main.js"></script>
<meta charset="ISO-8859-1">
<title>Electro Grid System</title>
</head>
<body>
<div class="topnav" id="myTopnav">
   <a href="/Electro_Grid_System/Login.jsp">Logout</a>
  <a href="/Electro_Grid_System/All.jsp">Profile</a>
  <a href="#about">About</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
<h1><p align="center">Update Customer Details</p></h1>

<div class="inner">
				<form action="">
					
					<div class="form-group">
						<div class="form-wrapper">
							<label for="">First Name</label>
							<input type="text" class="form-control">
						</div>
						<div class="form-wrapper">
							<label for="">Last Name</label>
							<input type="text" class="form-control">
						</div>
					</div>
					<div class="form-wrapper">
						<label for="">Email</label>
						<input type="text" class="form-control">
					</div>
					<div class="form-wrapper">
						<label for="">Password</label>
						<input type="password" class="form-control">
					</div>
					<div class="form-wrapper">
						<label for="">Confirm Password</label>
						<input type="password" class="form-control">
					</div>
					<div class="checkbox">
						<label>
							<input type="checkbox"> I caccept the Terms of Use & Privacy Policy.
							<span class="checkmark"></span>
						</label>
					</div>
					<button>Register Now</button>
				</form>
			</div>


<br/><br/><br/><br/>
<p align="center">@All right received 2022.ElectroGrid</p>


</body>
</html>