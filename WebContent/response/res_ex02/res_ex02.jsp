<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 디자인 문법을 적는 영역 -->
<!-- .(=선택자라함)은 class에 접근하는 문법  -->
<style>
	
	.form-content {margin: 0 auto; width:200px;}
	.form-group { text-align : center; width: 200px;}
	.form-control {width:100%; box-sizing: border-box;}
	
</style>
</head>
<body>
	
	<!-- css를 지정하는 방법에 3가지, 인라인, 내부스타일, 외부스타일 -->
	<!-- 내부스타일 시트는 태그에 class속성 이름을 부여하고  head안에서 css문법으로 디자인을 적용시킨다 -->
	<section>
		<div class="form-content">
			<form action="res_ex02_result.jsp" method="post" class="form-group">
				<span>로그인 폼</span>
				 <input type="text" name="id" placeholder="아이디 입력" class="form-control"> <br/>
				 <input type="password" name="pw" placeholder="비밀번호 입력" class="form-control"><br>
				 
				  <input type="submit" value="로그인" class="form-control">
			</form>
		</div>
	</section>
		

</body>
</html>