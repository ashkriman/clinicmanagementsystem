<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert AdminPage</title>
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
<br><br><br><br><br><br><br><br><br>
 <div class="container"> 
        <div class="text-center"> 

<button onclick="window.location='user-list.jsp'" type="button" class="btn btn-primary  btn-lg" >Users List</button>
<button onclick="window.location='addclinic.jsp'" type="button" class="btn btn-primary btn-lg" >Add Clinic</button>
</div>
</div>

<%} %>
</body>
</html>