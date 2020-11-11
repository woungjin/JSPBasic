<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	// 아래 생성과 동일
	User u = new User(id, pw, name, email);
	
	out.println(u.getId());
	out.println(u.getPw());
	out.println(u.getName());
	out.println(u.getEmail());
	
%>

<%-- bean생성과 setter의 사용 --%>

<jsp:useBean id="user" class="com.bean.User">
	<jsp:setProperty property="id" name="user" value="<%=id %>"/>
	<jsp:setProperty property="pw" name="user" value="<%=pw %>" />
	<jsp:setProperty property="name" name="user" value="<%=name %>" />
	<jsp:setProperty property="email" name="user" value="<%=email %>"/>
</jsp:useBean>

<%-- getter 사용법 --%>

<jsp:getProperty property="id" name="user"/>
<jsp:getProperty property="pw" name="user"/>
<jsp:getProperty property="name" name="user"/>
<jsp:getProperty property="email" name="user"/>
