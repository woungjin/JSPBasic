<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		int a = 1;
		int num = 0;
		
		if(a >= 10) {
			System.out.println("10보다 크다");
		} else { 
			out.println("10보다 작다");
		}
	%>
	<hr/>
	<%
		for(int i = 1; i <= 10; i++) {	
			out.println(i + "<br>");
		}
	%>
	
	<hr color ="red">


	<% if(num >= 10) { %>
		<p>참 거짓입니다</p>
	<% } else { %>
		<p>거짓 입니다 </p>
	<% } %>
	
	<hr color="red">
	
	1. 구구단 3단 out.println과 , hr 태그를 사용해서 브라우저 화면에 출력
	<% int b = 3; %>
	<br>	
	<% for (int i = 1; i<=9; i++) {
	out.println(b + "*" + i +"="+ b*i  + "<br>") ;
	%>
	<hr/ color="red">
	<% }	 %>
	2. 체크박스 20개를 브라우저에 생성
	<br>
	<% for (int i = 1; i<=20; i++) { %> 
		<input type="checkbox" name="box"/>
 	<% } %>
	
</body>
</html>