<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UUID uuid = UUID.randomUUID();
	// 문자열 자르기
	String[]arr = uuid.toString().split("-");
	
	session.setAttribute("arr", arr[1] );
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<form action="auth_ok.jsp" method="post">
	<h2>인증페이지</h2>
		인증 문자 <b><i><del><%=arr[1] %></del></i></b>
		
		인증문자를 입력하세요 : <input type="text" name="code" size="4"> <br>
		<input type="submit" value="확인">;
		
		
	</form>
	
</body>
</html>