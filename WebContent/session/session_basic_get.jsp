<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		세션에 저장된 값은 브라우저가 종료되기 전까지, 또는 기본 30분이고 어느 페이지에서나 사용가능하다
		.getAttribute("이름")
	*/
	
	String id = (String)session.getAttribute("user_id");
	String name = (String)session.getAttribute("user_name");
	
	// 세션 유지 시간 
	int time = session.getMaxInactiveInterval();
	
	// 특정 세션 삭제
	session.removeAttribute("user_id");
	
	// 모든 세션 삭제(무효화) = clear();
	session.invalidate();
	
	// 
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	세션에 저장된 : <%=id %> <br>
	세션에 저장된 : <%=name %> <br>
	세션 유지시간 : <%=time %> <br> <!-- '초' 단위로 나옴  --> 
</body>
</html>