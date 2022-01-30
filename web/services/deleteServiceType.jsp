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
                    <h2>
                    <span><s:property value="msg" /></span><br><br>
                    </h2>
                <a href="reportServiceType">
                    <button type="button">See Updated List of Service Types</button>
                </a>
            </div>
        </div>
    </body>
</html>