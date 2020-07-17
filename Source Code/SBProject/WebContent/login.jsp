<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
  <%@include file="style/style.css" %>
  </style>
  <script type="text/javascript">
  <%@include file="js/script.js" %>
  </script>
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
<form action="Login" method="post">
<div class="container">
    <label for="uname"><b>Enter Email</b></label><br>
    <input type="email" placeholder="Enter Username" name="uname" id="uname" required><br>

    <label for="pass"><b>Enter Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="pass" id="pass" required><br>
    
    <label><b>Login As:</b></label><br>
    <input type="radio" name="LoginAs" value="jobseeker" checked> Job Seeker<br>
     <input type="radio" name="LoginAs" value="recruiter"> Recruiter<br>
        
    <button type="submit">Login</button>
  </div>
  </form>
</body>
</html>