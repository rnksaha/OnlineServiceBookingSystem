<%@page import="org.apache.jasper.tagplugins.jstl.core.Redirect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <%
        
    %>
    <c:if test="${sessionScope.role == 1}">
    </c:if>
    <c:if test="${sessionScope.validUser == null}">
        <c:redirect url ="/signUp.jsp"></c:redirect>
    </c:if>
    <c:if test="${sessionScope.role != 1}">
        <c:redirect url ="/signUp.jsp"></c:redirect>
    </c:if>
    <head>
        <title>Admin Dashboard Design</title>
        <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="./css/style.css">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript">
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
            $(document).ready(function () {
                $("#nav a").click(function (e) {
                    e.preventDefault();
                    $(".toggle").hide();
                    var toShow = $(this).attr('href');
                    $(toShow).show();
                });
            });
        </script>
    </head>


    <body>

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
                            <i class="far fa-envelope"></i>
                            <i class="far fa-bell"></i>
                            <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s46">
                            <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                Admin
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Log Out</a>
                            </div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="sidebar">
                    <ul class="main-menu">
                        <li class="active"><a href="#"><i class="fas fa-tasks"></i> Dashboard</a></li>
                        <div id="nav">
                            <li class="main-sub-menu"><a href="#"><i class="fas fa-home"></i> Home <i class="fas fa-angle-right" ></i></a>
                                <ul class="sub-menu">
                                    <li><a href="#p">sub home</a></li>
                                    <li><a href="#"> sub home</a></li>
                                </ul>
                            </li>
                            <li class="main-sub-menu"><a href="#"><i class="fas fa-images"></i> Reports<i class="fas fa-angle-right"></i></a>
                                <ul class="sub-menu">
                                    <li><a href="reportUser"> Users</a></li>
                                    <li><a href="reportOrders"> Orders</a></li>
                                    <li class="sub-active"><a href="reportCity"> Cities</a></li>
                                    <li><a href="reportService"> Services</a></li>
                                    <li><a href="reportServiceType"> Services Types</a></li>
                                </ul>
                            </li>
                            <li class="main-sub-menu"><a href="#"><i class="fas fa-images"></i> Register<i class="fas fa-angle-right"></i></a>
                                <ul class="sub-menu">
                                    <li><a href="#"> Users</a></li>
                                    <li class="sub-active"><a href="cityRegister.jsp"> Cities</a></li>
                                    <li><a href="servicesRegister.jsp"> Services</a></li>
                                    <li><a href="serviceTypeRegister.jsp"> Services Types</a></li>
                                </ul>
                            </li>
                            <li class="main-sub-menu"><a href="#"><i class="fas fa-phone"></i> Contact <i class="fas fa-angle-right"></i></a>
                                <ul class="sub-menu">
                                    <li><a href="#"> sub Contact</a></li>
                                    <li><a href="#"> sub Contact</a></li>
                                </ul>
                            </li>
                        </div>
                </div>
                </ul>
            </div>
            <div class="col-lg-9 content-main">
                <div id="content1" class="toggle" style="display:none"><jsp:include page="userReport.jsp" /></div>
                <div id="content2" class="toggle" style="display:none"><jsp:include page="cityReport.jsp" /></div>
                <div id="content3" class="toggle" style="display:none"><jsp:include page="servicesReport.jsp" /></div>
                <div id="content4" class="toggle" style="display:none"><jsp:include page="serviceTypeReport.jsp" /></div>
            </div>

        </div>

    </body>
</html>
