<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
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
   
<title>Welcome Admin</title>

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
	padding:200px 0px;
}
#box2
{
	padding:40px 40px;
	height:100vh;

}
.row
{
margin:0px;
}
a
{
display:block;
color:white;
text-decoration:none;
margin:10px 0px;
}
a:hover
{
display:block;
color:white;
text-decoration:none;
margin:8px 0px;
font-size:34px;
transition-duration: 0.6s;
transition-delay:0.5s ease;
color:#fb3640;
}
h1
{
text-align:center;
font-family:"Montserrat",Sans-serif;
}
#logout
{
color:#fb3640;
font-size:20px;
position:absolute;
top:10px;
left:350px;
}
</style>
</head>
<body>
	<div class="row">
	<div id="box1" class="col-lg-4">
		<a id="logout" href="AdminLogin.jsp">Logout</a>
		<a href="home.jsp">Class Report</a>
		<a href="AssignClasses.jsp">Assign Classes</a>
		<a href="AssignTeachers.jsp">Assign Teachers</a>
		<a href="Studentlist.jsp">Students List</a>
	</div>
	<div id="box2" class="col-lg-8">
		<h1>Class Report</h1>
		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>Id</th>
					<th>Classes</th>
					<th>Studentname</th>
					<th>Subject</th>
					<th>Teachername</th>
				</tr>
			</thead>
			<tbody>
		<%
		Class.forName("com.mysql.jdbc.Driver");
		//Connection con=DriverManager.getConnection("jdbc:mysql://aa1y1ghile0p7t1.cv2uqxokjyuy.us-east-1.rds.amazonaws.com:3306/learnersacademy","root","rootraja");
		Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.c1dzwtudyvfv.us-east-2.rds.amazonaws.com:3306/learnersacademy","root","rootraja");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select studentstable.Id,studentstable.Classes,studentstable.Studentname,teacherstable.Subjects,teacherstable.Teachersname from learnersacademy.studentstable left join learnersacademy.teacherstable on studentstable.Classes=teacherstable.Classes;");

		while(rs.next())
		{
			int id=rs.getInt("Id");
			String classes=rs.getString("Classes");
			String studentname=rs.getString("Studentname");
			String subject=rs.getString("Subjects");
			String teachername=rs.getString("Teachersname");
			%>
				<tr>
					<td><%=id %></td>
					<td><%=classes %></td>
					<td><%=studentname %></td>
					<td><%=subject %></td>
					<td><%=teachername %></td>
				</tr>
			
		<%}
		%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>