<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/feedback.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<title>FeedBack</title>
</head>
<body>
	<div id="particles-js" class="snow"></div>
	<main>
		<div class="left-side"></div>
		<div class="right-side">
			<h1>
				<i class="fas fa-comments"></i> FeedBack
			</h1>
			<form:form action="/home/addFeedback" method="post"
				modelAttribute="newFeedBack">
				<p>
					<form:label path="email">email:</form:label>
					<form:errors path="email" />
					<form:input class="form-control icon"  path="email" />
				</p>
				<p>
					<form:label path="description">Your FeedBack:</form:label>
					<form:errors path="description" />
					<i class="fas fa-pencil-alt"></i>
					<form:textarea class="form-control icon" path="description"></form:textarea>
				</p>

				<button class="multi-color-button" type="submit">
					<i class="fas fa-paper-plane"></i> Send message
				</button>
				<div class="back-section">
					<a href="/home" id="back-button"><img alt="key-icon"
						src="../images/displayCity/key.png">Back to Palestine</a>
				</div>
			</form:form>
		</div>
	</main>
</body>
</html>



