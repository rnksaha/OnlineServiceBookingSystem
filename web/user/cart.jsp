<%-- 
    Document   : cart.jsp
    Created on : 30 Jan, 2022, 5:14:19 PM
    Author     : AKSHAY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>

    </head>
    <body>
        <jsp:include page="header.jsp" ></jsp:include>
        <s:form action="registerCity" method="post" style="max-width:300px;margin:auto;">
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
                <tr>
                    <td>Total Amount : <s:property value="total" /></td>
                </tr>
            </table>
            <s:textfield cssClass = "form-control" name="name" placeholder="Name" size="50"/>
            <s:textfield cssClass = "form-control" name="address" placeholder="Address" />
            <s:textfield cssClass = "form-control" name="phoneNo" placeholder="Phone Number" />
            <s:textfield cssClass = "form-control" name="users_emailId" placeholder="Email Address" />
            <s:submit cssClass="w-100 btn btn-lg btn-primary" value="Place Order" />
        </s:form>
    </body>
</html>
