<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	/*
		올바른 인증값을 적은 경우는 reverse.jsp 로 이동 후 
		authYN이라는 세션으로 저장
		올바르지 않은 경우 다시 인증페이지로 이동
		
	*/
	
	String code = request.getParameter("code");

	if(session.getAttribute("arr").equals(code)) {

		session.setAttribute("authYN","y");
		response.sendRedirect("reverse.jsp"); 
	} else {
		response.sendRedirect("auth.jsp");
	}

		

%>