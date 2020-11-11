<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    %>
    <!-- param = request.setAttribute*()와 기능이 같다 ㄹ -->
<jsp:forward page="param_ex03.jsp">
	<jsp:param value="홍길동" name="name">
</jsp:forward>   