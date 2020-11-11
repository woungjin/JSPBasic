<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>회원가입 양식</h2>
	
	<form action="join02.jsp" method="post">
		아이디 : <input type="text" name="id" required> <br>
		비번 :  <input type="password" name="pw" required> <br>
		이름 :  <input type="text" name="name"> <br> 
		생일 :  <input type="date" name="brith"> <br>
		<input type="submit" value="로그인"> 
	</form>
	
</body>
</html>