<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="org.apache.log4j.Logger" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="admin.jsp"></jsp:include>
            <style>
                table {
                    font-family: arial, sans-serif;
                    border-collapse: collapse;
                    width: 100%;
                }

                td, th {
                    border: 1px solid #dddddd;
                    text-align: left;
                    padding: 8px;
                }

                tr:nth-child(even) {
                    background-color: #dddddd;
                }

                h2{
                    text-align: center;
                }
            </style>
        </head>
        <body>
            <% Logger log = Logger.getLogger("orderReport.jsp"); %>
            <div class="col-lg-9 content-main">
                <div class="content">
                    <h2><u>Order Report</u></h2>

                <s:if test="noData==false">

                    <table>
                        <tr>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Service Name</th>
                            <!--<th>Type</th>-->
                            <th>Address</th>
                            <th>Phone No</th>
                            <th>Total Price</th>
                        </tr>

                        <!-- iterator here-->
                        <s:iterator value="orderList">


                            <tr>
                                <td><s:property value="name" /></td>
                                <td><s:property value="users_emailId" /></td>
                                <td><s:property value="servicetype_type" /></td>
                                <!--<td><s:property value="type" /></td>-->
                                <td><s:property value="address" /></td>
                                <td><s:property value="phoneNo" /></td>
                                <td><s:property value="totalPrice" /></td>
                            </tr>


                            <!-- watch primary key hard coding set as email ID -->
<!--                            <a href="<s:property value="emailId"/>">
                                <button class="button-update">Update</button>
                            </a>
                            <a href="<s:property value="emailId"/>">
                                <button class="button-delete">Delete</button>
                            </a>-->
                        </s:iterator>
                    </table>
                </s:if>
                <s:else>
                    <div style="color: red;">No Data Found.</div>
                </s:else>
                <br>
            </div>
        </div>
    </body>
</html>