<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="Views/all.css">
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
<h1><p align="center">Customer Details</p></h1>

<table id="customers">
  <tr>
    <th>ID</th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Mobile</th>
    <th>Email</th>
    <th>NIC</th>
    <th>Account Number</th>
    <th>Password</th>
    <th>Edit/Delete</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Kasun </td>
    <td>Randima</td>
    <td>0708545125</td>
    <td>Kasun12@gmail.com</td>
    <td>665845124v</td>
    <td>12002</td>
    <td>kass12345</td>
    <td>  <button type="button" class="btn btn-success"><a href="/Electro_Grid_System/update.jsp">Edit</a></button> <button type="button" class="btn btn-danger">Delete</button></td>
  </tr>
  <tr>
    <td>2</td>
    <td>Sanath </td>
    <td>Perera</td>
    <td>0714578542</td>
    <td>sanathper21@gmail.com</td>
    <td>678542162v</td>
    <td>12010</td>
    <td>san12345</td>
    <td>  <button type="button" class="btn btn-success"><a href="/Electro_Grid_System/update.jsp">Edit</a></button> <button type="button" class="btn btn-danger">Delete</button></td>
  </tr>
  <tr>
    <td>3</td>
    <td>Akin </td>
    <td>Karavita</td>
    <td>0714521458</td>
    <td>Karvita19@gmail.com</td>
    <td>685462159v</td>
    <td>12015</td>
    <td>karavita540</td>
    <td>  <button type="button" class="btn btn-success"><a href="/Electro_Grid_System/update.jsp">Edit</a></button> <button type="button" class="btn btn-danger">Delete</button></td>
  </tr>
  <tr>
    <td>4/td>
    <td>Mewantha </td>
    <td>gunathilaka</td>
    <td>0778452135</td>
    <td>mewantharocks54@gmail.com</td>
    <td>64514563v</td>
    <td>12452</td>
    <td>mewa2345</td>
    <td>  <button type="button" class="btn btn-success"><a href="/Electro_Grid_System/update.jsp">Edit</a></button> <button type="button" class="btn btn-danger">Delete</button></td>
  </tr>
  <tr>
    <td>5</td>
    <td>Chamod </td>
    <td>Lakshitha</td>
    <td>0715421521</td>
    <td>chmao1245@gmail.com</td>
    <td>6752145263v</td>
    <td>12118</td>
    <td>kavinda2345</td>
    <td>  <button type="button" class="btn btn-success"><a href="/Electro_Grid_System/update.jsp">Edit</a></button> <button type="button" class="btn btn-danger">Delete</button></td>
  </tr>
  <tr>
    <td>6</td>
    <td>Anuradha</td>
    <td>Liyanage</td>
    <td>0742554821</td>
    <td>anuradha42@gmail.com</td>
    <td>678546215v</td>
    <td>12114</td>
    <td>mewantha12345</td>
    <td>  <button type="button" class="btn btn-success"><a href="/Electro_Grid_System/update.jsp">Edit</a></button> <button type="button" class="btn btn-danger">Delete</button></td>
  </tr>
  <tr>
    <td>7</td>
    <td>Saumaya</td>
    <td>Perera</td>
    <td>0715445125</td>
    <td>samuweera23@gmail.com</td>
    <td>675462158v</td>
    <td>12112</td>
    <td>samu221</td>
    <td>  <button type="button" class="btn btn-success"><a href="/Electro_Grid_System/update.jsp">Edit</a></button> <button type="button" class="btn btn-danger">Delete</button></td>
  </tr>
  <tr>
    <td>8</td>
    <td>Samitha</td>
    <td>mudunotuwa</td>
    <td>0758456514</td>
    <td>samithamudu43@gmail.com</td>
    <td>675214525v</td>
    <td>12452</td>
    <td>mudu12345</td>
    <td>  <button type="button" class="btn btn-success"><a href="/Electro_Grid_System/update.jsp">Edit</a></button> <button type="button" class="btn btn-danger">Delete</button></td>
  </tr>
  <tr>
    <td>9</td>
    <td>Nikela</td>
    <td>Premadasa</td>
    <td>0714521589</td>
    <td>Nikela45@gmail.com</td>
    <td>604518245v</td>
    <td>12112</td>
    <td>niki2345</td>
    <td>  <button type="button" class="btn btn-success"><a href="/Electro_Grid_System/update.jsp">Edit</a></button> <button type="button" class="btn btn-danger">Delete</button></td>
  </tr>
  <tr>
    <td>10</td>
    <td>Senura </td>
    <td>Perera</td>
    <td>0775421586</td>
    <td>Senura452@gmail.com</td>
    <td>254458751v</td>
    <td>12110</td>
    <td>kaseb45</td>
    <td>  <button type="button" class="btn btn-success"><a href="/Electro_Grid_System/update.jsp">Edit</a></button> <button type="button" class="btn btn-danger">Delete</button></td>
  </tr>

</table>
<br/><br/><br/><br/>
<p align="center">@All right received 2022.ElectroGrid</p>


</body>
</html>