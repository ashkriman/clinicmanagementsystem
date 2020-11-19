<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="ISO-8859-1"> -->
<title>Login Page</title>
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

<body>
<br><br><br><br><br>
	<div class="container">
		
		<h1 align="center" class="text-primary" > Login </h1><br>
		<div class="row">
		<div class="col-lg-4"></div>
		
		<div class="col-lg-4">
		 <form action="LoginController" method="get">
			<div class="form-group">
				
				<input type="text" name="username" placeholder="Enter MobileNo" class="form-control">
				<br>
				
				<input type="password" name="password" placeholder="Enter Password" class="form-control">
				<br>
				<p>Don't have an account?<a href = "register.jsp">Sign up</a></p>
				<button id="form_submit" type="submit" class="btn btn-primary btn-block"> Login </button>
				
			</div>
			</form>
			
			</div>
		
			<div class="col-lg-4"></div>
			</div>
			</div>
		
		
		 
</body>
</html>