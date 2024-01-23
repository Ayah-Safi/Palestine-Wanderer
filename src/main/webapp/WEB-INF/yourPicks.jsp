<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Picks - Palestine Wanderer</title>
<link rel="stylesheet" href="/css/yourPicks.css">
<link
	href="https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap"
	rel="stylesheet">
</head>

<body>
	<div class="main">
		<h1>Your Picks</h1>
		<c:if test="${not empty favoriteCities}">
			<ul>
				<c:forEach items="${favoriteCities}" var="city">
					<li><strong>${city.name}</strong> - <span>${city.description}</span>
						<!-- Delete Form -->
						<form action="/home/removeFav/${city.id}" method="post">
							<!-- CSRF Token -->
							<sec:csrfInput />
							<input type="submit" value="Delete" />
						</form>
					</li>
				</c:forEach>
			</ul>
		</c:if>
	</div>
	<div class="back-section">
        <a href="/home" id="back-button" ><img alt="key-icon" src="/images/yourPicks/key.png" >Back to Palestine</a>
    </div>

</body>
</html>

