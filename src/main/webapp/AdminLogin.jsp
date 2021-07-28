<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<link href="CSS/Style.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet"> 
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet"> 
   
<title>Leaner's Academy</title>

<style type="text/css">
#box1
{
	height:100vh;
	font-family:"Montserrat",Sans-serif;
	font-weight:600px;
	font-size:32px;
	background-color:black;
	color:white;
	text-align:center;
	padding:250px 20%;
}
#box2
{
	padding:200px 10%;
}
.row
{
margin:0px;
}
</style>
</head>
<body>
	<div class="row">
		<div id="box1" class="col-lg-6">
			Learner's<br>Academy
		</div>
		<div id="box2" class="col-lg-6">
			<form action="login" method="post">
				<label class="form-label">Admin Id</label>
				<input type="text" class="form-control" name="userid">
				<label class="form-label">Admin Password</label>
				<input type="password" class="form-control" name="password">
				<input Style="margin-top:20px;" type="submit" class="btn btn-primary" id="loginbutton" value="Login">
			</form>
		</div>
	</div>
</body>
</html>