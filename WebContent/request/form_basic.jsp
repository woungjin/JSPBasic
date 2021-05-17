<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- from에 작성된 데이터를 서버로 전송할 때 받아서 처리할 URL 정보를 action속성에 작성한다 -->
	
	<!-- form  = 사용자에서 작성한 정보를, 서버로 전송하기 위해 사용함 -->
	<form action="Req_get_paprameter.jsp" >
		<h3>회원가입 양식</h3>
		<hr color="red" > 
		아이디 : <input type="text" name="id" required> <br/>
		비밀번호 : <input type="password" name="pw"> <br/>
		이메일 : <input type="email" name="email"> <br/>
		전공 <input type="radio" name="major" value="경제학"> 경역학

		관심분야 : 
		<input type="checkbox" name="inter" value="자바"> 자바
		
		통신사:
		<select name="phone1">
			<option>SKT</option>
		</select>
		

		자기소개: <br/>
		<textarea rows="5" cols="20" name="txt"></textarea>
		
		<!-- subit은 품안에 있는 데이터를 서버로 전송해준다 -->
		<input type="submit" value="가입하기">
		
	</form>
 
</body>
</html>
