<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
		1. form 태그를 이용해서 post형식으로 이름 , 국 , 영 , 수 값을 입력받는다
		2. req_quiz_result.jsp로 전송한다
		3. 해당페이지에서는 평균, 합계를 구해서 
-->

	<form action="req_quiz_result.jsp" method="post">
		<!-- pattern - 값의 정규표현식  -->
		이름 : <input type="text" name="name" required> <br>
		국어 점수 : <input type="text" name="kor" pattern="[0-9]{2,3}" required><br>
		수학 점수 : <input type="text" name="math" required><br>
		영어 점수 : <input type="text" name="eng" required> <br>
		
		<input type="submit" value="점수 확인"> 
	</form>
	

		

</body>
</html>