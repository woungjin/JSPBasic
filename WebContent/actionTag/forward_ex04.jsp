<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String name = (String)request.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	서블넷 forward로 넘어온 값 <%=id %> <br>
	2번 페이지에서 넘겨준 값 :  <%=name %> <br>
	
</body>
</html>