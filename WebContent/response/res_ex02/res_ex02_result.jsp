<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	/*
		1. id,pw를 받아서처리
		2. id가 abc1234 , pw = xxx123 = 성공이며 , res_ex02_welcome.jsp로 리다이렉트
		3. 틀린경우 : res_ex02_id_fail 로 리다이렉트
		4. pw가 틀린경우 : res_ex02pw_fail 로리다이렉트 각각 결과 문구 출력
	*/
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

%>

	<% if (id.equals("abc1234")) { 
		if (pw.equals("xxx123")) {
			response.sendRedirect("res_ex02_welcome.jsp");
		} else {
			response.sendRedirect("res_ex02pw_fail.jsp");
		}
	}  else {
		response.sendRedirect("res_ex02_id_fail.jsp");
	}%>
	