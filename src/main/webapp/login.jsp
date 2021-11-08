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
		<form action="#">
			<h1>Create Account</h1>
			
			
			<button>Sign Up</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="login" method="post">
			<h1>Sign in</h1>
			
			<input type="text" name="username" placeholder="Enter your username"><br>
		 <input type="password" name="password" placeholder="Enter your password"><br>
			<a href="#">Forgot your password?</a>
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
				<h1>Welcome</h1>
				<p>Are you a new user?</p>
				<a href="customerSignup.jsp">
				<button class="ghost" id="signUp">Sign Up</button>
				</a>
			</div>
		</div>
	</div>
</div>


</body>
</html>