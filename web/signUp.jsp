<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="./css/signUp.css" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript">
            $(function () {
                $("input[name=btnOTP]").click(function () {
                        $("#dvOTP").show();
                        $("#dvSubmit").show();
                });
            });
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Tabs Titles -->

                <!-- Icon -->
                <div class="fadeIn first">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/1/12/User_icon_2.svg" id="icon" alt="User Icon" />
                </div>

                <!-- Login Form -->
                <form action="index.jsp">
                    <input type="text" id="login" class="fadeIn second" name="login" placeholder="Enter Email">
                    <div id="dvOTP" style="display: none">
                        Enter OTP:
                        <input type="text" id="txtPassportNumber" />
                    </div>
                    <input type="button" name="btnOTP" class="fadeIn fourth" value="Request OTP">
                    <div id="dvSubmit" style="display: none">
                    <input type="submit" class="fadeIn fourth" value="Login">
                    </div>
                </form>

            </div>
        </div>
    </body>
</html>
