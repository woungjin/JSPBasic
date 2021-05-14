
<%@page import="java.util.Collections"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		1. 정수를 저장하는 list생성
		
	*/
%>

<%
	List<Integer> list = new ArrayList<>(); 
	Random rd = new Random();
	int count = 0;
	boolean flag = false;
	while(count <6){
		int rn = rd.nextInt(44)+1;
		for(int i=0; i<list.size(); i++){
			if(list.get(i) == rn ){
				flag = true;
			} // if
		} // for
		
		if(!flag){
			list.add(rn);
			count++;
		}
		
	} // while
	Collections.sort(list);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
</head>
<body>
	<% for(int i=0; i<list.size(); i++) {
			out.println(list.get(i));
	}%>
	
	


</body>
</html>
