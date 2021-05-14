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
	height:25px;
	text-align: center;
}

caption {
	margin-bottom:10px;
	font-size: 15px;
}

</style>

<body>
<div class="container">

<table>
	<h1> <%= y %>년 <%= m+1 %>월</h1>
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