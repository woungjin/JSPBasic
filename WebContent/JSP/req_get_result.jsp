<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
 	String number = request.getParameter("number");
 	String id = request.getParameter("id");
 	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름 : <%=name %> <br/> 
	번호 : <%=number %><br/>
	ID : <%=id %><br/>
</body>
</html>