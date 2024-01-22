<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/home.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rubik&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="/js/home.js"></script>
<title>Landing Page</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg  sticky-top">
		<div class="logo-section">
			<a href="/home"><img class="img-fluid logo" src="images/navbar/logo.png"></a>
			<p>فِلَسْطِينُ Wanderer - Discover the Heart of Palestine</p>
		</div>
		<div class="links-section">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0" style="padding: 0px !important;">
				<li class="nav-item"><a class="nav-link" aria-current="page" href="https://en.wikipedia.org/wiki/History_of_Palestine" style="padding-right: 0px !important;"><i class="fas fa-archway icon"></i> Palestinian Heritage</a></li>
				<li class="nav-item"><a class="nav-link" href="#explore-culture"><i class="fas fa-binoculars icon"></i> Explore Culture</a></li>
				<li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-heart"></i> Your Picks</a></li>
				<li class="nav-item"><a class="nav-link" href="#just-for-you"><i class="fas fa-user-circle icon"></i> Just for You</a></li>
				<li class="nav-item"><a class="nav-link" href="#our-journey"><i class="fas fa-map-marked-alt icon"></i> Our Journey</a></li>
				<li class="nav-item"><a class="nav-link" href="#get-in-touch"><i class="fas fa-envelope icon"></i> Get in Touch</a></li>
				<li class="nav-item orng-button"><a class="nav-link" href="#" id="sign-in"><i class="fas fa-sign-in-alt icon"></i> Sign in</a></li>
			</ul>
		</div>
	</nav>
	<div class="video-container">
		<video class="vid-section" id="vid" controls>
			<source src="video/pales.mp4" type="video/mp4">
		</video>
	</div>
	<div class="marquee">
		<h3 class="welcm-msg">
			Welcome to Palestine – your journey into wonder begins here. <a
				class="play-vid" href="#" onclick="playVideo();">Play the video</a>
			and start your adventure.
		</h3>
		<script>
			function playVideo() {
				var video = document.getElementById('vid');
				video.play();
			}
		</script>
	</div>
	<!-- Start of Cities Section -->
	<section class="pt-5 pb-5 cities-crusol">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<h3 class="mb-3">Explore Palestinian Cities</h3>
				</div>
				<div class="col-6 text-right">
					<a class="btn btn-primary mb-3 mr-1 orng-color"
						href="#carouselExampleIndicators2" role="button"
						data-bs-slide="prev"> <i class="fa fa-arrow-left"></i>
					</a> <a class="btn btn-primary mb-3 orng-color"
						href="#carouselExampleIndicators2" role="button"
						data-bs-slide="next"> <i class="fa fa-arrow-right"></i>
					</a>
				</div>
				<div class="col-12">
					<div id="carouselExampleIndicators2" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-inner">
							<!-- Carousel Item 1 -->
							<div class="carousel-item active">
								<div class="row">
									<!-- Card 1 -->
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/ramallah.jpg">
											<div class="card-body">
												<h4 class="card-title">Ramallah</h4>
												<p class="card-text">Ramallah is a Palestinian city in
													the central West Bank, serving as the administrative
													capital of the Palestinian Authority.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn city-btn-color">Read More</a>
													<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- Card 2 -->
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/nablus.jpg">
											<div class="card-body">
												<h4 class="card-title">Nablus</h4>
												<p class="card-text">Nablus, also known as Nablus, is a
													Palestinian city in the northern West Bank, characterized
													by its historical and cultural significance.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn city-btn-color">Read More</a>
													<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- Card 3 -->
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/jenin.jpg">
											<div class="card-body">
												<h4 class="card-title">Jenin</h4>
												<p class="card-text">Jenin is a Palestinian city in the
													northern West Bank, recognized for its agricultural
													importance and historical heritage.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn city-btn-color">Read More</a>
													<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Carousel Item 2 -->
							<div class="carousel-item">
								<div class="row">
									<!-- Card 4 -->
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/tulkarem.jpeg">
											<div class="card-body">
												<h4 class="card-title">Tulkarem</h4>
												<p class="card-text">Tulkarem is a Palestinian city
													located in the northern West Bank, known for its
													agricultural activities and as an essential urban center in
													the region.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn city-btn-color">Read More</a>
													<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- Card 5 -->
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/hebron.jpg">
											<div class="card-body">
												<h4 class="card-title">Hebron</h4>
												<p class="card-text">Hebron is a major city in the
													southern part of the West Bank, known for its religious
													significance and the presence of the Tomb of the
													Patriarchs/Ibrahimi Mosque.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn city-btn-color">Read More</a>
													<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- Card 6 -->
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/Bethlahem.jpeg">
											<div class="card-body">
												<h4 class="card-title">Bethlehem</h4>
												<p class="card-text">Bethlehem is a Palestinian city in
													the West Bank, renowned for its biblical significance as
													the birthplace of Jesus Christ and for the historic
													Nativity Church.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn city-btn-color">Read More</a>
													<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Carousel Item 3 -->
							<div class="carousel-item">
								<div class="row">
									<!-- Card 7 -->
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/Jericho.jpg">
											<div class="card-body">
												<h4 class="card-title">Jericho</h4>
												<p class="card-text">Jericho is a Palestinian city in
													the West Bank, considered one of the oldest inhabited
													cities in the world, and known for its archaeological
													sites.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn city-btn-color">Read More</a>
													<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- Card 8 -->
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/qaleqelea.jpg">
											<div class="card-body">
												<h4 class="card-title">Qalqilya</h4>
												<p class="card-text">Qalqilya is a Palestinian city in
													the West Bank, known for its distinctive location within
													the separation barrier and its agricultural significance.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn city-btn-color">Read More</a>
													<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
									<!-- Card 9 -->
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/Salfit.jpg">
											<div class="card-body">
												<h4 class="card-title">Salfit</h4>
												<p class="card-text">Salfit is a Palestinian city in the
													central West Bank, notable for its agricultural activities
													and proximity to historic sites like the ancient village of
													Salfit.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn city-btn-color">Read More</a>
													<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End of Cities Section -->

	<!-- Act Section -->
	<section class="pt-5 pb-5" id="just-for-you">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<h3 class="mb-3">Experience Activities</h3>
				</div>
				<div class="col-6 text-right">
					<a class="btn btn-primary mb-3 mr-1 orng-color"
						href="#carouselExampleIndicators3" role="button"
						data-bs-slide="prev"> <i class="fa fa-arrow-left"></i>
					</a> <a class="btn btn-primary mb-3 orng-color"
						href="#carouselExampleIndicators3" role="button"
						data-bs-slide="next"> <i class="fa fa-arrow-right"></i>
					</a>
				</div>
				<div class="col-12">
					<div id="carouselExampleIndicators3" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="row">

									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/resized_image_4.png">
											<div class="card-body">
												<h4 class="card-title">Spend a Day Living with a
													Palestinian Family</h4>
												<p class="card-text">Immerse yourself in rich traditions
													by spending a day with a Palestinian family. Enhance your
													appreciation for diverse customs and daily life in this
													intimate cultural exchange.</p>

												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn btn-primary city-btn-color">Book
														now</a>
														<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/resized_image_2.png">
											<div class="card-body">
												<h4 class="card-title">Plant an olive tree</h4>
												<p class="card-text">Planting an olive tree honors
													tradition, fosters eco-sustainability, and connects us to
													cultural significance. Embrace this practice to cultivate a
													meaningful connection with nature and the past.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn btn-primary city-btn-color">Book
														now</a>
														<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>



									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/resized_image_1.png">
											<div class="card-body">
												<h4 class="card-title">Solo City Tour</h4>
												<p class="card-text">Embark on a self-guided tour
													through Palestinian cities. Discover landmarks and cultural
													treasures independently, absorbing the history and vibrancy
													of the city at your leisure.</p>

												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn btn-primary city-btn-color">Book
														now</a>
														<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="row">
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/resized_image_0.png">
											<div class="card-body">
												<h4 class="card-title">Group City Tour</h4>
												<p class="card-text">Explore Palestine's rich tapestry
													of landmarks and cultural sites. Immerse yourself in its
													history and diverse experiences, creating lasting memories
													on this unique adventure.</p>

												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn btn-primary city-btn-color">Book
														now</a>
														<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>


									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/resized_image_3.png">
											<div class="card-body">
												<h4 class="card-title">Hiking Adventure</h4>
												<p class="card-text">Embark on a scenic trek to uncover
													the untouched beauty of nature. Experience the tranquility
													of winding trails, breathtaking views, and the harmony of
													the natural world on this immersive hiking journey.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn btn-primary city-btn-color">Book
														now</a>
														<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>

										</div>
									</div>
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/resized_image_4.png">
											<div class="card-body">
												<h4 class="card-title">Spend a Day Living with a
													Palestinian Family</h4>
												<p class="card-text">Immerse yourself in rich traditions
													by spending a day with a Palestinian family. Enhance your
													appreciation for diverse customs and daily life in this
													intimate cultural exchange</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn btn-primary city-btn-color">Book
														now</a>
														<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>
	<!-- End of Act Section-->

	<!-- Culture Section -->
	<section class="pt-5 pb-5" id="explore-culture">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<h3 class="mb-3">Discover Palestinian Culture</h3>
				</div>
				<div class="col-6 text-right">
					<a class="btn btn-primary mb-3 mr-1 orng-color"
						href="#carouselExampleIndicators4" role="button"
						data-bs-slide="prev"> <i class="fa fa-arrow-left"></i>
					</a> <a class="btn btn-primary mb-3 orng-color"
						href="#carouselExampleIndicators4" role="button"
						data-bs-slide="next"> <i class="fa fa-arrow-right"></i>
					</a>
				</div>
				<div class="col-12">
					<div id="carouselExampleIndicators4" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="row">

									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/food.png">
											<div class="card-body">
												<h4 class="card-title">Ethnic Cuisine</h4>
												<p class="card-text">Palestinian cuisine is a rich
													tapestry of flavors, blending traditional Middle Eastern
													ingredients to create dishes like falafel, hummus, and
													maqluba, reflecting the region's diverse culinary heritage.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn btn-primary city-btn-color">Read
														More</a>
														<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>

										</div>
									</div>
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/music2.png">
											<div class="card-body">
												<h4 class="card-title">Folk Music</h4>
												<p class="card-text">Palestinian music resonates with a
													cultural symphony, weaving traditional melodies and
													contemporary influences, capturing the essence of
													resilience and identity.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn btn-primary city-btn-color">Read
														More</a>
														<a><i class="far fa-heart heart"></i></a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280"
												src="images/home/clothes.png">
											<div class="card-body">
												<h4 class="card-title">Heritage Clothes</h4>
												<p class="card-text">Palestinian clothing reflects a
													vibrant heritage, featuring intricate embroidery and
													symbolic patterns that convey a deep connection to
													tradition and identity.</p>
												<div class="d-grid gap-2 card-btm">
													<a href="#" class="btn btn-primary city-btn-color">Read
														More</a>
														<a><i class="far fa-heart heart"></i></a>
														
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End of Culture Section -->

	<!-- Start of Footer Section -->
	<!-- Remove the container if you want to extend the Footer to full width. -->
	<div class="container-fluid my-5"
		style="padding-right: 0px; padding-left: 0px;">
		<footer class="text-center text-lg-start footer"
			style="background-color: #FC8B5E;">
			<div class="container p-4">
				<div class="row mt-4">
					<div class="col-lg-4 col-md-12 mb-4 mb-md-0" id="our-journey">
						<h5 class="text-uppercase mb-4">Our Journey</h5>
						<p>We are a passionate group of young individuals committed to
							making a positive impact on our country and sharing the beauty of
							Palestine with the world in an engaging manner.</p>
						<p>We were initially launched in 2019 in Nablus City, and
							since then, we have been expanding our efforts and reach across
							Palestine and beyond. Our mission is to showcase the rich culture
							and heritage of Palestine through enjoyable means.</p>
						<div class="mt-4">
							<!-- Social media buttons -->
							<a type="button" class="btn btn-floating btn-warning btn-lg"><i
								class="fab fa-facebook-f"></i></a> <a type="button"
								class="btn btn-floating btn-warning btn-lg"><i
								class="fab fa-dribbble"></i></a> <a type="button"
								class="btn btn-floating btn-warning btn-lg"><i
								class="fab fa-twitter"></i></a> <a type="button"
								class="btn btn-floating btn-warning btn-lg"><i
								class="fab fa-google-plus-g"></i></a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 mb-4 mb-md-0" id="get-in-touch">
						<h5 class="text-uppercase mb-4 pb-1">Get in Touch</h5>
						<div class="form-outline form-white mb-4">
							<!-- Your contact form or input fields can go here -->
						</div>
						<ul class="fa-ul" style="margin-left: 4.65em;">
							<li class="mb-3"><span class="fa-li"><i
									class="fas fa-home"></i></span><span class="ms-2">Nablus City,
									P207, Palestine</span></li>
							<li class="mb-3"><span class="fa-li"><i
									class="fas fa-envelope"></i></span><span class="ms-2">palestine.wanderer@gmail.com</span></li>
							<li class="mb-3"><span class="fa-li"><i
									class="fas fa-phone"></i></span><span class="ms-2">+ 02 294 567
									88</span></li>
							<li class="mb-3"><span class="fa-li"><i
									class="fas fa-print"></i></span><span class="ms-2">+ 02 295
									567 89</span></li>
						</ul>
					</div>
					<div class="col-lg-4 col-md-6 mb-4 mb-md-0">
						<h5 class="text-uppercase mb-4">Links</h5>
						<table class="table text-center">
							<tbody class="font-weight-normal">
								<tr>
									<td><a href="register">Registration</a></td>
								</tr>
								<tr>
									<td>Login</td>
								</tr>
								<tr>
									<td><a href="/home/addFeedback">Add FeedBack</a></td>
								</tr>
								<tr>
									<td>Book an Activity</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="text-center p-3"
				style="background-color: rgba(0, 0, 0, 0.2);">
				© 2024 Copyright: <a class="text-black"
					style="text-decoration: none; color: black;" href="/home">PalWanderer.com</a>
			</div>
		</footer>
	</div>
	<!-- End of .container -->
	<!-- End of Footer Section -->

</body>
</html>
