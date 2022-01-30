<%-- 
    Document   : contact
    Created on : 28 Jan, 2022, 11:54:45 AM
    Author     : PRADIP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <jsp:include page="header.jsp" ></jsp:include>

        <!--Banner Section-->
        
        <div class="jumbotron jumbotron-single d-flex align-items-center" style="background-image: url()">
            <div class="container text-center">
                <h1 class="display-1 mb-4">URBAN<br>WARE</h1>
            </div>
        </div>
        
        <!-- Reservation Section -->
<section id="reservation" class="bg-white section-content">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-5 offset-lg-1 mb-5 mb-lg-0" data-aos="fade-right">
                <div class="bg-white p-5 shadow">
                    <div class="heading-section text-center">
                        <h2 class="mb-4">
                            Contact Us
                        </h2>
                    </div>
                    <form method="post" name="contact-us" action="">
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="text" class="form-control" id="email" name="email" placeholder="Email">
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="tel" id="phone" class="form-control" name="phone" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required placeholder="Phone no">
                            </div>
                            
                            <div class="col-md-12 form-group">
                                <textarea class="form-control" id="message" name="message" rows="6" placeholder="Your Message ..."></textarea>
                            </div>
                            <div class="col-md-12 text-center">
                                <button class="btn btn-primary btn-shadow btn-lg" type="submit" name="submit">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-4 offset-lg-1" data-aos="fade-left">
               <img src="img/contact.png">

                <ul class="list-inline py-2">
                    <!--li class="list-inline-item text-center">
                        <span class="lnr fs-40 lnr-rocket"></span>
                        <p>Fast delivery</p>
                    </li-->
                    <!--li class="list-inline-item text-center">
                        <span class="lnr fs-40 lnr-magic-wand"></span>
                        <p>Awesome design</p>
                    </li-->
                    <li class="list-inline-item text-center">
                        <img class="rounded-circle" src="img/icons/animat-responsive.gif" alt="Generic placeholder image" width="150" height="150">
                    <h5 class="mb-4">24*7 Customer Support</h5>
                    <p>We are here for you 24/7.</p>
                    <p>Email: urbanwareservice@gmail.com</p>
                    <p>Contact No :+91-11-40517847.</p>
                    </li>
                </ul>
                
               <p>Give your feedback.</p>
                <a href="" class="#">
                    <a href="feedback.jsp"><button class="btn btn-primary btn-shadow btn-lg" type="submit" name="submit">Feedback</button></a>
                </a>
            </div>
        </div>
        
    </div>
</section>
        <!--footer start-->
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

        </footer>
        <!--footer end-->
        
               <!-- External JS -->
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