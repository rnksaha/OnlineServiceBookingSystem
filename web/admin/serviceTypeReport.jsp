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
            <% Logger log = Logger.getLogger("serviceTypeReport.jsp"); %>
            <div class="col-lg-9 content-main">
                <div class="content">
                    <h2><u>Service Type Report</u></h2>

                <s:if test="noData==false">

                    <table>
                        <tr>
                            <th>Type</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th>Service Id</th>
                            <th>Actions</th>
                        </tr>

                        <!-- iterator here-->
                        <s:iterator value="serviceTypeList">


                            <tr>
                                <td><s:property value="type" /></td>
                                <td><s:property value="price" /></td>
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
                                <td><s:property value="services_serviceId" /></td>



                                <!-- watch primary key hard coding set as serviceName -->
                                <td>
                                    <a href="updateServiceType.action?submitType=updateServiceTypedata&type=<s:property value="type"/>">
                                        <button class="btn btn-outline-primary">Update</button>
                                    </a>
                                    <a href="deleteServiceType.action?type=<s:property value="type"/>">
                                        <button class="btn btn-outline-danger">Delete</button>
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
