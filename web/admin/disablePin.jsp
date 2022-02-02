<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="org.apache.log4j.Logger" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="admin.jsp"></jsp:include>
            <style>
            </style>

        </head>
        <body>
            <% Logger log = Logger.getLogger("disablePin.jsp"); %>
            <div class="col-lg-9 regcontent-main">
                <div class="content">
                    <h2>
                    <span><s:property value="msg" /></span><br><br>
                    </h2>
                <a href="reportCity">
                    <button type="button">See Updated List of Cities</button>
                </a>
            </div>
        </div>
    </body>
</html>