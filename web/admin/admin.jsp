<%@page import="org.apache.jasper.tagplugins.jstl.core.Redirect"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="org.apache.log4j.Logger" %>
<!DOCTYPE html>
<html>
    <c:if test="${applicationScope.role != 1}">
        <c:redirect url ="signUp"></c:redirect>
    </c:if>
    <head>
        <title>Admin Dashboard Design</title>
        <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="./css/style.css">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
        </script>
        <script>
            $(document).ready(function () {
                $(".main-sub-menu").on("click", function () {
                    $(".sub-menu").css({"display": "none"});
                    $('.main-sub-menu').find(".fa-angle-right").css({"transform": "rotate(0deg)"});
                    $(this).find("ul").slideToggle();
                    $(".main-menu .main-sub-menu").removeClass("active");
                    $(this).addClass("active");
                    $(this).find(".fa-angle-right").css({"transform": "rotate(90deg)"});
                });
            });
        </script>
    </head>


    <body>
        <% Logger log = Logger.getLogger("admin.jsp"); %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-sm-12 col-12 header-part">
                    <div class="row">
                        <div class="text-center logo-part">
                            <h1>Admin Board</h1>
                        </div>
                        <div class="header-center-part text-center">
                        </div>
                        <div class="header-right text-right">
                            <!--                            <i class="far fa-envelope"></i>
                                                        <i class="far fa-bell"></i>-->
                            <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s46">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                Admin
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="logoutuser">Log Out</a>
                            </div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="sidebar">
                    <ul class="main-menu">
                        <!--<li class="active"><a href="admin"><i class="fas fa-tasks"></i> Dashboard</a></li>-->
                        <li class="main-sub-menu"><a href="index"><i class="fas fa-home"></i> Home </a>

                        </li>
                        <li class="main-sub-menu"><a href="#"><i class="fas fa-images"></i> Reports<i class="fas fa-angle-right"></i></a>
                            <ul class="sub-menu">
                                <li class="sub-active"><a href="reportUser"> Users</a></li>
                                <li class="sub-active"><a href="reportOrders"> Orders</a></li>
                                <li class="sub-active"><a href="reportCity"> Cities</a></li>
                                <li class="sub-active"><a href="reportService"> Services</a></li>
                                <li class="sub-active"><a href="reportServiceType"> Service Types</a></li>
                            </ul>
                        </li>
                        <li class="main-sub-menu"><a href="#"><i class="fas fa-images"></i> Register<i class="fas fa-angle-right"></i></a>
                            <ul class="sub-menu">
                                <!--<li><a href="#"> Admin</a></li>-->
                                <li class="sub-active"><a href="cityRegister"> Cities</a></li>
                                <li class="sub-active"><a href="servicesRegister"> Services</a></li>
                                <li class="sub-active"><a href="serviceTypeRegister"> Services Types</a></li>
                            </ul>
                        </li>
                        <li class="main-sub-menu"><a href="reportFeedback"><i class="fas fa-quote-left"></i> Feedback </a>

                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
