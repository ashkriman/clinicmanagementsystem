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




<div class ="container"><br><br>
<div class = "row">
<div class = "col-lg-3" ></div>
<div class = "col-lg-6">

<table class="table table-hover table-bordered">
<tr>
<th> Name </th>
<th> Email id </th>
<th> Mobile Number </th>
</tr>

      
      <%
      try{
    	  
    	  Connection con = null;
    	  Statement st = null;
    	  con= ConnectionUtils.getConnection();
    	  st= con.createStatement();
    	  ResultSet rs = null;
    	  
    	  String sql =" select * from users";
    	  
    	  rs= st.executeQuery(sql);
    	  
    	  int i =0;
    	  
    	  while(rs.next())
      {%>
      <tr>
      <td> <%=rs.getString("username") %></td>
      <td> <%=rs.getString("emailid") %></td>
      <td> <%=rs.getString("phoneno") %></td>
      </tr>
      
      <%
      i++;
      }
      }
      catch( Exception e)
      {
    	  e.printStackTrace();
      }
    	  
      %>
      </table>
      </div>
    </div>







</div>
<div class = "col-lg-3" ></div>
</div>
</div>
<%} %>
</body>
</html>