<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
</script>
<script>
//    function getServices() {
//        //var cityName = document.getElementByName("selectedCity").value;
//        //alert($("#selectedCity").val());
//        $.ajax({
//            type: "GET",
//            url: "showService",
//            //data: {'cityName': $("#selectedCity").text()},
////            data: "cityName=" + $("#selectedCity").val(),
//
//        });
//    }

    function getServices() {
        //var cityName = document.getElementByName("selectedCity").value;
        //alert($("#selectedCity").val());
        $.ajax({
            type: "GET",
            url: "service",
            //data: {'cityName': $("#selectedCity").text()},
            data: "pinCode=" + $("#selectedPin").val(),
            success: function (result) {
                window.location.href = "service";
            },
            error: function (xhr, errmsg) {
                alert("No values found..!!");
            }
        });
    }


</script>


</script>
<select class="form-select" style="width: 400px" id="selectedPin" onchange="getServices()" aria-label="Default select example">
    <option selected>Select Pin Code</option>
    <s:iterator value="pinCodeList">
        <option value="pinCode"><s:property value="pinCode" /></option>
    </s:iterator>
</select>

<%--<jsp:include page="service.jsp" ></jsp:include>--%>


