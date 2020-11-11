<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int count = 0;
	Random rd = new Random();
%>
<%
	int rnd = rd.nextInt(8)+1;
	count++;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=count %>번째 방문자 입니다! <br>
	<%if (count % 10 == 0)  { %>
		<h3>당첨되셨습니다!!</h3>
	<% } %>
	<hr color="red">
	<h2>랜덤구구단 <%=rnd %>단</h2>
	<h4>이번에 나온 구구단은 <%=rnd %>단 입니다.</h4>
	<% for(int i=1; i<=9; i++){  %>
		<%=rnd + " x " + i +"=" + rnd*i%> <br>
						
	<% } %>



</body>
</html>