<%-- 
    Document   : header.jsp
    Created on : 29 Jan, 2022, 6:11:27 PM
    Author     : AKSHAY
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>
            $(".side-nav-open").click(function (e) {
                $.ajax({
                    type: "GET",
                    url: "viewCart",
                    success: function () {
                        alert("Cart Viewing");
                    }
                });
            });

            $(document).ready(function () {
                setInterval(function () {
                    $("#cartView").load(window.location.href + " #cartView");
                }, 1000);
            });

        </script>
    </head>
    <body>
        <%--<c:out value="${sessionScope.user.getEmailId()}"/>--%>
        <nav id="header-navbar" class="navbar navbar-expand-lg py-4">
            <div class="container">
                <a class="navbar-brand d-flex align-items-center text-white" href="index">
                    <h3 class="font-weight-bolder mb-0">URBAN WARE</h3>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-nav-header" aria-controls="navbar-nav-header" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="lnr lnr-menu"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbar-nav-header">
                    <ul class="navbar-nav ml-auto">


                        <!-- Checking for admin only -->
                        <c:if test="${applicationScope.role == 1}">
                            <li class="nav-item">
                                <a class="nav-link" href='admin' >Admin Panel</a>
                            </li>
                        </c:if>
                        <!-- Checking for admin only ENDS HERE -->

                        <c:if test="${applicationScope.validUser == null}">
                            <li class="nav-item">
                                <a class="nav-link" href="loginuser">Login/Sign up</a>
                            </li>
                        </c:if>
                        <c:if test="${applicationScope.validUser == true}">
                            <li class="nav-item">
                                <a class="nav-link" href='logoutuser'>Logout</a>
                            </li>
                        </c:if>
                        <li class="nav-item">
                            <a class="nav-link" href="contact">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about">About</a>
                        </li>
<!--                        <li class="nav-item">
                            <a id="side-search-open" class="nav-link" href="#">
                                <span class="lnr lnr-magnifier"></span>
                            </a>
                        </li>-->
                        <c:if test="${applicationScope.validUser == true}">
                            <li class="nav-item only-desktop">
                                <a class="nav-link" id="side-nav-open" href="#">
                                    <span class="fa fa-shopping-cart"></span>
                                </a>
                            </li>
                        </c:if>

                    </ul>
                </div>
            </div>
        </nav>

        <!-- Cart-->
        <div id="side-nav" class="sidenav">
            <a href="javascript:void(0)" id="side-nav-close">&times;</a>
            <div class="sidenav-content" id="cartView">
                <p>
                    <c:if test="${sessionScope.cartList == null}">
                        <c:out value="Cart Is Empty"></c:out>
                    </c:if>
                    <c:if test="${sessionScope.cartList != null}">


                    <table class="table-sm">
                        <thead>
                            <tr>
                                <th>Service Type</th>
                                <th>Price</th>
                            </tr>
                        </thead>

                        <!-- iterator here-->
                        <tbody>
                            <c:forEach items="${sessionScope.cartList}" var="item">
                                <tr>
                                    <td><c:out value="${item.getType()}"></c:out></td>
                                    <td><c:out value="${item.getPrice()}"></c:out></td>
                                    </tr>
                            </c:forEach>

                            <tr>
                                <td>Total Amount :  <c:out value="${sessionScope.total}"/></td>
                            </tr>
                        </tbody>
                    </table>
                </c:if>

                </p>
            </div>

            <s:form action="registerOrders" method="post" style="max-width:250px;margin:auto;">
                <s:textfield cssClass = "form-control size: 10px" name="name" placeholder="Name" size="50"/>
                <s:textfield cssClass = "form-control" name="address" placeholder="Address" />
                <s:textfield cssClass = "form-control" name="phoneNo" placeholder="Phone Number" />
                <s:textfield cssClass = "form-control" name="users_emailId" placeholder="Email Address" />
                <s:submit cssClass="w-100 btn btn-lg btn-primary" value="PLACE ORDER">
                </s:submit>
            </s:form>

        </div>
        <!--registerOrders-->

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

    </body>
</html>
