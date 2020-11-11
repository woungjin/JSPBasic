<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("id") == null ) {
		response.sendRedirect("session_login_form.jsp");
	}
	String id =(String) session.getAttribute("id");
	String nick =(String) session.getAttribute("nick"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2><%=id %>(<%=nick %>)님 </h2>환영합니다.
	<a href="session_logout.jsp">로그아웃</a>
</body>
</html>