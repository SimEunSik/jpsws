<%@page import="com.bigdata.dao.MemberInfoDao"%>
<%@page import="com.bigdata.dto.MemberInfoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dto" class="com.bigdata.dto.MemberInfoDto" />
<jsp:setProperty property="*" name="dto"/>

<% 
MemberInfoDao dao = MemberInfoDao.getInstance();
int ri = dao.confirmId(dto.getId());
if(ri == 1) {
%>
<script>
alert('존재하는 아이디입니다.');
history.back();
</script>
<%} else {
	ri = dao.memberInfoInsert(dto);
	if(ri == 1) {%>
<script>
alert('회원가입 성공.');
location.href="/bigdata/login/login.jsp";
</script>
<% } else { %>
<script>
alert('회원가입 실패 - 잠시 후 다시 시도해주세요');
history.back();
</script>
<%	
	}
}
%>