<%@page import="com.sun.corba.se.spi.activation.Repository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 인증 정보 삭제
	session.invalidate();
	response.sendRedirect("session_login_form.jsp"); // 로그인 페이지로 
	
%>