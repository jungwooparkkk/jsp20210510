<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>

<% request.setCharacterEncoding("utf-8"); %>

<%
pageContext.setAttribute("pageAttr1", "pageVal1");
request.setAttribute("reqAtrr1", "reqval1");
session.setAttribute("sesAttr1", "sesVal");
application.setAttribute("appAttr1", "appVal");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file ="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>Insert title here</title>
</head>
<body>
<div class="container">
	<%
	out.print(pageContext.getAttribute("pageAttr1"));
	%>
	<br>
	${pageAttr1 }
	<hr>
	<%
	out.print(request.getAttribute("reqAtrr1"));
	%>
	<br>
	<%=request.getAttribute("reqAtrr1") %>
	<br>
	${reqAttr1 }
	
	<hr>
	<%= session.getAttribute("sesAttr1")%>
	${sesAttr1 }
	<hr>
	<%= application.getAttribute("appAttr1") %>
	${appAttr1 }
	
	<hr>
	<%= request.getAttribute("reqAtrr0") %>
	<br>
	${reqAttr0 }
</div>
</body>
</html>