<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Disable Pin</title>
</head>
<body>
    <%--<jsp:include page="admin.jsp"></jsp:include>--%>
	<h2>User Deleted</h2>
	<span><s:property value="msg" /></span><br><br>
	<a href="reportUser">
		<button type="button">See Updated List of Users</button>
	</a>
</body>
</html>
