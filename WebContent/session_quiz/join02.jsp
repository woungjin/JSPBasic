<%@page import="java.util.List"%>
<%@page import="com.session.UserRepository"%>
<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	 /*
	 	1. 사용자 값을 받은 다음에 User 객체를 생성하고 사용자의 입력값을 저장한 후에
	 	UserRepository클래스에 저장
	 	
	 	2. join03페이지로 이동
	  */
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = 	request.getParameter("name");
	String date = request.getParameter("birth");
		
	User user = new User(id,pw,name,date);
	
	UserRepository.setUserList(user);
	
	response.sendRedirect("join03.jsp");	
%>