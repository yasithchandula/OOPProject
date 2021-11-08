<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container" id="container">
	<div class="form-container sign-up-container">
	
	</div>
	<div class="form-container sign-in-container">
		<form action="slogin" method="post">
			<h1>Sign in</h1>
			
			<input type="text" name="username" placeholder="Enter your username"><br>
		 <input type="password" name="password" placeholder="Enter your password"><br>
			
			<input type="submit" name="submit" value="Login">
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Welcome to Seller Center</h1>
				
				</a>
			</div>
		</div>
	</div>
</div>


</body>
</html>