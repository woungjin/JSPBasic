<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키 받아내 사용하기
	// 쿠키는 서버에 요청이 들어올 떄 자동으로 전송됨
	
	Cookie[] cookies = request.getCookies();

	if(cookies != null) { //없는경우 대비 
		
		for(int i=0; i<cookies.length; i++ ) {
			out.println(cookies[i].getName()+"<br>");
			out.println(cookies[i].getValue()+"<br>");
		}
		
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>