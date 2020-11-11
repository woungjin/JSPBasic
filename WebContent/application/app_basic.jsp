<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// appliaction은 session과 사용방법이 거의 동일하며
	// 생명주기가 톰캣을 stop할때까지 유지가 된다
	
	int total = 0;
	// 세션에서 정보를 가져온다
	if(application.getAttribute("total") != null) {
		total = (int)application.getAttribute("total");
	}

	total++;
	
	application.setAttribute("total",total);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1> 값 : <%=total %> </h1>
	 
	 

</body>
</html>