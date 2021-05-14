<%@ page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
	// 선언자와 스크립트릿의 차이
	// 선언자 - 멤버변수(누적) , 메소s드 선언할 때 사용
	// 누적됨 
	public int total = 0;
	public int randomNum() {
		Random rn = new Random();
		int num = rn.nextInt(10); // 0 ~ 9
		return num;
	}
%>
<%
	// 스크립트릿 - JSP페이지 실행마다 한번식 실행되는 코드
	// 페이시 실행시 한번만 실행됨 
	int each = 0;
	total++;
	each++;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	선언자 값 : <%= total %> <br>
	스크립트릿 : <%= each %> <br>
	랜덤메소드 : <%= randomNum() %> <br>

</body>
</html> 
