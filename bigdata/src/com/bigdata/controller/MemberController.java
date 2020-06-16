package com.bigdata.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigdata.command.BCommand;
import com.bigdata.command.BDeleteCommand;
import com.bigdata.command.BListCommand;
import com.bigdata.command.BReplyCommand;
import com.bigdata.command.BReplyInfoCommand;
import com.bigdata.command.BUpdateCommand;
import com.bigdata.command.BUpdateInfoCommand;
import com.bigdata.command.BViewCommand;
import com.bigdata.command.BWriteCommand;
import com.bigdata.command.MCommand;
import com.bigdata.command.MMainCommand;


@WebServlet("*.member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public MemberController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("actionDo");
		String uri = request.getRequestURI();
		System.out.println(uri);
		
		MCommand command = null;
		String viewPage = null;
		if(uri.equals("/bigdata/main.member")) { // main_mvc.jsp
			// 회원목록 가져오는 일 시키기
			command = new MMainCommand();
			command.execute(request, response);
			
			// 가져온 회원목록을 main_mvc.jsp로 전달
			viewPage = "/main_mvc.jsp";			
		}
		
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			try {
				dispatcher.forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
}
