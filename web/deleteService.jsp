<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Delete Service</title>
</head>
<body>
    <%--<jsp:include page="admin.jsp"></jsp:include>--%>
	<h2>Service Deleted</h2>
	<span><s:property value="msg" /></span><br><br>
	<a href="reportService">
		<button type="button">See Updated List of Services</button>
	</a>
</body>
</html>