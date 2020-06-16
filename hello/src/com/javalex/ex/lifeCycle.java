package com.javalex.ex;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/lifeCycle")
public class lifeCycle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public lifeCycle() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("태초에 한번 실행됨");
	}

	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("죽기전에 한 번 실행됨");
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		super.service(req, resp);
		System.out.println("나는 서비스의 왕이야~~");
		String method = req.getMethod();
		if(method.equals("GET")) {
			doGet(req, resp);
		}else if(method.equals("POST")) {
			doPost(req, resp);
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Get으로 요청하면 매번 실행됨");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		System.out.println("Post로 요청하면 매번 실행됨");
	}

}