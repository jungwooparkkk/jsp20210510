<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file ="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>attribute 꺼내보기.</h1>
	<h3> <%= request.getAttribute("req-attr1") %></h3>
	<h3> <%= session.getAttribute("session-attr1") %></h3>
	<h3> <%= application.getAttribute("app-attr1") %></h3>
</div>
</body>
</html>