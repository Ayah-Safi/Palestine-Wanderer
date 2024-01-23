<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="/css/foodpalestine.css">
</head>
<body>

<nav class="navbar navbar-expand-lg sticky-top">
    <div class="logo-section">
        <a href="/home"><img class="img-fluid logo" src="../images/navbar/logo.png" alt="Logo"></a>
        <p>فِلَسْطِينُ Wanderer - Discover the Heart of Palestine</p>
    </div>
    <div class="back-section">
        <a href="/home"><img alt="key-icon" src="../images/displayCity/key.png">Back to Palestine</a>
    </div>
</nav>

<h1 class="nablus" style="text-align: center;">Ethnic Cuisine</h1>

<div class="container mt-2">
    <div class="row justify-content-center">
        <div class="col-12 col-md-6">
            <!-- Carousel Section -->
            <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="../images/foodpalestine/food.png" class="d-block w-100" alt="Slide 1">
                    </div>
                    <div class="carousel-item">
                        <img src="../images/foodpalestine/food.png" class="d-block w-100" alt="Slide 2">
                    </div>
                    <div class="carousel-item">
                        <img src="../images/foodpalestine/food.png" class="d-block w-100" alt="Slide 3">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
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
            <p>Palestinian cuisine is known for its diversity and richness, reflecting the cultural and historical heritage of Palestine. Influenced by Middle Eastern and Mediterranean cuisines</p>
            <p>Palestinian food is famous for its heavy use of olive oil, sesame, meats, grains, and herbs.</p>
        </div>
    </div>
</div>
<section class="pt-5 pb-5">
    <div class="container">
        <div class="row">
            <div class="col-6">
                <h3 class="mb-3">Famous Palestinian food</h3>
            </div>
            <div class="col-6 text-right">
                <a class="btn btn-warning mb-3 mr-1 orng-color" href="#carouselExampleIndicators2" role="button" data-bs-slide="prev">
                    <i class="fa fa-arrow-left"></i>
                </a>
                <a class="btn btn-warning mb-3 orng-color" href="#carouselExampleIndicators2" role="button" data-bs-slide="next">
                    <i class="fa fa-arrow-right"></i>
                </a>
            </div>
            <div class="col-12">
                <div id="carouselExampleIndicators2" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="100%x280" src="../images/foodpalestine/maqlobe.jpeg" >
                                        <div class="position-absolute top-0 start-0 p-3 wishlist-icon" data-test-id="add-to-wishlist">
                                            <span class="wishlist-icon_heart"></span>
                                        </div>
                                        <div class="card-body">
                                            <h4 class="card-title">Maqluba</h4>
                                            <p class="card-text">A dish consisting of rice, meat or chicken, and a variety of vegetables like eggplant or cauliflower, all cooked together and then flipped upside down to serve..</p>
                                            <div class="d-grid gap-2">
                                                <a href="#" class="btn btn-warning city-btn-color">Read More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="100%x280" src="../images/foodpalestine/Musakhan.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title">Musakhan</h4>
                                            <p class="card-text">Consists of taboon bread covered with olive oil, sumac, layers of onions, and roasted chicken pieces..</p>
                                            <div class="d-grid gap-2">
                                                <a href="#" class="btn btn-warning city-btn-color">Read More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <div class="card">
                                        <img class="img-fluid" alt="100%x280" src="../images/foodpalestine/mansaf.jpg">
                                        <div class="card-body">
                                            <h4 class="card-title">Mansaf</h4>
                                            <p class="card-text">A traditional dish made with meat, rice, and a sauce of jameed (dried fermented yogurt).</p>
                                            <div class="d-grid gap-2">
                                                <a href="#" class="btn btn-warning city-btn-color">Read More</a>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
