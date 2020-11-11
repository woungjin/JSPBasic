<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		1. 아이디와 비번을 받아내고  
		2. id = "abc", pw = "1234"라면 로그인 성공 (user_id, id) 를 저장하는 쿠키 생성 후 
				cookie_welcome 페이지로 이동 
		3. id , pw가 다르다면 다시 로그인 페이지로 이동  
		4. welcome페이지 에서는 쿠기값을 꺼내서 "id"님 환영합니다 출력 
		
	*/
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idcheck = request.getParameter("idcheck"); // 아이디 기억하기 checkbox
	
	
	
	if(id.equals("abc") & pw.equals("1234")){
			// -- id  쿠키 생성
			Cookie cookie_id = new Cookie("user_id",id);
			cookie_id.setMaxAge(60);
			response.addCookie(cookie_id);

			// -- checkbox 쿠키 생성	
			if(idcheck != null){
				Cookie cookie_check = new Cookie("id_check",id);
				cookie_check.setMaxAge(60*60*24); // 하루
				response.addCookie(cookie_check);
			}
		
			response.sendRedirect("cookie_welcome.jsp");
	} else {
		response.sendRedirect("cookie_login_form.jsp");
	}
	
%>