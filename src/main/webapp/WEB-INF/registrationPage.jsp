<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
	<form:form action="/register" method="post" modelAttribute="user">
    <form:label for="fname" path="fname"><i class="fas fa-user"></i> First-Name:</form:label><br>
    <form:errors path="fname" cssClass="error" />
    <form:input type="text" path="fname" id="fname"/><br>
    
    <form:label for="lname" path="lname"><i class="fas fa-user"></i> Last-Name:</form:label><br>
    <form:errors path="lname" cssClass="error" />
    <form:input type="text" path="lname" id="lname"/><br>
    
    <form:label for="email" path="email"><i class="fas fa-envelope"></i> E-mail:</form:label><br>
    <form:errors path="email" cssClass="error" />
    <form:input type="text" path="email" id="email"/><br>
    
    <form:label path="password" for="password"><i class="fas fa-lock"></i> Password:</form:label><br>
    <form:errors path="password" cssClass="error" />
    <form:password path="password" id="password"/><br>
    
    <form:label for="passwordConfirmation" path="passwordConfirmation"><i class="fas fa-lock"></i> Confirm-Password:</form:label><br>
    <form:errors path="passwordConfirmation" cssClass="error" />
    <form:password path="passwordConfirmation" id="passwordConfirmation"/><br>
    
    <button class="multi-color-button" type="submit">
        <i class="fas fa-check" style="margin: 2px;"></i> Register
    </button>
    <div class="back-section">
        <a href="/home" id="back-button" ><img alt="key-icon" src="../images/displayCity/key.png" >Back to Palestine</a>
    </div>
    
    <div class="text-center">
        <h4>
            Not a member? <a href="/login">Login</a> 
        </h4>
    </div>
	</form:form>
	<c:if test="${not empty errorMessage}">
    <div class="alert alert-danger">
        ${errorMessage}
    </div>
	</c:if>
	</div>
	</main>
</body>
</html>
