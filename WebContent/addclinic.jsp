<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</head>
<style>
body {
  background-color: #E9FFF9;
}
</style>
<body>
<% if(session.getAttribute("username") == null){ %>

<nav class =" navbar navbar-dark bg-primary">

  <div class="container-fluid">
    <div class="navbar-header">
      <a style="color:white" class="navbar-brand" href="adminpage.jsp">Clinics</a>
    </div>
    <ul class="nav navbar-nav">

<li class="nav-item"> <a style="color:white" class="nav-link" href="adminpage.jsp">Home</a></li>
<li class="nav-item"> <a style="color:white;float:right" class="nav-link" href="login.jsp">Login</a></li>

</ul>
</div>
</nav>
<%}else{ %>
<nav class =" navbar navbar-dark bg-primary">

  <div class="container-fluid">
    <div class="navbar-header">
      <a style="color:white" class="navbar-brand" href="adminpage.jsp">Clinics</a>
    </div>
    <ul class="nav navbar-nav">

<li class="nav-item"> <a style="color:white" class="nav-link" href="adminpage.jsp">Home</a></li>
<li class="nav-item"> <a style="color:white;float:right" class="nav-link" href="LogoutController">Logout</a></li>

</ul>
</div>
</nav>

	<div class="container">
		<h1 align = "center">Add New Clinic</h1>
		<div class="col-lg-3"></div>
		<div class="col-lg-6">
			<form action="AddClinicController" method="post" >
				<div class="form-group">
					<label>Clinic Id:</label>
					<input type="number" name="clid" class="form-control" required><br>
					<label>Clinic Name:</label>
					<input type="text" name="clnm" class="form-control" required><br>
					<label>Clinic Address:</label>
					<input type="text" name="clad" class="form-control" required><br>
					<label>Clinic Speciality:</label>
					<input type="text" name="clsp" class="form-control" required><br>
					<label>Clinic Contact:</label>
					<input type="text" name="clct" class="form-control" required><br>
					<label>Clinic Description:</label>
					<input type="text" name="clds" class="form-control" required><br>
					<button class="btn btn-primary btn-block" type="submit">Register</button>
				</div>
				
			</form>
		</div>
		<div class="col-lg-3"></div>
	</div>
	<%} %>
</body>
</html>