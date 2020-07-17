<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
  <%@include file="style/style.css" %>
  </style>
  <script type="text/javascript">
  <%@include file="js/script.js" %>
  </script>
</head>
<body>
<%
	//Remove Cache To prevent to open pages with added Login Control
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
	response.setHeader("Pragma", "no-cache");//HTTP 1.0
	response.setHeader("Expires", "0");//PROXIES
	String LoginAS=session.getAttribute("LoginAS").toString();
     if(session.getAttribute("username")==null){
        response.sendRedirect("login.jsp");
      }
     else if(LoginAS.equals("jobseeker"))
     {
		  response.sendRedirect("login.jsp");
     }	
 %>
<div class="topnav" id="myTopnav">
 <form action="">
<button type="submit">Home</button> 
</form>

 <form action="ViewAllJobs" method="post">
 <button type="submit">View Open Jobs</button> 
</form>

<form action="PostAJob.jsp" method="get">
 <button type="submit">Post A Job</button> 
</form>

<form action="viewApplyedCandidate.jsp" method="get">
 <button type="submit">View Apply Candidate</button> 
</form>

<form action="">
<button type="submit">Welcome ${username}</button> 
</form>

<form action="Logout">
<button type="submit">Logout</button> 
</form>
</div>


<div class="container">
<form action="ViewApplyedJobs" method="post">
<input type="text" name="viewApplyedJobCode" placeholder="Job Code..."><br>
<button type="submit">Get Result..</button>
</form>
</div>
</body>
</html>