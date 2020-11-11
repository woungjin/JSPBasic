<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. id, pw , nick를 받는다
	// 2. id,pw가 동일하다면 id,nick 정보를 저장하는 session 생성 -> session_welcome 에서 id 출력
	// 3. 틀린 경우는 로그인 페이지로
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals(pw) ) {
		session.setAttribute("id", id);
		session.setAttribute("nick", nick);
		response.sendRedirect("session_welcome.jsp");
		
	} else {
%>		
		<script>
			alert("아이디 비밀번호를 입력하세요");
			location.href="session_login_form.jsp"; // redirect와 같은 기능 
		</script>
<%
		//response.sendRedirect("session_login_form.jsp");
	}
	
	
	
	
%>
