<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//req
	String path = request.getContextPath(); // 톰캣이 프로젝트를 구분하는 경로

	StringBuffer url = request.getRequestURL(); //전체 주소 
	
	String uri = request.getRequestURI(); // 전체 주소 - contextPath()
	
	String addr = request.getRemoteAddr(); // 접속 ip
	
	String query = request.getQueryString(); // 주소뒤에 전달되는 문자열 jsp에서는 X,다른데서는 사용 O 
	
	String method = request.getMethod();
	
	System.out.println("접속주소 : " + addr );
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	ContextPath : <%=path %> <br> <!-- 프로젝트 이름 - servers -> modules -> path 수정  -->
	URL 정보 : <%= url %> <br> <!-- 전체주소 -->
	URI 정보 : <%= uri %> <br> <!-- 폴더경로(프로토콜,ip삭제) -->
	접속 	IP : <%= addr %> <br> 
	주소에 담긴 문자열 : <%= query %> <br>
	요청 방식 : <%=method %> <br> <!-- GET or POST -->
 	
</body>
</html>