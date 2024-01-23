<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
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
<link rel="stylesheet" href="/css/SongPalestine.css">
</head>
<body>

	<nav class="navbar navbar-expand-lg sticky-top">
		<div class="logo-section">
			<a href="/home"><img class="img-fluid logo"
				src="../images/navbar/logo.png" alt="Logo"></a>
			<p>فِلَسْطِينُ Wanderer - Discover the Heart of Palestine</p>
		</div>
		<div class="back-section">
			<a href="/home"><img alt="key-icon"
				src="../images/displayCity/key.png">Back to Palestine</a>
		</div>
	</nav>

	<h1 class="nablus" style="text-align: center;">Folk Music</h1>


	<div class="container mt-2">
		<div class="row justify-content-center">
			<div class="col-12 col-md-6">
				<!-- Carousel Section -->
				<div id="carouselExample" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="../images/SongPalestine/Song.png" class="d-block w-100" alt="Slide 1">
						</div>
						<div class="carousel-item">
							<img src="../images/SongPalestine/Song.png" class="d-block w-100" alt="Slide 2">
						</div>
						<div class="carousel-item">
							<img src="../images/SongPalestine/Song.png" class="d-block w-100" alt="Slide 3">
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
				<p>Palestinian songs are a poem about the ancient culture of
					Palestine, and it is an integral part of the Palestinian folklore
					and national heritage. These songs include lyrics that consider
					everyday life, dreams, hopes, and are famous for the struggles and
					challenges faced by the Palestinian people.</p>
				<p>Its most prominent topics include love, homesickness, social
					and political issues, and celebrating the natural beauty of the
					Palestinian land.</p>
			</div>
		</div>
	</div>
	<section class="pt-5 pb-5">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<h3 class="mb-3">Famous Palestinian Song</h3>
				</div>
				<div class="col-6 text-right">
					<a class="btn btn-warning mb-3 mr-1 orng-color"
						href="#carouselExampleIndicators2" role="button"
						data-bs-slide="prev"> <i class="fa fa-arrow-left"></i>
					</a> <a class="btn btn-warning mb-3 orng-color"
						href="#carouselExampleIndicators2" role="button"
						data-bs-slide="next"> <i class="fa fa-arrow-right"></i>
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
											<img class="img-fluid" alt="100%x280" src="../images/SongPalestine/smsem.png">
											<div
												class="position-absolute top-0 start-0 p-3 wishlist-icon"
												data-test-id="add-to-wishlist">
												<span class="wishlist-icon_heart"></span>
											</div>

											<div class="card-body">
												<h4 class="card-title" style="text-align: center;">Ya Zare'een Al Sesame</h4>
												<audio controls>
													<source src="horse.ogg" type="audio/ogg">
													<source src="../mp3/ya.mp3" type="audio/mpeg">
												</audio>

												<p class="card-text">It is a popular Palestinian song
													that carries within it many traditional meanings and
													symbols. This song is considered one of the Palestinian
													songs that expresses daily life and hard work in the
													fields, especially sesame cultivation.</p>
												<div class="d-grid gap-2">
													<a href="#" class="btn btn-warning city-btn-color">Read
														More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280" src="../images/SongPalestine/7mam.png">
											<div class="card-body">
												<h4 class="card-title" style="text-align: center;">Ya Tira Tiri Ya Hamama</h4>
												<audio controls>
													<source src="horse.ogg" type="audio/ogg">
													<source src="../mp3/hamam.mp3" type="audio/mpeg">

												</audio>


												<p class="card-text">It is a famous Palestinian folk
													song that expresses nostalgia, hope and love. This song is
													sung with a sad and poignant melody, and uses the dove as a
													symbol of peace and messages. In Palestinian culture, the
													dove is a symbol of hope and freedom, and its use in the
													song reflects the longing for peace and stability.</p>
												<div class="d-grid gap-2">
													<a href="#" class="btn btn-warning city-btn-color">Read
														More</a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-4 mb-3">
										<div class="card">
											<img class="img-fluid" alt="100%x280" src="../images/SongPalestine/anadame.png">
											<div class="card-body">
												<h4 class="card-title " style="text-align: center;">Ana Dammi Falastini</h4>
												<audio controls>
													<source src="horse.ogg" type="audio/ogg">
													<source src="../mp3/anaDamePalestine.mp3" type="audio/mpeg">

												</audio>
												<p class="card-text">It is a popular Palestinian song
													that carries within it many traditional meanings and
													symbols. This song is considered one of the Palestinian
													songs that expresses daily life and hard work in the
													fields, especially sesame cultivation.</p>
												<div class="d-grid gap-2">
													<a href="#" class="btn btn-warning city-btn-color">Read
														More</a>
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
