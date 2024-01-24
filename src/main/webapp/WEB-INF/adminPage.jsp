<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- Include Chart.js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #FFF4EB;
}

.dashboard {
	display: flex;
	min-height: 100vh;
}

.sidebar {
	
	background-color: #333;
	color: white;
	width: 250px;
	padding: 20px;
}

.sidebar h2 {
	color: #fff;
}

.menu {
	list-style: none;
	padding: 0;
	margin-bottom: 30px;
}

.menu li a {
	color: #fff;
	text-decoration: none;
	display: block;
	padding: 10px;
	transition: background-color 0.3s;
}

.menu li a:hover {
	background-color: #575757;
}

.content {
	padding: 20px;
	flex-grow: 1;
}

.content h1 {
	color: #333;
}

.chart-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
}

.chart {
	background-color: #FFF;
	border: 1px solid #DDD;
	padding: 20px;
	margin-bottom: 20px;
}

.table-container {
	background-color: #FFF;
	border: 1px solid #DDD;
	padding: 20px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<div class="dashboard">
		<div class="sidebar">
			<h2>Admin 👨🏻‍💻 Dashboard</h2>
			<ul class="menu">
		
			    <li><a href="/home/addCity">🏙️ Add City</a></li>
			    <li><a href="/home/addVillage">🏡 Add Village</a></li>
			    <li><a href="/home/addCamp">🏕️ Add Camp</a></li>
			    <li><a href="/home/addActivity">🏃 Add Activity</a></li>
			    <li><a href="/home/displayCities">👁️ Display Cities</a></li>
			    <li><a href="/home/feedback">💬 Display Feedbacks</a></li>
			    <li><a href="/home">🏠 Back to Home</a></li>
			</ul>
		</div>
		<div class="content">
			<!-- Chart Area -->
			<div class="chart-container">
				<!-- <h2>Active Users</h2> -->
				<div class="chart">
					<h3>Daily Users</h3>
					<canvas id="dailyUsersChart"></canvas>
				</div>
				<div class="chart">
					<h3>Monthly Users</h3>
					<canvas id="monthlyUsersChart"></canvas>
				</div>
				<div class="chart">
					<h3>Yearly Users</h3>
					<canvas id="yearlyUsersChart"></canvas>
				</div>
			</div>
			
			<!-- City Overview Section -->
			<div class="table-container">
				<h1>City Overview 📍📝</h1>
				<p>Below is an overview of all cities in the system.</p>
				<table class="table table-striped table-hover">
					<thead class="thead-dark">
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Description</th>
							<!-- Add more columns as needed -->
						</tr>
					</thead>
					<tbody>
						<c:forEach var="city" items="${cities}">
							<tr>
								<td>${city.id}</td>
								<td>${city.name}</td>
								<td>${city.description}</td>
								<!-- Add more data cells as needed -->
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			
			<!-- Feedback Section -->
			<div class="table-container">
				<h1>User Feedback 😎 😡 😔 🤯 </h1>
				<p>Below is an overview of all feedback provided by users.</p>
				<table class="table table-striped table-hover Primary">
					<thead class="thead-dark">
						<tr>
							<th>ID</th>
							<th>User</th>
							<th>Feedback</th>
							<!-- Add more columns as needed -->
						</tr>
					</thead>
					<tbody>
						<c:forEach var="feedback" items="${feedbacks}">
							<tr>
								<td>${feedback.id}</td>
								<td>${feedback.email}</td>
								<td>${feedback.description}</td>
								<!-- Add more data cells as needed -->
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<!-- Chart.js Scripts for Active Users Charts -->
	<script>
	var dailyCtx = document.getElementById('dailyUsersChart').getContext(
	'2d');
var monthlyCtx = document.getElementById('monthlyUsersChart')
	.getContext('2d');
var yearlyCtx = document.getElementById('yearlyUsersChart').getContext(
	'2d');

// Sample data
var dailyData = [ 12, 19, 3, 5, 2, 3 ];
var monthlyData = [ 20, 30, 50, 40, 60, 70 ];
var yearlyData = [ 100, 200, 150, 170, 180, 190 ];

// Daily Chart
var dailyUsersChart = new Chart(dailyCtx, {
type : 'line',
data : {
	labels : [ 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun' ],
	datasets : [ {
		label : 'Daily Active Users',
		data : dailyData,
		backgroundColor : 'rgba(255, 99, 132, 0.2)',
		borderColor : 'rgba(255, 99, 132, 1)',
		borderWidth : 1
	} ]
}
});

// Monthly Chart
var monthlyUsersChart = new Chart(monthlyCtx, {
type : 'bar',
data : {
	labels : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun' ],
	datasets : [ {
		label : 'Monthly Active Users',
		data : monthlyData,
		backgroundColor : 'rgba(54, 162, 235, 0.2)',
		borderColor : 'rgba(54, 162, 235, 1)',
		borderWidth : 1
	} ]
}
});

// Yearly Chart
var yearlyUsersChart = new Chart(yearlyCtx, {
type : 'line',
data : {
	labels : [ '2020', '2021', '2022', '2023', '2024', '2025' ],
	datasets : [ {
		label : 'Yearly Active Users',
		data : yearlyData,
		backgroundColor : 'rgba(75, 192, 192, 0.2)',
		borderColor : 'rgba(75, 192, 192, 1)',
		borderWidth : 1
	} ]
}
});
<!-- Chart.js Scripts for Active Users Charts -->

	</script>
</body>
</html>

