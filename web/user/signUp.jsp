<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="org.apache.log4j.Logger" %>
<!DOCTYPE html>
<html>
    <%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Cache-Control", "no-store");
        response.setDateHeader("Expires", 0);
        response.setHeader("Pragma", "no-cache");
    %>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="./css/signUp.css" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
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

        <script type="text/javascript">
            $(function () {
                $("input[name=btnOtp]").click(function () {
                    $.ajax({
                        type: "POST",
                        url: "otprequest",
                        data: {'emailId': $("#emailId").val()},
                        success: function (result) {
                            alert("OTP Sent");
                        },
                        error: function (xhr, errmsg) {
                            alert("Empty Field");
                        }
                    });
                    $("#dvOTP").show();
                    $("#dvSubmit").show();
                });
            });
        </script>
        <style>
            @font-face {
                font-family: myFirstFont;
                src: url(./font/Montserrat-Light-Alt1.woff2);
            }
            h3 {
                font-family: myFirstFont;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <% Logger log = Logger.getLogger("signUp.jsp"); %>
        <div class="jumbotron jumbotron-single d-flex align-items-center" style="background-image: url()">
            <div class="container text-center">
                <h1 class="display-1 mb-4">URBAN<br>WARE</h1>
            </div>
            <div class="wrapper fadeInDown">
                <div id="formContent">                   

                    <s:form action="loginuser" cssClass="">                        
                        <s:textfield id="emailId" placeholder="Enter Email" value="emailId"  name="emailId" />
                        <s:textfield id="otp" value="otp" placeholder="Enter OTP" name="otp" />
                        <input type="button" id="btnOtp"  name="btnOtp" value="GET OTP">
                        <s:submit value="Login"/>
                    </s:form>
                </div>
            </div>
        </div>
    </body>
</html>
