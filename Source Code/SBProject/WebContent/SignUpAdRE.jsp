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

<link rel="stylesheet" href="/SBProject/style/bootstrap.css">
<meta charset="ISO-8859-1">
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
<form action="signUpAsRe" method="post">
<div class="container">
<div class="form-group">
<label for="REfname"><b>Enter Your First Name</b></label><br>
<input type="text" name="REfname" id="REfname" placeholder="Enter Your First Name" required><br>
</div><br>
<div class="form-group">
<label for="RElname"><b>Enter Your Last Name</b></label><br>
<input type="text" name="RElname" id="RElname" placeholder="Enter Your Last Name" required><br>
</div><br>
<div class="form-group">
<label for="REphone"><b>Enter Your Mobile Number</b></label><br>
<input type="number"  maxlength="10" id="REphone" name="REphone" placeholder="Enter Your Mobile Number" required><br>
</div><br>
<div class="form-group">
<label for="REemali"><b>Enter Your Email Address</b></label><br>
<input type="email" name="REemali" id="REemali" placeholder="Enter Your Email Address" required><br>
</div><br>
<div class="form-group">
<label for="REpass"><b>Enter Your Password</b></label><br>
<input type="password" name="REpass" id="REpass" placeholder="Enter Your Password" required><br>
</div><br>
<div class="form-group">
<label for="REpassA"><b>RE-Enter Your Password</b></label><br>
<input type="password" id="REpassA" placeholder="RE-Enter Your Passwor" required><br>
</div><br>
<div class="form-group">
<label for="REOrg"><b>Enter Organization Name</b></label><br>
<input type="text" name="REOrg" id="REOrg" placeholder="Enter Organization Name" required><br>
</div><br>
<div class="form-group">
<label for="REcity"><b>Enter City Name</b></label><br>
<input type="text" name="REcity" id="REcity" placeholder="Enter City Name" required><br>
</div><br>

<div class="form-group">
		<button type="submit" class="btn btn-primary form-control" >Submit Form</button>
		</div><br>
		</div>
</form>

</body>
</html>