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
	
		// �������� out�� response���� �ѹ� �޾���� �����ϴ�
		// �������� out�� �̿��ؼ� ������, �ؼ��Ҽ��ְ� �����־�� �Ѵ� (contentType)
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter(); // ������ȭ�鿡 ����� PrintWriter ��ü�� ��¹�� .
		
		out.println("�ȳ�?");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
