package com.bigdata.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigdata.dao.BoardDao;
import com.bigdata.dto.BoardDto;

public class BUpdateCommand implements BCommand{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String sIdx = request.getParameter("idx");
		int idx = Integer.parseInt(sIdx);
		String name = request.getParameter("bname");
		String email = request.getParameter("bemail");
		String homepage = request.getParameter("bhomepage");
		String title = request.getParameter("btitle");
		String content = request.getParameter("bcontent");
		String pw = request.getParameter("bpw");
		
		// 글 하나 생성
		BoardDto board = new BoardDto(name, email, homepage, title, content, pw);

		// dao
		BoardDao dao = BoardDao.getInstance();

		// idx, pw 체크
		board = dao.getBoardOne(idx);
		int ri = -1;
		if(pw.equals(board.getPw())){
			// 글 업데이트	
			board = new BoardDto(name, email, homepage, title, content, pw);
			// update 실행
			ri = dao.setBoardUpdate(board, idx);
		}
		
		// request
		request.setAttribute("ri", ri);
		request.setAttribute("idx", idx);
	}
}
