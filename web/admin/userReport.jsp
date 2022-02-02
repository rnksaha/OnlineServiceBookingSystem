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
            <% Logger log = Logger.getLogger("userReport.jsp"); %>
            <div class="col-lg-9 content-main">
                <div class="content">
                    <h2><u>User Report</u></h2>

                <s:if test="noData==false">

                    <table>
                        <thead>
                            <tr>
                                <th>User Emails</th>
                                <th>User Role Id</th>
                                <th>User Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>

                        <!-- iterator here-->
                        <s:iterator value="userList">
                            <tr>
                                <td><s:property value="emailId" /></td>
                                <s:set var="role" value="roleId"/>
                                <td>
                                    <%--<s:property value="status" />--%>
                                    <s:if test="#role==1">
                                        Admin
                                    </s:if>
                                    <s:if test="#role==2">
                                        Client
                                    </s:if>
                                </td>
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
                                    <a href="deleteUser.action?emailId=<s:property value="emailId"/>">
                                        <button class="btn btn-outline-danger">Disable User</button>
                                    </a>
                                    <a href="enableUser.action?emailId=<s:property value="emailId"/>">
                                        <button class="btn btn-outline-primary">Enable User</button>
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
