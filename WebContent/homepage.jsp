<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.clinic.utils.ConnectionUtils" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomePage</title>
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
      <a style="color:white" class="navbar-brand" href=homepage.jsp">Clinics</a>
    </div>
    <ul class="nav navbar-nav">

<li class="nav-item"> <a style="color:white" class="nav-link" href="homepage.jsp">Home</a></li>
<li class="nav-item"> <a style="color:white;float:right" class="nav-link" href="login.jsp">Login</a></li>

</ul>
</div>
</nav>
<%}else{ %>
<nav class =" navbar navbar-dark bg-primary">

  <div class="container-fluid">
    <div class="navbar-header">
      <a style="color:white" class="navbar-brand" href="homepage.jsp">Clinics</a>
    </div>
    <ul class="nav navbar-nav">

<li class="nav-item"> <a style="color:white" class="nav-link" href="homepage.jsp">Home</a></li>
<li class="nav-item"> <a style="color:white;float:right" class="nav-link" href="LogoutController">Logout</a></li>

</ul>
</div>
</nav>





<div class ="container"><br><br>
<div class = "row">
<div class = "col-lg-3" ></div>
<div class = "col-lg-6">

<div class="panel panel-primary">
      <div class="panel-heading" style= "font-size:30px">Clinic List</div>
      <div class="panel-body">
      
      <%
      try{
    	  
    	  Connection con = null;
    	  Statement st = null;
    	  con= ConnectionUtils.getConnection();
    	  st= con.createStatement();
    	  ResultSet rs = null;
    	  
    	  String sql =" select * from clinic";
    	  
    	  rs= st.executeQuery(sql);
    	  
    	  int i =0;
    	  
    	  while(rs.next())
      {%>
      
      <p> <%=rs.getString("clname") %>
     <button onclick="window.location='DetailsController?clid=<%=rs.getString("clid")%>'" class = "btn btn-primary" style="float:right"> View Details</button>
     <!-- <a href="#" style="float:right">View Details</a> -->
      </p><hr>
      <%
      i++;
      }
      }
      catch( Exception e)
      {
    	  e.printStackTrace();
      }
    	  
      %>
      
      </div>
    </div>

	<%} %>






</div>
<div class = "col-lg-3" ></div>
</div>
</div>
</body>
</html>