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
<body>
	<div class="container">
		<h1 align = "center"> Register Here</h1>
		<div class="col-lg-3"></div>
		<div class="col-lg-6">
			<form action="RegisterController" method="post" >
				<div class="form-group">
					<label>Name:</label>
					<input type="text" name="name" class="form-control" required><br>
					<label>Email id:</label>
					<input type="email" name="email" class="form-control" required><br>
					<label>Mobile Number:</label>
					<input type="text" name="mobno" class="form-control" required><br>
					<label>Password:</label>
					<input type="password" name="password" class="form-control" required><br>
					<button class="btn btn-success btn-block" type="submit">Register</button>
				</div>
				
			</form>
		</div>
		<div class="col-lg-3"></div>
	</div>
</body>
</html>