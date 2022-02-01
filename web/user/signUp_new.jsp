<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>


<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
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

            $('#otp').resetForm();

        </script>

        <title>Sign Up</title>

        <style>
            @-webkit-keyframes fadein {
                from { opacity: 0; }
                to   { opacity: 1; }
            }

            .signUp {
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
                min-height: 100vh;
            }
            .sign {
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
            }
            .btn-primary, .btn-primary:hover, .btn-primary:active, .btn-primary:visited {
                background-color: #433782 !important;
            }
        </style>
    </head>
    <body>
        <!-- Optional JavaScript; choose one of the two! -->

        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <!-- Option 2: Separate Popper and Bootstrap JS -->
        <!--
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        -->


        <div class="signUp text-center">
            <s:form action="loginuser" cssClass="max-width:300px;margin:auto;">
                <h1 class="mb-3 font-weight-normal">
                    Sign In
                </h1>
                <s:textfield id="emailId" cssClass = "form-control"   value="emailId" placeholder="Email" size="50"/>
                <s:textfield id="otp" cssClass = "form-control"  name="otp" placeholder="OTP" />
                <s:submit cssClass="w-100 btn btn-lg btn-primary"  value="Login"/>
                <s:submit cssClass="w-100 btn btn-lg btn-primary"  name="btnOtp" value="GET OTP"/>
            </s:form>
        </div>       
    </body>
</html>
