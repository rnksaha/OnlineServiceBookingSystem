<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<script>
    function getServices() {
        //var cityName = document.getElementByName("selectedCity").value;
        //alert($("#selectedCity").val());
        $.ajax({
            type: "GET",
            url: "showService",
            //data: {'cityName': $("#selectedCity").text()},
//            data: "cityName=" + $("#selectedCity").val(),

        });
    }


</script>
<select class="form-select" onchange="getServices()" aria-label="Default select example">
    <option selected>Select Pin Code</option>
    <s:iterator value="pinCodeList">
        <option value="pinCode"><s:property value="pinCode" /></option>
    </s:iterator>
</select>

<%--<jsp:include page="service.jsp" ></jsp:include>--%>


