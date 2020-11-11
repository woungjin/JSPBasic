<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	// 1. 좌석정보를 받습니다.
	String[] seats = request.getParameterValues("seat");

	// 2. 좌석정보를 저장할 list생성 
	List<String> list = new ArrayList<>();
	
	// 3. application에서 좌석정보가 존재하면 2번 리스트에 저장 
	if(application.getAttribute("list") !=null) {
		list = ((List<String>)application.getAttribute("list"));
	}
	
	
	// 4. 좌석정보를 비교해서 중복이 없을때 하나씩 저장해 놓을 사본 리스트
	List<String> temp = new ArrayList<>();
	// 4. 좌석 정보와 2번의 리스트를 비교해서, 중복된 좌석이 아니라면, 2번에 리스트에 좌석정보를 추가한다
	for(String s : seats){
		if(list.contains(s)) {
			break;
		} else {
			temp.add(s);
		}
	}
	

	// 5. 사본리스트와 좌석정보가 길이가 같다면 중복이 없으므로 , 2번의 리스트에 통쨰로 사본리스트를 추가
	if(temp.size() == seats.length) {	
		list.addAll(temp); // 예약 정보가 들어있는 temp를 
	}
	// 6. application에 같은 이름으로 저장 
	application.setAttribute("list", list);
	
	// 7 화면에 예약 성공실패시 결과를 출력 
	System.out.println(application.getAttribute("list"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div>
			<h2>예약 결과</h2>
			예약 좌석 : 
			<% for (String s : seats) {%>
				<%=s %>
			<% } %>
			<b><%=temp.size() == seats.length ? "예약 성공" : "예약 실패"%></b>
		</div>
<a href="reverse.jsp">홈으로</a>
<button type="button"  onclick="location.href='reverse.jsp'"> 다시 입력하기 </button>
</body>
</html>