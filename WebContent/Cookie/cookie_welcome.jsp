<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Cookie[] cookie = request.getCookies();
	String name = null;
	if (cookie != null) {
		for (int i = 0; i < cookie.length; i++) {
			if (cookie[i].getName().equals("user_id")) {
					name = cookie[i].getValue();
			}
		}
	}
	
	if(name == null) {
		response.sendRedirect("cookie_login_form.jsp");
	}
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name%>님 환영합니다;
</body>
</html>