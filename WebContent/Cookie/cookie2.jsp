<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String name = null;
	boolean flag = false;
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("show")) {
				name = cookies[i].getValue();
				flag = true;
			}
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

	<% if(!flag) { %>
	<h2>쿠키가 없습니다</h2>
	<% } else {%>
		<%=name %>
	<% } %>
</body>
</html>