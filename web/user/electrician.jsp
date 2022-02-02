<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="org.apache.log4j.Logger" %>
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
            @import url("./css/electrician.css");
            .my-class {
                text-align: center;
            }
        </style>
        <script>
            function addToCart(type) {
                //var cityName = document.getElementByName("selectedCity").value;
                //alert($("#selectedCity").val());
                //                alert();
                $.ajax({
                    type: "GET",
                    url: "addToCart",
                    //data: {'cityName': $("#selectedCity").text()},
                    data: "type=" + type,
                    success: function (result) {
                        //                        $('#result').html(result);
                        alert("Item Added!!");
                    },
                    error: function (xhr, errmsg) {
                        alert("No values found..!!");
                    }
                }
                );
            }


        </script>
    </head>

    <body data-spy="scroll" data-target="#navbar" class="static-layout">
        <% Logger log = Logger.getLogger("electrician.jsp"); %>
         <jsp:include page="header.jsp" ></jsp:include>



            <div class="jumbotron jumbotron-single d-flex align-items-center" style="background-image: url()">
                <div class="container text-center">
                    <h1 class="display-1 mb-4">URBAN<br>WARE</h1>
                </div>
            </div>

            <!-- SOMETHING Section -->
            <section class="section-products">
                <div class="container">
                    <div class="row justify-content-center text-center">
                        <div class="col-md-8 col-lg-6">
                            <div class="header">
                                <h3>Featured Services</h3>
                                <h2>Popular Services</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <s:iterator value="serviceTypeList">
                        <div class="col-md-6 col-lg-4 col-xl-3">
                            <div id="product-1" class="single-product">
                                <div class="part-1">
                                    <ul>
                                        <li><a id="" onclick="addToCart('<s:property value="type"/>')" href="#"/><i class="fas fa-shopping-cart"></i></a></li>
                                        <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fas fa-plus"></i></a></li>
                                    </ul>
                                </div>
                                <div class="part-2">
                                    <h3 class="product-title"><s:property value="type" /></h3>
                                    <h4 class="product-price"><s:property value="price" /></h4>
                                </div>
                            </div>
                        </div>
                    </s:iterator>

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
