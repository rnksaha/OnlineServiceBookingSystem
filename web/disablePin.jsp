<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="admin.jsp"></jsp:include>
            <style>
            </style>

        </head>
        <body>
            <div class="col-lg-9 regcontent-main">
                <div class="content">
                    <h2>Pin Disabled</h2>
                    <span><s:property value="msg" /></span><br><br>
                <a href="reportCity">
                    <button type="button">Report City</button>
                </a>
            </div>
        </div>
    </body>
</html>