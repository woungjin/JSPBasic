<%@page import="com.session.User"%>
<%@page import="com.session.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("login") == null) {
		response.sendRedirect("login01.jsp");
	}
	User u = (User)session.getAttribute("login");
	UserRepository.deleteUser(u.getId());
	session.invalidate();
	response.sendRedirect("login01_form.jsp");
%>