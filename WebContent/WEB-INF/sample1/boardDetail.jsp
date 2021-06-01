<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/ch16/lecture"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags/ch16/textbook"%>
<%@ taglib prefix="s1" tagdir="/WEB-INF/tags/sample1"%>

<%
	request.setCharacterEncoding("utf-8");
String index = request.getParameter("index");
%>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
<script>
	$(document).ready(function() {
		$("#button1").click(function() {
			$("#form1").find("input, textarea").removeAttr("readonly");
			$("#submit1").removeAttr("hidden");
		});
	});
</script>
</head>
<body>
	<s1:navbar />
	<div class="container mt-5">

		<div class="row justify-content-center">
			<div class="col-8">
				<h1>글보기</h1>
				<form id="form1"
					action="${pageContext.request.contextPath }/sample1/modify"
					method="post">
					<div class="form-group">
						<label for="input1">제목</label> <input readonly
							value="${board.title }" type="text" name="title"
							class="form-control" id="input1" />
					</div>

					<div class="form-group">
						<label for="input2">작성자</label> <input readonly
							value="${board.writer }" type="text" name="writer"
							class="form-control" id="input2" />
					</div>

					<div class="form-group">
						<label for="textarea">본문</label>
						<textarea readonly class="form-control" name="body" rows="5"
							id="textarea"><c:out value="${board.body }" /></textarea>
					</div>
					<input type="text" value="${param.index }" hidden name="index">
					<button type="button" id="button1" class="btn btn-secondary">수정</button>
					<input hidden type="submit" id="submit1" class="btn btn-primary"
						value="전송" />
					<button class="btn btn-primary" type=button title="삭제">삭제</button>

						
			<!-- 		Button trigger modal
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
			 삭제
			</button> -->
			
				</form>
			</div>
		</div>

	</div>
	
<%-- <s1:delete id="exampleModal" keyboard="ture" /> --%>
</body>
</html>
