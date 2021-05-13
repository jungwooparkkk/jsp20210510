<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>

<%
	String id = request.getParameter("memberId");
	if(id != null && id.equals("madvirus")){
		response.sendRedirect("index.jsp");
	}else {
%>		



<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>

<%@ include file ="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	잘못된 아이디 입니다.	
</div>
</body>
</html>
<%
	}
%>