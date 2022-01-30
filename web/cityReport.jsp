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
                                <td><s:property value="status" /></td>
                                <td>
                                    <a href="disablePin.action?pinCode=<s:property value="pinCode"/>">
                                        <button class="button-delete">Disable Pin</button>
                                    </a>
                                    <a href="enablePin.action?pinCode=<s:property value="pinCode"/>">
                                        <button class="button-delete">Enable Pin</button>
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