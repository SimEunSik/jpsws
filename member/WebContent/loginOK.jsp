<%@page import="com.javalex.ex.MemberInfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 값 받아야지
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

// DB 관련일 해야지 - 로그인 함수 userCheck 불러야지
MemberInfoDao dao = MemberInfoDao.getInstance();
int ri = dao.userCheck(id, pw);
if(ri == -1){ %>
<script>
	alert('회원정보가 없습니다.')
	history.back();
</script>
<%} else if(ri == 0) { %>
<script>
	alert('비밀번호가 틀렸습니다.')
	history.back();
</script>
<%} else if(ri == 1) { 
	// session
	session.setAttribute("id", id);
%>
<script>
	alert('환영합니다.')
	location.href="main.jsp"
</script>
<%} %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginOK.jsp</title>
</head>
<body>

</body>
</html>