package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/outServlet")
public class OutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public OutServlet() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 서블릿에서 out은 response에서 한번 받아줘야 가능하다
		// 브라우저에 out을 이용해서 보낼때, 해석할수있게 도와주어야 한다 (contentType)
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter(); // 브라우저화면에 출력할 PrintWriter 객체를 얻는방법 .
		
		out.println("안녕?");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
