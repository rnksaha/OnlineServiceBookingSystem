<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html lang="en">
    <link type="text/css" rel="stylesheet" id="dark-mode-custom-link">
    <link type="text/css" rel="stylesheet" id="dark-mode-general-link">
    <style lang="en" type="text/css" id="dark-mode-custom-style">
    </style>
    <style lang="en" type="text/css" id="dark-mode-native-style">
    </style>
    <!-- to hide arrows -->
    <style>
        @import url("./css/hideArrowNumber.css");
    </style>
    <head><meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="generator" content="Hugo 0.88.1">
        <title>cityRegistration</title>

        <link href="./css/admin-bootstrap.min.css" rel="stylesheet">
        <meta name="theme-color" content="#7952b3">
        <link rel="stylesheet" href="./flawless/main.css"><style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }
            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>
        <!-- Custom styles for this template -->
        <link href="./css/admin-edit.css" rel="stylesheet">
    </head>
    <body class="text-center">
        <main class="form-signin">

            <p>--- logo here ---</p>
            <h1 class="h-5 fw-normal">City Table Edit</h1>
            <!-- action here -->
            <s:form action="" method="post">
                <div class="form-floating">                    
                    <s:textfield cssClass = "form-control" name="pinCode" placeholder="Pin Code" size="50"/>
                </div>

                <div class="form-floating">
                    <s:textfield cssClass = "form-control" name="cityName" placeholder="City Name" />
                </div>

                <br>
                <s:submit cssClass="w-100 btn btn-lg btn-primary" value="Register" />
                <s:submit cssClass="w-100 btn btn-lg btn-primary" onclick="location.href = document.referrer; return false;" value="Back" />
            </s:form>
            <s:if test="ctr>0">
                <span style="color: red;"><s:property value="msg" /></span>
            </s:if>
            <s:else>
                <span style="color: red;"><s:property value="msg" /></span>
            </s:else>
        </main>
    </body>
</html>