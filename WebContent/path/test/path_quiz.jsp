<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="../../request/req_video.jsp">req_video (상대경로)</a> <br>
	<a href="/JSPBasic/request/req_video.jsp">req_video (절대경로)</a> <br>
	
	<img src="/JSPBasic/request/img/java.png"/ width="100px" height="100px"> <br>
	
	<a href="../../banana1">testServlet.java (상대)</a> <br>
	<a href="/JSPBasic/banana1"> testServlet.jsp (절대) </a> <br>
	
	
	<% out.println("<h1>출력~ </h1>"); %>
	
	
</body>
</html>