<%-- 
    Document   : feedbackReport
    Created on : 30 Jan, 2022, 12:54:52 PM
    Author     : rounak
--%>

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
            <% Logger log = Logger.getLogger("feedbackReport.jsp"); %>
            <div class="col-lg-9 content-main">
                <div class="content">
                    <h2><u>Feedback Report</u></h2>

                <s:if test="noData==false">

                    <table>
                        <tr>
                            <th>Feedback Id</th>
                            <th>Feedback</th>
                            <th>User Email</th>
                        </tr>

                        <!-- iterator here-->
                        <s:iterator value="feedbackList">


                            <tr>
                                <td><s:property value="feedbackId" /></td>
                                <td><p><s:property value="feedback" /></p></td>
                                <td><s:property value="users_emalId" /></td>
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
