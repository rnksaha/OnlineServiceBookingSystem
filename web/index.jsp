<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible">
        <title>URBAN WARE</title>
        <meta name="description" content="Roxy">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- External CSS -->
        <link rel="stylesheet" href="./vendor/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="./vendor/select2/select2.min.css">
        <link rel="stylesheet" href="./vendor/owlcarousel/owl.carousel.min.css">
        <link rel="stylesheet" href="./vendor/lightcase/lightcase.css">
        <link rel="stylesheet" href="./css/aos.css" />

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400|Work+Sans:300,400,700" rel="stylesheet">

        <!-- CSS -->
        <link rel="stylesheet" href="./css/style.min.css">
        <link rel="stylesheet" href="./css/icon-font.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

        <!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
        <script src="./js/modernizr.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
        </script>
        <script>
            function getPinCodes() {
                //var cityName = document.getElementByName("selectedCity").value;
                //alert($("#selectedCity").val());
                $.ajax({
                    type: "GET",
                    url: "getPinCodes",
                    //data: {'cityName': $("#selectedCity").text()},
                    data: "cityName=" + $("#selectedCity").val(),
                    success: function (result) {
                        $('#pindivid').html(result);
                    },
                    error: function (xhr, errmsg) {
                        alert("No values found..!!");
                    }
                });
            }
        </script>

        <title>urbanware</title>
    </head>
    <body>

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


        <!-- Banner part-->
        <div class="jumbotron d-flex align-items-center">
            <div class="container text-center">
                <h1 class="display-1 mb-4">URBAN<br>WARE</h1>
            </div>
            <div class="rectangle-1"></div>
            <div class="rectangle-2"></div>
            <div class="rectangle-transparent-1"></div>
            <div class="rectangle-transparent-2"></div>
            <div class="circle-1"></div>
            <div class="circle-2"></div>
            <div class="circle-3"></div>
            <div class="triangle triangle-1">
                <img src="img/obj_triangle.png" alt="">
            </div>
            <div class="triangle triangle-2">
                <img src="img/obj_triangle.png" alt="">
            </div>
            <div class="triangle triangle-3">
                <img src="img/obj_triangle.png" alt="">
            </div>
            <div class="triangle triangle-4">
                <img src="img/obj_triangle.png" alt="">
            </div>
        </div>

        <!-- End of Banner Section-->
        
        <!-- City and Pin Code Section-->
        <div style="width:800px; margin:auto;">
        <select onchange="getPinCodes()" id="selectedCity" name="selectedCity" class="form-select" aria-label="Default select example">
            <option value="NA">
                ----Select City Name----
            </option>
            <option value="Ranchi">Ranchi</option>
            <option value="Kolkata">Kolkata</option>
            <option value="Delhi">Delhi</option>
        </select>
        </div>
        <div id="pindivid" style="width:800px; margin:auto;">
        </div>
        <!-- End of City and Pin Code Section-->

        <!-- Services Section -->
        <section id="portfolio" class="bg-white">
            <div class="container">
                <div class="section-content">

                    <!-- Section Title -->
                    <div class="title-wrap">
                        <h2 class="section-title">Services <b>We</b> Provide</h2>
                    </div>
                    <!-- End of Section Title -->

                    <div class="row">
                        <!-- Service Holder -->
                        <div class="col-md-12 portfolio-holder mt-3">

                            <!-- Portfolio Content -->
                            <div class="grid-portfolio">
                                <div class="grid-sizer"></div>
                                <div class="gutter-sizer"></div>
                                <!-- Portfolio Item -->
                                <div class="grid-item minimalism" data-aos="fade-up">
                                    <div class="grid-item-wrapper">
                                        <img src="./img/photo-1.jpg" alt="portfolio-img" class="portfolio-item">
                                        <div class="grid-info">
                                            <div class="grid-link d-flex justify-content-center">
                                                <a class="ext-link" href="electrician.jsp" target="_blank">
                                            <span class="lnr lnr-link"></span>
                                        </a>
                                            </div>
                                            <div class="grid-title">
                                                <h4>Electricians</h4>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- End of Portfolio Item -->
                                <!-- Portfolio Item -->
                                <div class="grid-item vintage" data-aos="fade-up">
                                    <div class="grid-item-wrapper">
                                        <img src="./img/photo-6.jpg" alt="portfolio-img" class="portfolio-item">
                                        <div class="grid-info">
                                            <div class="grid-link d-flex justify-content-center">
                                             
                                        <a class="ext-link" href="plumber.jsp" target="_blank">
                                            <span class="lnr lnr-link"></span>
                                        </a>
                                            </div>
                                            <div class="grid-title">
                                                <h4>Plumber</h4>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- Services Section  -->


                                <!-- Portfolio Item -->
                                <div class="grid-item creative grid-item-height" data-aos="fade-up">
                                    <div class="grid-item-wrapper">
                                        <img src="./img/photo-2.jpg" alt="portfolio-img" class="portfolio-item">
                                        <div class="grid-info">
                                            <div class="grid-link d-flex justify-content-center">
                                               <a class="ext-link" href="salon.jsp" target="_blank">
                                            <span class="lnr lnr-link"></span>
                                        </a> 
                                            </div>
                                            <div class="grid-title">
                                                <h4>Salon</h4>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- End of Portfolio Item -->
                                <!-- Portfolio Item -->
                                <div class="grid-item creative" data-aos="fade-up">
                                    <div class="grid-item-wrapper">
                                        <img src="./img/photo-7.jpg" alt="portfolio-img" class="portfolio-item">
                                        <div class="grid-info">
                                            <div class="grid-link d-flex justify-content-center">
                                            <a class="ext-link" href="repair.jsp" target="_blank">
                                            <span class="lnr lnr-link"></span>
                                            </a>
                                            </div>
                                            <div class="grid-title">
                                                <h4>Repairs</h4>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- End of Portfolio Item -->
                                <!-- Portfolio Item -->
                                <div class="grid-item vintage" data-aos="fade-up">
                                    <div class="grid-item-wrapper">
                                        <img src="./img/photo-4.jpg" alt="portfolio-img" class="portfolio-item">
                                        <div class="grid-info">
                                            <div class="grid-link d-flex justify-content-center">
                                             <a class="ext-link" href="therapy.jsp" target="_blank">
                                            <span class="lnr lnr-link"></span>
                                            </a>   
                                            </div>
                                            <div class="grid-title">
                                                <h4>Therapies</h4>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- End of Portfolio Item -->
                                <!-- Portfolio Item -->
                                <div class="grid-item creative" data-aos="fade-up">
                                    <div class="grid-item-wrapper">
                                        <img src="./img/photo-9.jpg" alt="portfolio-img" class="portfolio-item">
                                        <div class="grid-info">
                                            <div class="grid-link d-flex justify-content-center">
                                                <a class="ext-link" href="cleaning.jsp" target="_blank">
                                            <span class="lnr lnr-link"></span>
                                            </a>
                                            </div>
                                            <div class="grid-title">
                                                <h4>Cleaning and Pest Control</h4>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- End of Portfolio Item -->
                            </div>
                            <!-- End of Portfolio Content -->
                        </div>
                        <!-- End of Portfolio Holder -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End of Service Section -->

        <!-- Testimonial Section-->
        <section id="testimonial" class="section-padding bg-fixed bg-white overlay" style="background-image: url(./img/bg-white.jpg);">
            <div class="container">
                <div class="section-content" data-aos="fade-up">
                    <div class="heading-section text-center">
                        <h2>
                            User Testimonials
                        </h2>
                    </div>
                    <div class="row">
                        <!-- Testimonial -->
                        <div class="testi-content testi-carousel owl-carousel">
                            <div class="testi-item text-center">
                                <i class="testi-icon fa fa-3x fa-quote-left"></i>
                                <h4 class="testi-text"><b>URBAN WARE</b> <br>Some Feedback here</h4>
                                <div class="testi-meta-inner d-flex justify-content-center align-items-center">
                                    <div class="testi-img mr-2">
                                        <img src="./img/testi-1.jpg" alt="">
                                    </div>
                                    <div class="testi-details">
                                        <p class="testi-author mb-0 font-weight-bolder">John Doe</p>
                                        <p class="testi-desc mb-0">Web Designer</p>
                                    </div>
                                </div>

                            </div>
                            <div class="testi-item text-center">
                                <i class="testi-icon fa fa-3x fa-quote-left"></i>
                                <h4 class="testi-text">Some Feedback here <br> Some Feedback here.</h4>
                                <div class="testi-meta-inner d-flex justify-content-center align-items-center">
                                    <div class="testi-img mr-2">
                                        <img src="./img/testi-1.jpg" alt="">
                                    </div>
                                    <div class="testi-details">
                                        <p class="testi-author mb-0 font-weight-bolder">Philip Doe</p>
                                        <p class="testi-desc mb-0">Web Designer</p>
                                    </div>
                                </div>
                            </div>
                            <div class="testi-item text-center">
                                <i class="testi-icon fa fa-3x fa-quote-left"></i>
                                <h4 class="testi-text">Some Feedback here <br> Some Feedback here.</h4>
                                <div class="testi-meta-inner d-flex justify-content-center align-items-center">
                                    <div class="testi-img mr-2">
                                        <img src="./img/testi-1.jpg" alt="">
                                    </div>
                                    <div class="testi-details">
                                        <p class="testi-author mb-0 font-weight-bolder">Alex Doe</p>
                                        <p class="testi-desc mb-0">Web Designer</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End of Testimonial -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End of Testimonial Section-->	

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


        <!-- footer start-->
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
        <!-- footer ends-->



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
