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
     if(session.getAttribute("username")==null)
     {
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


<form action="PostAJob" method="post">
	<p> <input type="hidden" name="recruId" value=${recru_id}><p>
	
	
	
<div class="container">
	
	
	<div class="form-group">
		<label for="jobcode"><b>Enter Job Code</b></label><br>
		<input type="text" name="jobcode" id="jobcode" placeholder="Enter Job Code" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="jobtitle"><b>Enter Title of Job</b></label><br>
		<input type="text" name="jobtitle" id="jobtitle" placeholder="Enter Title of Job" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="jobsdes"><b>Short Description</b></label><br>
		<input type="text" name="jobsdes" id="jobsdes" placeholder="Short Description" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="jobdes"><b>Long Description</b></label><br>
		<input type="text" name="jobdes" id="jobdes" placeholder="Long Description" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="jobsal"><b>Enter Salary</b></label><br>
		<input type="text" name="jobsal" id="jobsal" placeholder="Enter Salary" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="jobpdate"><b>Publish Date</b></label><br>
		<input type="text" name="jobpdate" id="jobpdate" placeholder="Publish Date" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="jobcdate"><b>Closing Date</b></label><br>
		<input type="text" name="jobcdate" id="jobcdate" placeholder="Closing Date" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="jobphone"><b>Phone Number</b></label><br>
		<input type="text" maxlength=10 id="jobphone" name="jobphone" placeholder="Phone Number" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="jobemail"><b>Enter Email</b></label><br>
		<input type="email" name="jobemail" id="jobemail" placeholder="Enter Email" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="jobnov"><b>Number of Vacancy</b></label><br>
		<input type="text" name="jobnov" id="jobnov" placeholder="Number of Vacancy" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="joborg"><b>Organization Name</b></label><br>
		<input type="text" name="joborg" id="joborg" placeholder="Organization Name" required><br>
	</div><br>
	
	<div class="form-group">
		<label for="jobposs"><b>Position of Job</b></label><br>
		<input type="text" name="jobposs" id="jobposs" placeholder="Position of Job" required><br>		
	</div><br>
	
	<div class="form-group">
		<button type="submit" class="btn btn-primary form-control" >Submit Form</button>
		</div><br>
	
</div>
</form>

</body>
</html>