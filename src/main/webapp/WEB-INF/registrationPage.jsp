<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
<link rel="stylesheet" href="/css/reg.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
	<div id="particles-js" class="snow"></div>
	<main>
	<div class="left-side"></div>
	<div class="right-side">
		<h1>
			<i class="fas fa-users"></i> Registration
		</h1>
		<form action="">
			<label for="text"><i class="fas fa-user"></i> First-Name:</label><br>
			<input type="text" id="email" name="email"><br> <label
				for="text"><i class="fas fa-user"></i> Last-Name:</label><br> <input
				type="text" id="email" name="email"><br> <label
				for="text"><i class="fas fa-envelope"></i> E-mail:</label><br>
			<input type="text" id="email" name="email"><br> <label
				for="password"><i class="fas fa-lock"></i> Password:</label><br>
			<input type="password" id="email" name="email"><br> <label
				for="password"><i class="fas fa-lock"></i> Confirm-Password:</label><br>
			<input type="password" id="password" name="password"><br>
			<button class="multi-color-button" type="submit">
				<i class="fas fa-check" style="margin: 2px;"></i> Register
			</button>
			<div class="text-center">
				<h4>
					Not a member? <a href="#!">Login</a> 
				</h4>
			</div>
		</form>
	</div>
	</main>
</body>
</html>
<%-- 
	<h1>Register!</h1>

	<p>
		<form:errors path="user.*" />
	</p>

	<form:form method="POST" action="/register" modelAttribute="user">
		<p>
			<form:label path="username">Username:</form:label>
			<form:input path="username" />
		</p>
		<p>
			<form:label path="password">Password:</form:label>
			<form:password path="password" />
		</p>
		<p>
			<form:label path="passwordConfirmation">Password Confirmation:</form:label>
			<form:password path="passwordConfirmation" />
		</p>
		<input type="submit" value="Register!" />
	</form:form> --%>
