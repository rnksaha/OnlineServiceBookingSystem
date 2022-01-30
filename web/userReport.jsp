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
                                <td><s:property value="roleId" /></td>
                                <td><s:property value="status" /></td>
                                <td>
                                    <a href="deleteUser.action?emailId=<s:property value="emailId"/>">
                                        <button class="button-delete">Disable User</button>
                                    </a>
                                    <a href="enableUser.action?emailId=<s:property value="emailId"/>">
                                        <button class="button-delete">Enable User</button>
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