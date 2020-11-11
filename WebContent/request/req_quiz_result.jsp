<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");	

	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String math = request.getParameter("math");
	String eng = request.getParameter("eng");
	
	int k = Integer.parseInt(kor);
	int m = Integer.parseInt(math);
	int e = Integer.parseInt(eng);
	
	int sum = k+m+e;
	double avg = sum / 3.0 ;
	String avg_result = String.format("%.1f", avg);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름 : <%=name %> <br/>
	평균 : <%=avg_result %> <br/>
	합계 : <%=sum %> <br/>
	
	<% if (avg >= 80) { %>
		<h4>80점 이상 ~ 고득점!</h4>
	<% } else if(avg >= 60) {%>
		<h4>60점 이상 ~ 중간!!</h4>
	<% } else { %>
		<h4>60점 아래 ~ 저득점!!</h4>
	<% } %>
		
	
	
	

</body>
</html>