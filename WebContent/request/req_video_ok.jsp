<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<h2>강의영상 </h2>
		<hr color="red"/>
		
		<% if(request.getParameter("name").equals(null)) { %>
			<p>잘못된 접근입니다 </p>
		<% } %>
		
		<% if (request.getParameter("name").equals("java")) { %>
		<p>자바 수업 소개 </p>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/L0a6N-rj-CI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<% } else if(request.getParameter("name").equals("js")) {%>
		<!-- 앞에서 어떤 동영상을 클릭하냐에 따라서 , 각각 다른 동영상을 띄어준게끔 해준다  -->
		<p>자바스크립트 수업 소개</p>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/W5hPn_9d0dk" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<% } else { %>
		<p>오라클 설치과정 </p>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/DEVR_R2Hva0?list=PLK7AWkPYwus5eaHdYaraU73uMDRX18STn" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<% } %>
	</div>

</body>
</html>