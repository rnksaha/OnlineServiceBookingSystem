<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Delete Service Type</title>
</head>
<body>
    <%--<jsp:include page="admin.jsp"></jsp:include>--%>
	<h2>Service Type Deleted</h2>
	<span><s:property value="msg" /></span><br><br>
	<a href="reportServiceType">
		<button type="button">See Updated List of Service Types</button>
	</a>
</body>
</html>