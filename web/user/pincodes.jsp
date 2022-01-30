<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>


<select class="form-select" aria-label="Default select example">
    <option selected>Select Pin Code</option>
    <s:iterator value="pinCodeList">
        <option value="pinCode"><s:property value="pinCode" /></option>
    </s:iterator>
</select>

<%--<jsp:include page="service.jsp" ></jsp:include>--%>


