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
            <% Logger log = Logger.getLogger("serviceTypeEdit.jsp"); %>
            <div class="col-lg-9 content-main">
                <div class="content">
                    <main class="form-signin">

                        <h1 class="h-5 fw-normal">Service Type Table Edit</h1>
                        <br>

                        <!-- action here -->
                        <form action="updateServiceType" method="post">


                            <div class="form-floating">
                                <label for="floatingInput">Type</label>
                                <input type="text" class="form-control" name="type" placeholder="Type" value='<s:property value="type"/>' readonly>
                        </div>
                        <div class="form-floating">
                            <label for="floatingInput">Price</label>
                            <input type="number" min="1" onkeyup="if(this.value<0){this.value= this.value * -1}" class="form-control" name="price" placeholder="Price" value='<s:property value="price"/>'>
                        </div>

                        <div class="form-floating">
                            <label for="floatingInput">Status</label>
                            <input type="number" min="0" max="1" onkeyup="if(this.value<0){this.value= this.value * -1}" class="form-control" name="status" placeholder="Status" value='<s:property value="status"/>'>
                        </div>

                        <div class="form-floating">
                            <label for="floatingInput">Service Id</label>
                            <input type="number" min="0" onkeyup="if(this.value<0){this.value= this.value * -1}" class="form-control" name="services_serviceId" placeholder="Service Id" value='<s:property value="services_serviceId"/>' readonly>
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