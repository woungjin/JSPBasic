<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  post방식은 form태그에 method="post"로 지정 -->
	
	<form action="req_post_parameter.jsp" method="post"> 
		아이디 : <input type="text" name="id"><br/>
		비번 : <input type="password" name="pw"><br/>
		
		<input type="submit" value="확인">
	</form>

</body>
</html>