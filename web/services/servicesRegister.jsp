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
        <% Logger log = Logger.getLogger("servicesRegister.jsp");%>
        <div class="col-lg-9 regcontent-main">
            <div class="content">
                <div class="text-center mt-3">
                    <%--<s:form action="registerService" method="post" style="max-width:300px;margin:auto;">--%>
<!--                        <h1 class="mb-3 font-weight-normal">
                            Services Register
                        </h1>-->
                        <%--<s:textfield cssClass = "form-control" name="serviceName" placeholder="Service Name" size="50"/>--%>
                        <%--<s:textfield cssClass = "form-control" name="pinCode" value="" placeholder="Pin Code" />--%>
                        <%--<s:submit cssClass="w-100 btn btn-lg btn-primary" value="Register" />--%>
                    <%--</s:form>--%>
                    <form action="registerService" method="post" style="max-width:300px;margin:auto;">
                        <h1 class="mb-3 font-weight-normal">
                            Services Register
                        </h1>
                        <input type="text" class = "form-control" name="serviceName" placeholder="Service Name" size="50"/>
                        <input type="number" min="100000" max="999999" onkeyup="if(this.value<0){this.value= this.value * -1}" class = "form-control" name="pinCode" value="" placeholder="Pin Code" />
                        <input type="submit" class="w-100 btn btn-lg btn-primary" value="Register" />
                    </form>
                    <s:if test="ctr>0">
                        <span style="color: red;"><s:property value="msg" /></span>
                    </s:if>
                    <s:else>
                        <span style="color: red;"><s:property value="msg" /></span>
                    </s:else>
                    <br>
                </div>
            </div>
        </div>
    </body>
</html>