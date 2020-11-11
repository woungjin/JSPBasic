<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

	String name = (String)request.getAttribute("name");
	double avg = (double)request.getAttribute("avg");

%> 

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name %>님의 평균은 <%=avg %> 입니다
</body>
</html>