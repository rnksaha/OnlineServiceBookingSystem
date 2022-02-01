<%-- 
    Document   : cart.jsp
    Created on : 30 Jan, 2022, 5:14:19 PM
    Author     : AKSHAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>

    </head>
    <body>
        <%--<jsp:include page="header.jsp" ></jsp:include>--%>
        <table>
            <thead>
                <tr>
                    <th>Service Type</th>
                    <th>Price</th>
                </tr>
            </thead>

            <!-- iterator here-->
            <s:iterator value="cartList">

                <tr>
                    <td><s:property value="type" /></td>
                <td><s:property value="price" /></td>
                </tr>

            </s:iterator>
        </table>
    </body>
</html>
