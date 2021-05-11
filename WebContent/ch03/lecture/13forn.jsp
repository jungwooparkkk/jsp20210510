<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	
	<form>
	<input type="checkbox" name="fruit" value="100"> 사과 <br>
	<input type="checkbox" name="fruit" value="150"> 바나나 <br>
	<input type="checkbox" name="fruit" value="200"> 키위 <br>
	<input type="checkbox" name="fruit" value="300"> 망고 <br>
	<input type="checkbox" name="fruit" value="500"> 수박 <br>
	<input type="checkbox" name="fruit" value="700"> 포도 <br>
	
	<input type="submit" value="합계">
	</form>
	</div>
	
	<hr>
	<div class="container">
		합계 : 
		<%
		String[] fruits = request.getParameterValues("fruit");
	
		int sum =0;
		if(fruits != null && fruits.length >0 ){
			for(String value : fruits){
				sum += Integer.valueOf(value);
			}
		}
		
		%>
		
		<%= sum %>
	</div>
	
	
</body>
</html>