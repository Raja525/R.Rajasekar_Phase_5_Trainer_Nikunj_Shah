<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>

<%
String id=request.getParameter("msg");
HttpSession session2=request.getSession();
session2.setAttribute("Id", id);
%>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="CSS/Style.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
   
<title>Set New Value</title>
<style>
#box1
{
	margin:100px 400px;
}
h1
{
text-align:center;
font-family:"Montserrat",Sans-serif;
margin:20px;
}
</style>

</head>
<body>
	<h1>Change Teacher for a subject</h1>
	<div id="box1">
		<form method="post" action="assignteachername">
			<label class="form-label">Assign Teacher</label>
			<input type="text" class="form-control" name="newteachername">
			<input Style="margin:10px 0px;" type="submit" class="btn btn-dark" value="Change Teacher">
		</form>
		<span><a href="AssignTeachers.jsp">Back</a></span>
	</div>
</body>
</html>