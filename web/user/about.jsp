<%-- 
    Document   : about
    Created on : 26 Jan, 2022, 11:21:23 AM
    Author     : Ankit Kundu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="org.apache.log4j.Logger" %>
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
        <% Logger log = Logger.getLogger("about.jsp"); %>
        <style>
            @font-face {
                font-family: myFirstFont;
                src: url(./font/Montserrat-Light-Alt1.woff2);
            }
            h3 {
                font-family: myFirstFont;
            }
        </style>
        <jsp:include page="header.jsp" ></jsp:include>

        <div class="jumbotron jumbotron-single d-flex align-items-center" style="background-image: url(img/bg.jpg)">
            <div class="container text-center">
                <h1 class="display-1 mb-4">URBAN<br>WARE</h1>
            </div>

        </div>	
        
        <style>
            #container{
                width: 400px;
                height: 200px;
                margin: 0px auto;
            }
            </style>

        <section id="who-we-are" class="bg-white">
               
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
                            
                            <!--p><a class="btn btn-link" href="#" role="button">View details</a></p-->
                        </div>
                        <!-- /.col-md-4 col-sm-6  -->
                    </div>
                    <!-- /.row -->
                </div>
            </div>
        </section>	
                
                <div class="container"> 
             
             <img src="./img/map.png">
             <p></p>
                </div>

                <!-- City Section -->
        <section id="client" class="overlay bg-fixed" style="background-image: url();">
            <div class="container">
                <div class="section-content" data-aos="fade-up">
                    <div class="row ">
                        <div class="col-md-12">
                            <!-- Section Title -->
                            <div class="title-wrap mb-5">
                                <h2>We<span> Are</span> Available On Selected Cities</h2>
                            </div>
                            <!-- End of Section Title -->
                        </div>
                        <!-- Provide city images below -->
                        <div class="col-md-12 client-holder">
                            <div class="client-slider owl-carousel">

                                <div class="client-item">
                                    <img class="kolkata" src="./img/icons/kolk.png" alt="KOL">
                                    <p style="text-align:center;">Kolkata</p>
                                </div>

                                <div class="client-item">
                                    <img class="bangalore" src="./img/icons/bang.png" alt="BANG">
                                    <p style="text-align:center;">Bangalore</p>
                                </div>

                                <div class="client-item">
                                    <img class="chandigarh" src="./img/icons/ahd.png" alt="CHD">
                                    <p style="text-align:center;">Chandigarh</p>
                                </div>

                                <div class="client-item">
                                    <div style="width:100px;height:72px;">
                                        <img class="kochi" src="./img/icons/koch.png" alt="KOCH">
                                    </div>
                                    <p style="text-align:center;">Kochi</p>
                                </div>

                                <div class="client-item">
                                    <img class="mumbai" src="./img/icons/mumbai.png" alt="MUMBAI">
                                    <p style="text-align:center;">Mumbai</p>
                                </div>

                                <div class="client-item">
                                    <img class="pune" src="./img/icons/pune.png" alt="PUNE">
                                    <p style="text-align:center;">Pune</p>
                                </div>

                            </div>
                            <!-- End of City images-->
                        </div>
                    </div>
                </div>
        </section>
        <!-- End of Client Section -->
</div>
            
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

