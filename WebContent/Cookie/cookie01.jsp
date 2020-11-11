<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		1. Date클래스를 이용해서 xxxx년xx월xx일 형태로 날짜를 생성
		쿠키이름 = show
	*/
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	String sysdate = sdf.format(date);
	
	Cookie cookie3 = new Cookie("show",sysdate);
	cookie3.setMaxAge(10);
	
	response.addCookie(cookie3);
%>

<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="cookie2.jsp">cookie2로 날짜데이터(쿠키) 전송</a>


</body>
</html>