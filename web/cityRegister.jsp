<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            @import url("./css/hideArrowNumber.css");
            .context {
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
                min-height: 80vh;
            }
        </style>
        <title>City Register</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <div class="context">
            <div class="text-center mt-3">
                <s:form action="registerCity" method="post" style="max-width:300px;margin:auto;">
                    <h1 class="mb-3 font-weight-normal">
                        City Register
                    </h1>
                    <s:textfield cssClass = "form-control" name="pinCode" placeholder="Pin Code" size="50"/>
                    <s:textfield cssClass = "form-control" name="cityName" placeholder="City Name" />
                    <s:submit cssClass="w-100 btn btn-lg btn-primary" value="Register" />
                </s:form>
                <s:if test="ctr>0">
                    <span style="color: red;"><s:property value="msg" /></span>
                </s:if>
                <s:else>
                    <span style="color: red;"><s:property value="msg" /></span>
                </s:else>
            </div>
        </div>
    </body>
</html>