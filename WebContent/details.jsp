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
      <a style="color:white" class="navbar-brand" href="homepage.jsp">Clinics</a>
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



<div class ="container"	><br><br>
<div class = "row">
<div class = "col-lg-2" ></div>
<div class = "col-lg-8">

<div class="panel panel-primary">
      <div class="panel-heading" style="font-size:30px">Clinic Details</div>
      <div class="panel-body" style="background-color:#E9FFF9"><br>
      
      <%
      try{
    	  String clid = session.getAttribute("clid").toString();
    	  int id = Integer.parseInt(clid);
    	  Connection con = null;
    	  PreparedStatement pst1 = null;
    	  PreparedStatement pst2 = null;
    	  con= ConnectionUtils.getConnection();
    	  pst1= con.prepareStatement("select * from clinic c, doctor d where d.clid=? and c.clid=?");
    	  //pst2= con.prepareStatement("select * from doctor where clid=?");
    	  pst1.setInt(1,id );
    	  pst1.setInt(2,id);
    	  
    	  ResultSet rs=null;
    	  
    	  
    	  rs= pst1.executeQuery();
    	  //rs2= pst2.executeQuery();
    	  
    	  int i =0;
    	  //out.println(rs2.next());
    	  int count = 0;
    	  while(rs.next())
      {%>
      <div style="font-size:20px;margin-left:20px; margin-right:20px;">
      <%if(count == 0){ %>
      <div style="background-color:#C8FFD1">
      <p>ClinicId: <%=rs.getString("clid")%> 
       <p>Clinic Name: <%=rs.getString("clname")%>
        <p>Clinic Address: <%=rs.getString("cladd")%>
         <p>Clinic Speciality: <%=rs.getString("clspeciality")%>
          <p>Clinic Contact: <%=rs.getString("clcontact")%>
           <p>Clinic Description: <%=rs.getString("cldesc")%>
           </p>
           </div>
           <hr><br>
           <%} %>
           <div style="background-color:#AEFFF5">
            <p>DoctorID: <%=rs.getString("dtid")%> 
       <p>Doctor Name: <%=rs.getString("dtname")%>
        <p>Doctor Contact: <%=rs.getString("dtcontact")%>
         <p>Doctor Speciality: <%=rs.getString("dtspeciality")%>
          <p>Doctor Sex: <%=rs.getString("dtsex")%>
          
           </div>
           </div>
           
     
     <!-- <a href="#" style="float:right">View Details</a> -->
      </p><hr>
      <%
      i++;
      count++;
      }
      }
      catch( Exception e)
      {
    	  e.printStackTrace();
      }
}
    	  
      %>
      
      </div>
    </div>






</div>
<div class = "col-lg-2" ></div>
</div>
</div>
</body>
</html>