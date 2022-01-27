<%-- 
    Document   : about
    Created on : 26 Jan, 2022, 11:21:23 AM
    Author     : Ankit Kundu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!--
     - Roxy: Bootstrap template by GettTemplates.com
     - https://gettemplates.co/roxy
    -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>URBAN WARE</title>
    <meta name="description" content="Roxy">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- External CSS -->
    <link rel="stylesheet" href="vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/select2/select2.min.css">
    <link rel="stylesheet" href="vendor/owlcarousel/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor/lightcase/lightcase.css">
     <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400|Work+Sans:300,400,700" rel="stylesheet">

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.min.css">
    <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>

</head>
<body>
       <style>
            @font-face {
                font-family: myFirstFont;
                src: url(./font/Montserrat-Light-Alt1.woff2);
            }
            h3 {
                font-family: myFirstFont;
            }
        </style>
 <nav id="header-navbar" class="navbar navbar-expand-lg py-4">
    <div class="container">
        <a class="navbar-brand d-flex align-items-center text-white" href="index.jsp">
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
                        <span class="lnr lnr-menu"></span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div id="side-nav" class="sidenav">
	<a href="javascript:void(0)" id="side-nav-close">&times;</a>
	
	<div class="sidenav-content">
		<p>
			Kuncen WB1, Wirobrajan 10010, DIY
		</p>
		<p>
			<span class="fs-16 primary-color">(+68) 120034509</span>
		</p>
		<p>info@yourdomain.com</p>
	</div>
</div><div id="side-search" class="sidenav">
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
	
</div>	<div class="jumbotron jumbotron-single d-flex align-items-center" style="background-image: url(img/bg.jpg)">
  <div class="container text-center">
                <h1 class="display-1 mb-4">URBAN<br>WARE</h1>
 </div>
</div>	<section id="who-we-are" class="bg-white">
    <div class="container">
        <div class="section-content">
            <div class="title-wrap" data-aos="fade-up">
                <h1 class="section-title"><b>About Us</b></h1>
                <p class="section-sub-title">Urbanware is india's largest online home services platform.Launched in 2022.Initially,urbanware operates in different cities in india.<br>Urbanware provides a platform that allows skilled and experienced professionals to connect with users who are looking for different services.<br>Our main mottos..</p>
            </div>
            
            <div class="row text-center">
                <div class="col-md-4 col-sm-6" data-aos="fade-up">
                    <img class="rounded-circle" src="img/icons/animat-checkmark.gif" alt="Generic placeholder image" width="140" height="140">
                    <h5 class="mb-4">Assured Service</h5>
                    <p>We are always here to provide quality and assured services.The best service, at the right time.</p>
                    <!--p><a class="btn btn-link" href="#" role="button">View details</a></p-->
                </div>
                <!-- /.col-md-4 col-sm-6  -->
                <div class="col-md-4 col-sm-6" data-aos="fade-up" data-aos-delay="200">
                    <img class="rounded-circle" src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/4f35de89639683.5dfafaf4208fc.gif" alt="Generic placeholder image" width="140" height="140">
                    <h5 class="mb-4">Customer Satisfaction</h5>
                    <p>The customer's perception is our reality. Treating every client like family. Good service is our responsibility.</p>
                    <!--p><a class="btn btn-link" href="#" role="button">View details</a></p-->
                </div>
                <!-- /.col-md-4 col-sm-6  -->
                <div class="col-md-4 col-sm-6" data-aos="fade-up" data-aos-delay="400">
                    <img class="rounded-circle" src="img/icons/animat-responsive.gif" alt="Generic placeholder image" width="140" height="140">
                    <h5 class="mb-4">24*7 Customer Support</h5>
                    <p>We are here for you 24/7.</p>
                    <p>Email: </p>
                    <p>Contact No :</p>
                    <!--p><a class="btn btn-link" href="#" role="button">View details</a></p-->
                </div>
                <!-- /.col-md-4 col-sm-6  -->
            </div>
            <!-- /.row -->
        </div>
    </div>
</section>	
        
 <!--section id="skills" class="bg-white">
    <div class="container">
        <div class="section-content pt-0">
            
            <div class="row">
                <div class="col-md-6" data-aos="fade-right">
                    <!-- Skill Item -->
                    <!--div class="skill-item">
                        <div class="d-flex justify-content-between">
                             <p>HTML5</p>
                            <p class="text-muted">90%</p>
                        </div>
                        <div class="progress" data-percent="90%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                    <!-- Skill Item -->
                    <!--div class="skill-item">
                        <div class="d-flex justify-content-between">
                            <p>CSS3</p>
                            <p class="text-muted">85%</p>
                        </div>
                         <div class="progress" data-percent="85%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                    <!-- Skill Item -->
                    <!--div class="skill-item">
                        <div class="d-flex justify-content-between">
                            <p>JQUERY</p>
                            <p class="text-muted">73%</p>
                        </div>
                         <div class="progress" data-percent="73%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                </div-->
                <!--div class="col-md-6" data-aos="fade-left">
                    <!-- Skill Item -->
                    <!--div class="skill-item">
                        <div class="d-flex justify-content-between">
                            <p>Adobe Photoshop</p>
                            <p class="text-muted">80%</p>
                        </div>
                         <div class="progress" data-percent="80%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                    <!-- Skill Item -->
                    <!--div class="skill-item">
                        <div class="d-flex justify-content-between">
                            <p>Adobe Illustrator</p>
                            <p class="text-muted">60%</p>
                        </div>
                         <div class="progress" data-percent="60%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                    <!-- Skill Item -->
                    <!--div class="skill-item">
                        <div class="d-flex justify-content-between">
                            <p>Wordpress</p>
                            <p class="text-muted">55%</p>
                        </div>
                         <div class="progress" data-percent="55%">
                            <div class="progress-bar" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 0"></div>
                        </div>
                    </div>
                    <!-- End Skill Item -->
                </div>
            </div>
        </div>
    </div>
</section-->	
<!-- Features Section-->
<!--section id="cta" class="bg-fixed overlay" style="background-image: url(img/bg.jpg);">
    <div class="container">
        <div class="section-content" data-aos="fade-up">
            <div class="row">
                <div class="col-md-12 text-center">
                    <h2 class="mb-2">Make a beautiful website, or million of them</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam, veritatis qui eligendi delectus quia fuga!</p>
                    <a class="btn btn-outline-primary btn-lg">FEATURES</a>
                </div>
            </div>
        </div>
    </div>
</section-->
<!-- End of Features Section--></div>
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
	                <a class="nav-link" href="#">
	                	<i class="fab fa-youtube"></i>
	                </a>
	            </nav>
            </div>
            
        </div>
    </div>
</footer>	<!-- External JS -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
	<script src="vendor/bootstrap/popper.min.js"></script>
	<script src="vendor/bootstrap/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js "></script>
	<script src="vendor/owlcarousel/owl.carousel.min.js"></script>
	<script src="vendor/stellar/jquery.stellar.js" type="text/javascript" charset="utf-8"></script>
	<script src="vendor/isotope/isotope.min.js"></script>
	<script src="vendor/lightcase/lightcase.js"></script>
	<script src="vendor/waypoints/waypoint.min.js"></script>
	 <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
	 
	<!-- Main JS -->
	<script src="js/app.min.js "></script>
	<script src="//localhost:35729/livereload.js"></script>
</body>
</html>
