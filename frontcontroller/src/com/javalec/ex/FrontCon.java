package com.javalec.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.do")
public class FrontCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public FrontCon() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet");
		actionDo(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// doGet(request, response);
		System.out.println("doPost");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("actionDo");
		
		String uri = request.getRequestURI(); // 어디서 호출 / 무얼 할껀지 / Command
		// /frontcontroller/*.do
		System.out.println(uri);
		
		String contextPath = request.getContextPath(); // bigdata
		// /frontcontroller
		System.out.println(contextPath);
		
		String command = uri.substring(contextPath.length());
		//String[] uriArr = uri.split("/");
		//String command2 = uriArr[uriArr.length-1];
		if(command.equals("/insert.do")) {
			System.out.println("insert");
		} else if(command.equals("/update.do")) {
			System.out.println("update");
		} else if(command.equals("/select.do")) {
			System.out.println("select");
		} else if(command.equals("/delete.do")) {
			System.out.println("delete");
		} 
	}

}
