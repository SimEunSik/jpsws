<%@page import="com.bigdata.dao.MemberInfoDao"%>
<%@page import="com.bigdata.dto.MemberInfoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

// 값 받아야지
String id = (String)session.getAttribute("userId");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String nicname = request.getParameter("nicname");
String email = request.getParameter("email");

MemberInfoDto dto = new MemberInfoDto(id, pw, name, nicname, email);

// DB에 일 시켜야지(dao)
MemberInfoDao dao = MemberInfoDao.getInstance();
int ri = dao.memberInfoModify(dto);
%>
<%if(ri == 1){ %>
<script>
	alert('정보가 수정되었습니다.')
	location.href='/bigdata/modify/modify.jsp';
</script>
<%} else {%>
<script>
	alert('정보수정에 실패했습니다.')
	history.back();
</script>
<%}%>