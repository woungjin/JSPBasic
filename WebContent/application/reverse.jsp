<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("authYN")==null) {
		response.sendRedirect("auth.jsp");
	}

	// application 객체의 예약정보를 얻는다 
	List<String> list = new ArrayList<>();
	if(application.getAttribute("list") !=null ) {
		list = (List<String>)application.getAttribute("list");
		
	}
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!--  
			1. 태그를 선택하지 못하게 처리하는 옵션 : disabled
			2. 태그에서 미리 선택하게 하는 옵션       : select 
			3. input태그에서 반드시 값을 입력	 : required
			4. input태그에서 읽기 속성 		 : readonly
			5. checkbox,radio를 선택하게 하는 : checked
	 -->
	 
	<div align="center">
		<h2>영화좌석 예약 </h2>
		<h4>예약할 좌석을 체크하세요</h4>

	
		<form action="reverse_ok.jsp" method="post">
			<% for(char c='A'; c <= 'Z'; c++) { %>
				<small><%=c %></small>&nbsp;&nbsp;
			<% } %>
			<br>
			<% for(int i=1; i<=6 ; i++) { %>
					<%=i %>
					<% for(char c ='A'; c<='Z'; c++) { %>
						<input type="checkbox" name="seat" value="<%=c%>-<%=i%>" <%=list.contains(c+"-"+i) ? "disabled" : "" %>>	
				<% } %>	
				<%= i==3? "<br> " : "" %>
				<br/>
			<% } %>
	
			<input type="submit" value="예약" > 
			<input type="button" value="처음으로" onclick="location.href='auth.jsp'"> 
		</form>
	</div>
	
</body>
</html>