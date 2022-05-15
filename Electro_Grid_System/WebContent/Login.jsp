<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="Views/Login.css">
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
                        <h3>LogIn</h3>
                        
                        <form class="requires-validation" novalidate>

                            
                            <div class="col-md-12">
                            <label class="form-check-label">Email</label>
                               <input class="form-control" type="text" name="Email" placeholder="Enter youre Email" required>
                         </div>
                            <div class="col-md-12">
                            <label class="form-check-label">Password</label>
                               <input class="form-control" type="text" name="password" placeholder="Enter youre Password" required>
                               
                            </div>
 <br/>
                        <div class="form-check">
           <label class="form-check-label">You havent Account? <a href="/Electro_Grid_System/user.jsp" class="active">Register Here</a></label>
                        </div>
                        <br/>
                            <div class="form-button mt-8">
                                <button id="submit" type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>