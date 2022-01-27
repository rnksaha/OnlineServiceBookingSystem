<%-- 
    Document   : plumber
    Created on : 27 Jan, 2022, 3:16:01 PM
    Author     : Ankit Kundu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible">
        <title>URBAN WARE</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- External CSS -->
        <link rel="stylesheet" href="./vendor/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="./vendor/owlcarousel/owl.carousel.min.css">
        <link rel="stylesheet" href="./vendor/lightcase/lightcase.css">
        <link rel="stylesheet" href="./css/aos.css" />

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400|Work+Sans:300,400,700" rel="stylesheet">

        <!-- CSS -->
        <link rel="stylesheet" href="./css/style.min.css">
        <link rel="stylesheet" href="./css/icon-font.min.css">
        <link rel="stylesheet" href="./css/style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

        <!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
        <script src="./js/modernizr.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>urbanware</title>

        <style>
            @import url("./css/product.css");
            .my-class {
                text-align: center;
            }
        </style>

    </head>

    <body data-spy="scroll" data-target="#navbar" class="static-layout">
        <nav id="header-navbar" class="navbar navbar-expand-lg py-4">
            <div class="container">
                <a class="navbar-brand d-flex align-items-center text-white" href="/">
                    <h3 class="font-weight-bolder mb-0">URBAN WARE</h3>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-nav-header" aria-controls="navbar-nav-header" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="lnr lnr-menu"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbar-nav-header">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="admin.jsp">Admin Panel</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="signUp.jsp">Login/Sign up</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About</a>
                        </li>
                        <li class="nav-item">
                            <a id="side-search-open" class="nav-link" href="#">
                                <span class="lnr lnr-magnifier"></span>
                            </a>
                        </li>
                        <li class="nav-item only-desktop">
                            <a class="nav-link" id="side-nav-open" href="#">
                                <span class="fa fa-shopping-cart"></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Cart-->
        <div id="side-nav" class="sidenav">
            <a href="javascript:void(0)" id="side-nav-close">&times;</a>
            <div class="sidenav-content">
                <p>
                    Cart details here.
                </p>
            </div>
        </div>


        <!-- search-->
        <div id="side-search" class="sidenav">
            <a href="javascript:void(0)" id="side-search-close">&times;</a>
            <div class="sidenav-content">
                <form action="">
                    <div class="input-group md-form form-sm form-2 pl-0">
                        <input class="form-control my-0 py-1 red-border" type="text" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="input-group-text red lighten-3" id="basic-text1">
                                <span class="lnr lnr-magnifier"></span>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>	



        <div class="jumbotron jumbotron-single d-flex align-items-center" style="background-image: url()">
            <div class="container text-center">
                <h1 class="display-2 mb-4">SOMETHING</h1>
            </div>
        </div>

        <!-- SOMETHING Section -->
        <section class="section-products">
            <div class="container">
                <div class="row justify-content-center text-center">
                    <div class="col-md-8 col-lg-6">
                        <div class="header">
                            <h3>Featured Product</h3>
                            <h2>Popular Products</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- Single Product -->
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div id="product-1" class="single-product">
                            <div class="part-1">
                                <ul>
                                    <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-plus"></i></a></li>
                                </ul>
                            </div>
                            <div class="part-2">
                                <h3 class="product-title">Here Product Title</h3>
                                <h4 class="product-old-price">$79.99</h4>
                                <h4 class="product-price">$49.99</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Single Product -->
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div id="product-2" class="single-product">
                            <div class="part-1">
                                <span class="discount">15% off</span>
                                <ul>
                                    <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-plus"></i></a></li>
                                </ul>
                            </div>
                            <div class="part-2">
                                <h3 class="product-title">Here Product Title</h3>
                                <h4 class="product-price">$49.99</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Single Product -->
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div id="product-3" class="single-product">
                            <div class="part-1">
                                <ul>
                                    <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-plus"></i></a></li>
                                </ul>
                            </div>
                            <div class="part-2">
                                <h3 class="product-title">Here Product Title</h3>
                                <h4 class="product-old-price">$79.99</h4>
                                <h4 class="product-price">$49.99</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Single Product -->
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div id="product-4" class="single-product">
                            <div class="part-1">
                                <span class="new">new</span>
                                <ul>
                                    <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-plus"></i></a></li>
                                </ul>
                            </div>
                            <div class="part-2">
                                <h3 class="product-title">Here Product Title</h3>
                                <h4 class="product-price">$49.99</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Single Product -->
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div id="product-1" class="single-product">
                            <div class="part-1">
                                <ul>
                                    <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-plus"></i></a></li>
                                </ul>
                            </div>
                            <div class="part-2">
                                <h3 class="product-title">Here Product Title</h3>
                                <h4 class="product-old-price">$79.99</h4>
                                <h4 class="product-price">$49.99</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Single Product -->
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div id="product-2" class="single-product">
                            <div class="part-1">
                                <span class="discount">15% off</span>
                                <ul>
                                    <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-plus"></i></a></li>
                                </ul>
                            </div>
                            <div class="part-2">
                                <h3 class="product-title">Here Product Title</h3>
                                <h4 class="product-price">$49.99</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Single Product -->
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div id="product-3" class="single-product">
                            <div class="part-1">
                                <ul>
                                    <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-plus"></i></a></li>
                                </ul>
                            </div>
                            <div class="part-2">
                                <h3 class="product-title">Here Product Title</h3>
                                <h4 class="product-old-price">$79.99</h4>
                                <h4 class="product-price">$49.99</h4>
                            </div>
                        </div>
                    </div>
                    <!-- Single Product -->
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div id="product-4" class="single-product">
                            <div class="part-1">
                                <span class="new">new</span>
                                <ul>
                                        <li><a href="#"><i class="fas fa-shopping-cart"></i></a></li>
                                        <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fas fa-plus"></i></a></li>
                                </ul>
                            </div>
                            <div class="part-2">
                                <h3 class="product-title">Here Product Title</h3>
                                <h4 class="product-price">$49.99</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End of Blog Section -->
        <footer class="mastfoot my-3">
            <div class="inner container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 d-flex align-items-center">

                    </div>
                    <div class="col-lg-4 col-md-12 d-flex align-items-center">
                        <p class="mx-auto text-center mb-0">&copy; 2022 URBAN WARE</p>
                    </div>

                    <div class="col-lg-4 col-md-12">
                        <nav class="nav nav-mastfoot justify-content-center">
                            <a class="nav-link" href="#">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a class="nav-link" href="#">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a class="nav-link" href="#">
                                <i class="fab fa-instagram"></i>
                            </a>
                            <a class="nav-link" href="#">
                                <i class="fab fa-linkedin"></i>
                            </a>
                        </nav>
                    </div>

                </div>
            </div>

        </footer>	<!-- External JS -->
        <script type="text/javascript" src="./js/jquery.js"></script>
        <script src="./vendor/bootstrap/popper.min.js"></script>
        <script src="./vendor/bootstrap/bootstrap.min.js"></script>
        <script src="./vendor/select2/select2.min.js "></script>
        <script src="./vendor/owlcarousel/owl.carousel.min.js"></script>
        <script src="./vendor/stellar/jquery.stellar.js" type="text/javascript" charset="utf-8"></script>
        <script src="./vendor/isotope/isotope.min.js"></script>
        <script src="./vendor/lightcase/lightcase.js"></script>
        <script src="./vendor/waypoints/waypoint.min.js"></script>
        <script src="./js/aos.js"></script>

        <!-- Main JS -->
        <script src="./js/app.min.js "></script>
    </body>
</html>

