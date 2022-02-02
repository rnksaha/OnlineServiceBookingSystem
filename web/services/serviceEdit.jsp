<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="org.apache.log4j.Logger" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/admin/admin.jsp"></jsp:include>
            <style>
            </style>

        </head>
        <body>
            <% Logger log = Logger.getLogger("serviceEdit.jsp"); %>
            <div class="col-lg-9 content-main">
                <div class="content">
                    <main class="form-signin">

                        <h1 class="h-5 fw-normal">Service Table Edit</h1>
                        <br>

                        <!-- action here -->
                        <form action="updateService" method="post">

                            <div class="form-floating">
                                <label for="floatingInput">Service Id</label>
                                <input type="number" min="0" onkeyup="if(this.value<0){this.value= this.value * -1}" class="form-control" name="serviceId" placeholder="Service Name" value='<s:property value="serviceId"/>' readonly>
                        </div>

                        <div class="form-floating">
                            <label for="floatingInput">Service Name</label>
                            <input type="text" class="form-control" name="serviceName" placeholder="Service Name" value='<s:property value="serviceName"/>'>
                        </div>

                        <div class="form-floating">
                            <label for="floatingInput">Pin Code</label>
                            <input type="number" min="100000" max="999999" onkeyup="if(this.value<0){this.value= this.value * -1}" class="form-control" name="pinCode" placeholder="Pin Code" value='<s:property value="pinCode"/>'>
                        </div>
                        <div class="form-floating">
                            <label for="floatingInput">Status</label>
                            <input type="number" min="0" max="1" onkeyup="if(this.value<0){this.value= this.value * -1}" class="form-control" name="status" placeholder="Status" value='<s:property value="status"/>'>
                        </div>

                        <br>
                        <button name="submitType" class="w-100 btn btn-lg btn-primary" type="submit">Update</button>
                        &nbsp;
                        <button class="w-100 btn btn-lg btn-primary" onclick="location.href = document.referrer; return false;">Back</button>
                    </form>
                    <s:if test="ctr>0">
                        <span style="color: red;"><s:property value="msg" /></span>
                    </s:if>
                    <s:else>
                        <span style="color: red;"><s:property value="msg" /></span>
                    </s:else>
                </main>
            </div>
        </div>
    </body>
</html>