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
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="/css/displayCity.css">
</head>
</body>

<h1 style="text-align: center;">Nublus</h1>
<div class="container mt-2">
	<div class="row justify-content-center">
		<div class="col-12 col-md-6">
			<div id="carouselExample" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="../images/displayCity/nublus.jpg" class="d-block w-100" alt="Slide 1">
					</div>
					<div class="carousel-item">
						<img src="../images/displayCity/HD.jpg" class="d-block w-100" alt="Slide 2">
					</div>
					<div class="carousel-item">
						<img src="../images/displayCity/R.jpeg" class="d-block w-100" alt="Slide 3">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExample" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExample" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</div>
	</div>
</div>
<div class="row mt-3">
	<div class="col-10 col-md-8 mx-auto">
		<div class="text-center">
			<p>Nablus, nestled amidst the picturesque landscapes of the West
				Bank, is a city steeped in history and cultural richness. Known as
				the "uncrowned capital of Palestine," Nablus boasts a vibrant
				tapestry of ancient architecture, bustling markets, and a warm,
				welcoming atmosphere.</p>
			<p>Surrounded by rolling hills and overlooked by the imposing
				Mount Gerizim, Nablus invites visitors to savor its rich cultural
				heritage, experience the warmth of its people, and witness the
				resilience of a city that has endured through the ages.</p>
		</div>
	</div>
</div>
<section class="pt-5 pb-5">
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h3 class="mb-3">Famous villages in Nablus</h3>
			</div>
			<div class="col-6 text-right">
				<a class="btn btn-primary mb-3 mr-1"
					href="#carouselExampleIndicators2" role="button"
					data-bs-slide="prev"> <i class="fa fa-arrow-left"></i>
				</a> <a class="btn btn-primary mb-3" href="#carouselExampleIndicators2"
					role="button" data-bs-slide="next"> <i
					class="fa fa-arrow-right"></i>
				</a>
			</div>
			<div class="col-12">
				<div id="carouselExampleIndicators2" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row">

								<div class="col-md-4 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280" src="../images/displayCity/aqraba.PNG">
										<div class="position-absolute top-0 start-0 p-3 wishlist-icon"
											data-test-id="add-to-wishlist">
											<span class="wishlist-icon_heart"></span>
										</div>
										<div class="card-body">

											<h4 class="card-title">Aqraba</h4>
											<p class="card-text">Aqraba village, situated 18 km
												southeast of Nablus, relies on rain-fed agriculture, with an
												urban area covering 2700 dunams and a total land area of
												43500 dunams, hosting a population of approximately 3800
												inhabitants in 1987 post the 1967 Zionist occupation.</p>
											<div class="d-grid gap-2">

												<a href="#" class="btn btn-primary">Read More</a>

											</div>
										</div>


									</div>
								</div>
								<div class="col-md-4 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280" src="../images/displayCity/huwaa.jpg">
										<div class="card-body">
											<h4 class="card-title">Hawara</h4>
											<p class="card-text">Located 9 km south of Nablus along
												the main Nablus-Jerusalem road, this village covers 990
												dunams of urban area, with a total land area of 7980 dunams,
												administratively under Nablus municipality and bordered by
												Burin, Asira al-Qibliya, Awarta, Einabus, Jama'in, and
												Aurata.</p>
											<div class="d-grid gap-2">
												<a href="#" class="btn btn-primary">Read More</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280" src="../images/displayCity/Asira2.png">
										<div class="card-body">
											<h4 class="card-title">Asira</h4>
											<p class="card-text">Aseera al-Shamaliya, a Nablus town
												covering 35,000 dunams, faced Israeli seizure of 1500 dunams
												for a military camp and 500 dunams for settlements since
												1967, located 6 km north of Nablus, with an elevation of 648
												meters, offering views of Ajloun mountains, Rabd Castle, and
												Mount Sheikh, bordered by Yassid</p>
											<div class="d-grid gap-2">
												<a href="#" class="btn btn-primary">Read More</a>
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
<section class="pt-5 pb-5">
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h3 class="mb-3">Famous camps in Nablus</h3>
			</div>
			<div class="col-6 text-right">
				<a class="btn btn-primary mb-3 mr-1"
					href="#carouselExampleIndicators2" role="button"
					data-bs-slide="prev"> <i class="fa fa-arrow-left"></i>
				</a> <a class="btn btn-primary mb-3" href="#carouselExampleIndicators2"
					role="button" data-bs-slide="next"> <i
					class="fa fa-arrow-right"></i>
				</a>
			</div>
			<div class="col-12">
				<div id="carouselExampleIndicators2" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row">

								<div class="col-md-4 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280" src="../images/displayCity/camp.jpg">
										<div class="position-absolute top-0 start-0 p-3 wishlist-icon"
											data-test-id="add-to-wishlist">
											<span class="wishlist-icon_heart"></span>
										</div>
										<div class="card-body">

											<h4 class="card-title">Amari Refugee Camp</h4>
											<p class="card-text">The Amari Refugee Camp in Nablus
												serves as a vital hub for hosting Palestinian refugees,
												providing essential services to meet their basic needs</p>
											<div class="d-grid gap-2">

												<a href="#" class="btn btn-primary">Read More</a>

											</div>
										</div>


									</div>
								</div>
								<div class="col-md-4 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280" src="../images/displayCity/camp2.jpg">
										<div class="card-body">
											<h4 class="card-title">Jalazone Camp</h4>
											<p class="card-text">The Jalazone Camp is an integral
												part of the settlement structure in Nablus, offering support
												and care to Palestinian refugees, creating a living
												environment that facilitates adaptation.</p>
											<div class="d-grid gap-2">
												<a href="#" class="btn btn-primary">Read More</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4 mb-3">
									<div class="card">
										<img class="img-fluid" alt="100%x280" src="../images/displayCity/Camp3.jpg">
										<div class="card-body">
											<h4 class="card-title">Dheisheh Camp</h4>
											<p class="card-text">The Dheisheh Camp in Nablus is home
												to many Palestinian refugees, offering essential services to
												secure residents' needs and improve their living conditions.
											</p>
											<div class="d-grid gap-2">
												<a href="#" class="btn btn-primary">Read More</a>
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

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
