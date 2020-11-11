<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	String name = request.getParameter("name");

	
	User u = new User(id,pw,name,email);
	
	request.setAttribute("user", u);
	
	request.getRequestDispatcher("bean_java_ex03.jsp").forward(request, response);
	
%> 