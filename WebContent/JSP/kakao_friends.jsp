<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! // 유지하는 곳 
	String[] kakao = {"어피치","라이언","제이지","무지","프로도","튜브"};
	List<String> list = new ArrayList<>();
   	Random rd = new Random();
%>
<%

	int num = rd.nextInt(kakao.length);
	list.add(kakao[num]);
	if(list.size() > 10) {	
		list.clear();
	}
	int count=0;
	for(int i=0; i<list.size(); i++){
		if(kakao[num].equals(list.get(i))){
			count++;
		}
	}
%>

<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  카카오 친구들 : 어피치 , 라이언, 제이지 , 무지, 프로도 , 튜브  -->
	<h4>[<strong><%=kakao[num] %>]<strong>님이 입장</h4>
	<p>현재 같은 카카오 프렌즈는 <%=count %>명입니다! </p>
	
	<%=list.toString() %>
	<p><%=list.size() %>명 참가중
</body>
</html>
  
