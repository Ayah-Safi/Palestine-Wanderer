<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<title>Login Page</title>
</head>
<body>
	<div id="particles-js" class="snow"></div>
	<main>
		<div class="left-side"></div>
		<div class="right-side">
			<h1>
				<i class="fas fa-user"></i>Login
			</h1>
			<form action="/login" method="POST">
				<label for="fname"><i class="fas fa-envelope"></i> E-mail:</label><br>
				<input type="text" id="email" name="username"> <label
					for="password"><i class="fas fa-key"></i>Password:</label><br>
				<input type="password" id="password" name="password"><br>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<button class="multi-color-button" type="submit">
					<i class="fas fa-lock" style="margin: 2px;"></i>Login
				</button>
				<div class="back-section">
					<a href="/home" id="back-button"><img alt="key-icon"
						src="../images/displayCity/key.png">Back to Palestine</a>
				</div>
				<div class="text-center">
					<h4>
						Not a member? <a href="/register">Register</a>
					</h4>

				</div>

			</form>

		</div>

	</main>

</body>
</html>