<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>path_ex01</h2>
	<!-- 
	경로의 개념
	절대 경로 : 프로젝트의 전체경로 (IP주소, port제외, /컨택스트경로 ...
	상대 경로 : 내 위치를 기준으로 찾아감 
	 -->
	 
	 <a href="path_ex02.jsp">path_ex02로(상대경로)</a>
	 <a href="/JSPBasic/path/path_ex02.jsp">path_ex02로(절대경로)</a>
	 <a href="<%=request.getContextPath()%>">path_ex02(절대경로)</a>
	 
</body> 
</html>