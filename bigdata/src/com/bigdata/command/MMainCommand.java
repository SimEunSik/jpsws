package com.bigdata.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bigdata.dao.JoinDao;
import com.bigdata.dto.JoinDto;

public class MMainCommand implements MCommand{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("MMC");
		JoinDao dao = JoinDao.getInstance();
		ArrayList<JoinDto> memberList = dao.getMemberList();
		
		request.setAttribute("memberList", memberList);
		
	}
}
