<%@page import="util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>

<% request.setCharacterEncoding("utf-8"); %>
<%
	Cookies Cookies = new Cookies(request);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file ="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	name 쿠키 = <%= Cookies.getValue("name") %><br>
	<% if(Cookies.exists("id")) { %> 
	id 쿠키 = <%=Cookies.getValue("id") %><br>
	<% } %>
</div>
</body>
</html>