<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/admin/admin.jsp"></jsp:include>
        <style>
        </style>
        
    </head>
    <body>
        <div class="col-lg-9 regcontent-main">
            <div class="content">
                <div class="text-center mt-3">
                <s:form action="registerService" method="post" style="max-width:300px;margin:auto;">
                    <h1 class="mb-3 font-weight-normal">
                        Services Register
                    </h1>
                    <s:textfield cssClass = "form-control" name="serviceName" placeholder="Service Name" size="50"/>
                    <s:textfield cssClass = "form-control" name="pinCode" placeholder="Pin Code" />
                    <s:submit cssClass="w-100 btn btn-lg btn-primary" value="Register" />
                </s:form>
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