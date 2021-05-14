<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String now = sdf.format(date);
	
	// ArrayList
	ArrayList<String> list = new ArrayList<>();
	list.add("홍길동");
	list.add("홍길자");
	//HashMap
	HashMap<Integer,String> map = new HashMap<>();
	map.put(1, "일등");
	map.put(2, "이등");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=list.toString() %><br>
<%=map.toString() %><br>
<hr color="red"/>
list 
<% for(String name : list) { %>
	<%=name %> <br> 
<% } %>
<hr color="red"/>
hashMap
<%
	Set<Entry<Integer, String>> iter = map.entrySet();
	for(Entry<Integer, String> i : iter) { %>
		<%=i %> <br>
<% } %> 
</body>
</html> 
