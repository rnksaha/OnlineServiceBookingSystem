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
        <h2><u>City Report</u></h2>

        <s:if test="noData==false">

            <table>
                <tr>
                    <th>Pin Code</th>
                    <th>City Name</th>
                    <th>Status</th>
                </tr>

                <!-- iterator here-->
                <s:iterator value="">

                    <tr>
                        <td><s:property value="pinCode" /></td>
                        <td><s:property value="cityName" /></td>
                        <td><s:property value="status" /></td>
                    </tr>

                    <a href="<s:property value="pinCode"/>">
                        <button class="button-update">Update</button>
                    </a>
                    <a href="<s:property value="pinCode"/>">
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