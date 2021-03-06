<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>

<% request.setCharacterEncoding("utf-8"); %>

<%
Calendar cal = Calendar.getInstance();
int y = cal.get(Calendar.YEAR);
int m = cal.get(Calendar.MARCH);

cal.set(y,m,1);
int dayOfweek = cal.get(Calendar.DAY_OF_WEEK); // 1~7(일~토)
int lastday = cal.getActualMaximum(Calendar.DATE);
%>
<!DOCTYPE html>
<html>
<head>

<%@ include file ="/WEB-INF/subModules/bootstrapHeader.jsp" %>

<title>달력 만들기</title>
</head>

<style>

.main{
	font-size:50px;
	text-align: center;
	border:1px solid #cccccc;
}
body{
	font-size:9pt;
	color:#555555;
}
table {
	border-collapse:collapse;
}
th, td {
	border:1px solid #cccccc;
	width:100px;
	height:50px;
	text-align: center;
}

svg{
	width:100px;
	height:50px;
	text-align: center;
}

</style>
<body>
<div class="container">
<table>

	<div class="main"> 
<svg button="btn-submit" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
</svg>
	
	<%= y %>년 <%= m+1 %>월
	
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
</svg>
	
	</div>
	<tr>
		<th>일</th>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th>토</th>
	</tr>
	<tr>
	
		<%
		int count = 0;
		
		for(int s=1; s<dayOfweek; s++){
			out.print("<td></td>");
			count++;
		}
		
		for(int d=1; d <= lastday; d++){
			count++;
		%>
			<td><%= d %></td>
		<%
			if(count%7 == 0){
				out.print("</tr><tr>");
			}
		}
		%>
	</tr>
	

</table>
	
</div>
</body>
</html>