<%@page import="java.util.Collections"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Set<Integer> lotto = new HashSet<>(); 
Random rd = new Random();
int count = 0;
boolean flag = false;
while(lotto.size() <6){
	int num = rd.nextInt(45)+1;
	lotto.add(num);
	
} // while

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	랜덤 번호 : <%= lotto.toString()%>
</body>
</html> 
