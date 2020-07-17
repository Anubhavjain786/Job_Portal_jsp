<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	//Remove Cache To prevent to open pages with added Login Control
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
	response.setHeader("Pragma", "no-cache");//HTTP 1.0
	response.setHeader("Expires", "0");//PROXIES
	
     if(session.getAttribute("username")==null){
        response.sendRedirect("login.jsp");
      }
 %>
Welcome ${username}

<form action="Logout">
	<input type="submit" value="Logout">

	</form>
<form action="ViewAllJobs" method="post">
	<input type="submit" value="Logout1">
</form>
</body>
	

</html>