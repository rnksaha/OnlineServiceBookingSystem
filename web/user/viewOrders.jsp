<%-- 
    Document   : viewOrders
    Created on : 10 Feb, 2022, 2:56:41 PM
    Author     : sommo
--%>

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
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

        <!-- Modernizr JS for IE8 support of HTML5 elements and media queries -->
        <script src="./js/modernizr.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Orders</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

        <style>
            @import url("./css/plumber.css");
            .my-class {
                text-align: center;
            }
        </style>
<!--        <script>
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


        </script>-->

    </head>

    <body data-spy="scroll" data-target="#navbar" class="static-layout">
        <% Logger log = Logger.getLogger("plumber.jsp");%>
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
                                <h2>Your Orders</h2>
                            </div>
                        </div>
                    </div>
                    <!--<div class="row">-->
                <s:iterator value="orderList">
                    <hr class="my-5">
                    <div class="row pb-5 p-5">
                        <div class="col-md-6">
                            <p class="font-weight-bold mb-4">Name: <s:property value="name" /></p>
                            <p class="font-weight-normal mb-4">Phone No: <s:property value="phoneNo" /></p>
                            <p class="font-weight-normal mb-4">Address: <s:property value="address" /></p>
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-4">Order ID: <s:property value="orderId" /></p>
                            <p class="font-weight-bold mb-4">Service Name: <s:property value="servicetype_type" /></p>
                            <p class="font-weight-normal mb-1">Order Total: <i class="fa fa-inr"></i><s:property value="totalPrice" /></p>
                        </div>
                    </div>
                </s:iterator>
                <hr class="my-5">

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
