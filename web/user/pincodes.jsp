<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>


<select class="form-select" aria-label="Default select example">
    <option selected>Select Pin Code</option>
    <s:iterator value="pinCodeList">
        <option value="pinCode"><s:property value="pinCode" /></option>
    </s:iterator>
</select>
<c:redirect url="service" />
<jsp:include page="service.jsp" ></jsp:include>--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script>
    function getPage() {
        $.ajax({
            type: "GET",
            url: "service",
            data: "pinCode=" + $("#selectedPin").val(),
            success: function (result) {
                window.location.href = "service";
            },
            error: function (xhr, errmsg) {
                alert("No values found");
            }
        });
    }
</script>
<select onchange="getPage()" id="selectedPin" class="form-select" aria-label="Default select example">
    <option selected>Select Pin Code</option>
    <s:iterator value="pinCodeList">
        <option value="pinCode"><s:property value="pinCode" /></option>
    </s:iterator>
</select>