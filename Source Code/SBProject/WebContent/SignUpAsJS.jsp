<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
  <%@include file="style/style.css" %>
  </style>
  <script type="text/javascript">
  <%@include file="js/script.js" %>
  </script>

<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/SBProject/style/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
<div class="topnav" id="myTopnav">
  <a href="index.html" class="active">Home</a>
  <a href="login.jsp">Login</a>
  <a href="aboutUs.jsp">About Us</a>
  <a href="SignUpAdRE.jsp">Recruiter Sign Up</a>
  <a href="SignUpAsJS.jsp">Job Seeker Sign Up</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
<form action="signUpAsJs" method="post">
<div class="container">
	<div class="form-group">
		<label for="JSfname"><b>Enter Your First Name</b></label><br>
		<input type="text" name="JSfname" id="JSfname" class = "form-control" placeholder="Enter Your First Name" required><br>
		</div><br>
		<div class="form-group">		
		<label for="JSlname"><b>Enter Your Last Name</b></label><br>
		<input type="text" name="JSlname" id="JSlname" class = "form-control" placeholder="Enter Your Last Name" required><br>
		</div><br>
		
		<div class="form-group">
		<label for="JSdate"><b>Enter Your Date of Birth</b></label><br>
		<input type="text" name="JSdate" id="JSdate" class = "form-control" placeholder="Enter Your Date of Birth" required><br>
		</div><br>
		<div class="form-group">
		<label for="JSphone"><b>Enter Your Mobile Number</b></label><br>
		<input type="number"  maxlength="10" name="" id="JSphone" class = "form-control" placeholder="Enter Your Mobile Number" required><br>
		</div><br>
		<div class="form-group">
		<label for="JSemali"><b>Enter Your Email Address</b></label><br>
		<input type="email" name="JSemali" id="JSemali" class = "form-control" placeholder="Enter Your Email Address" required><br>
		</div><br>
		<div class="form-group">
		<label for="JSpass"><b>Enter Your Password</b></label><br>
		<input type="password" name="JSpass" id="JSpass" class = "form-control" placeholder="Enter Your Password" required><br>
		</div><br>
		<div class="form-group">
		<label for="JSpassA"><b>RE-Enter Your Password</b></label><br>
		<input type="password" id="JSpassA" class = "form-control" placeholder="Enter Your Password" required><br>
		</div><br>
		<div class="form-group">
		<label for="JSaddress"><b>Enter Your Address</b></label><br>
		<input type="text" name="JSaddress" id="JSaddress" class = "form-control" placeholder="Enter Your Address" required><br>
		</div><br>
		<div class="form-group">
		<label for="JSedu"><b>Enter Your Maximum Education</b></label><br>
		<input type="text" name="JSedu" id="JSedu" class = "form-control" placeholder="Enter Your Maximum Education" required><br>
		</div><br>
		<div class="form-group">
		<label for="JSexp"><b>Enter Your Maximum Experience in Year</b></label><br>
		<input type="text" name="JSexp" id="JSexp" class = "form-control" placeholder="Enter Your Maximum Experience in Year" required><br>
		</div><br>
		<div class="form-group">
		<label for="JScity"><b>Enter City Name</b></label><br>
		<input type="text" name="JScity" id="JScity" class = "form-control" placeholder="Enter City Name" required><br>
		</div><br>
		<div class="form-group">
		<label for="JSstate"><b>Enter state Name</b></label><br>
		<input type="text" name="JSstate" id="JSstate" class = "form-control" placeholder="Enter state Name" required><br>
		</div><br>
		<div class="form-group">
		<button type="submit" class="btn btn-primary form-control" >Submit Form</button>
		</div><br>
		</div>

	
</form>
</body>
</html>