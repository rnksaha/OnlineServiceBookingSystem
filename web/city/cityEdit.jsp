<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="org.apache.log4j.Logger" %>
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
        <title>cityEdit</title>

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
        <% Logger log = Logger.getLogger("cityEdit.jsp"); %>
        <main class="form-signin">

            <p>--- logo here ---</p>
            <h1 class="h-5 fw-normal">City Table Edit</h1>
            <br>

            <!-- action here -->
            <form action= method="post">


                <div class="form-floating">
                    <input type="number" class="form-control" name="pinCode" placeholder="Pin Code" value='<s:property value="pinCode"/>'>
                    <label for="floatingInput">Pin Code</label>
                </div>

                <div class="form-floating">
                    <input type="text" class="form-control" name="cityName" placeholder="City Name" value='<s:property value="cityName"/>'>
                    <label for="floatingInput">City Name</label>
                </div>
                <div class="form-floating">
                    <input type="number" class="form-control" name="status" placeholder="Status" value='<s:property value="status"/>'>
                    <label for="floatingInput">Status</label>
                </div>

                <br>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Update</button>
                &nbsp;
                <button class="w-100 btn btn-lg btn-primary" onclick="location.href = document.referrer; return false;">Back</button>
            </form>
            <s:if test="ctr>0">
                <span style="color: red;"><s:property value="msg" /></span>
            </s:if>
            <s:else>
                <span style="color: red;"><s:property value="msg" /></span>
            </s:else>
        </main>
    </body>
</html>