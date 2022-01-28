<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
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
        <h2><u>Service Type Report</u></h2>

        <s:if test="noData==false">

            <table>
                <tr>
                    <th>Service Name</th>
                    <th>Type</th>
                    <th>Price</th>
                    <th>Status</th>
                </tr>

                <!-- iterator here-->
                <s:iterator value="serviceTypeList">

                    
                    <tr>
                        <td><s:property value="serviceName" /></td>
                        <td><s:property value="type" /></td>
                        <td><s:property value="price" /></td>
                        <td><s:property value="status" /></td>
                    </tr>

                    
                    <!-- watch primary key hard coding set as serviceName -->
                    <a href="<s:property value="serviceName"/>">
                        <button class="button-update">Update</button>
                    </a>
                    <a href="<s:property value="serviceName"/>">
                        <button class="button-delete">Delete</button>
                    </a>
                </s:iterator>
            </table>
        </s:if>
        <s:else>
            <div style="color: red;">No Data Found.</div>
        </s:else>
        <br>
    </body>
</html>