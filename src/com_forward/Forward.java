package com_forward;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Forward")
public class Forward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Forward() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");

		// 리퀘스트 값을 강제로 저장하는 방법
		request.setAttribute("name", "홍길동");
		
		
		// 자바에서 포워드를 사용할 떄는
		RequestDispatcher dp = request.getRequestDispatcher("actionTag/forward_ex04.jsp");
		dp.forward(request, response);
		
		response.sendRedirect("actionTag/forward_ex04.jsp");
		
	}

}
