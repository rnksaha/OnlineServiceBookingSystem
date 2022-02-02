<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="org.apache.log4j.Logger" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/admin/admin.jsp"></jsp:include>
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
            <% Logger log = Logger.getLogger("cityReport.jsp"); %>
            <div class="col-lg-9 content-main">
                <div class="content">
                    <h2><u>City Report</u></h2>

                <s:if test="noData==false">

                    <table>
                        <thead>
                            <tr>
                                <th>City Name</th>
                                <th>Pin Code</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>

                        <!-- iterator here-->
                        <s:iterator value="cityList">

                            <tr>
                                <td><s:property value="cityName" /></td>
                                <td><s:property value="pinCode" /></td>
                                <s:set var="stat" value="status"/>
                                <td>
                                    <%--<s:property value="status" />--%>
                                    <s:if test="#stat==0">
                                        Inactive
                                    </s:if>
                                    <s:if test="#stat==1">
                                        Active
                                    </s:if>
                                </td>
                                <td>
                                    <a href="disablePin.action?pinCode=<s:property value="pinCode"/>">
                                        <button class="btn btn-outline-danger">Disable Pin</button>
                                    </a>
                                    <a href="enablePin.action?pinCode=<s:property value="pinCode"/>">
                                        <button class="btn btn-outline-primary">Enable Pin</button>
                                    </a>
                                </td>
                            </tr>

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
