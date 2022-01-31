<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
            <div class="col-lg-9 content-main">
                <div class="content">
                    <h2><u>Services Report</u></h2>

                <s:if test="noData==false">

                    <table>
                        <tr>
                            <th>Service Id</th>
                            <th>Service Name</th>
                            <th>Pin Code</th>
                            <th>Status</th>
                            <th>Actions</th>
                        </tr>

                        <!-- iterator here-->
                        <s:iterator value="serviceList">


                            <tr>
                                <td><s:property value="serviceId" /></td>
                                <td><s:property value="serviceName" /></td>
                                <td><s:property value="pinCode" /></td>
                                <td><s:property value="status" /></td>


                                <td>
                                    <!-- watch primary key hard coding set as serviceName -->
                                    <a href="updateService.action?submitType=updateServicedata&serviceId=<s:property value="serviceId"/>">
                                        <button class="btn btn-outline-primary">Update</button>
                                    </a>
                                    <a href="deleteService.action?serviceId=<s:property value="serviceId"/>">
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