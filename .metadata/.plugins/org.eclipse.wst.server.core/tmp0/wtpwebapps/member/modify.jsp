<%@page import="com.javalex.ex.MemberInfoDto"%>
<%@page import="com.javalex.ex.MemberInfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = (String)session.getAttribute("id");
if(id == null) { // 비로그인%>
<jsp:forward page="login.jsp" />
<%} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify.jsp</title>
</head>
<body>
<%
	// 그 id의 사용자 정보를  /db에서 가져오기 getMemberInfo()
	MemberInfoDao dao = MemberInfoDao.getInstance();
	MemberInfoDto dto = dao.getMemberInfo(id);
%>
<h1>회원정보수정<hr>
<form action="modifyOK.jsp" method="post" name="reg_frm">
	아이디 : <%=id%><br>
	비밀번호 : <input value="<%=dto.getPw()%>" type="password" name="pw" size="20"><br>
	비밀번호 확인 : <input value="<%=dto.getPw()%>" type="password" name="repw" size="20"><br>
	이름 : <input value="<%=dto.getName()%>" type="text" name="name" size="20"><br>
	메일 : <input value="<%=dto.getEmail()%>" type="text" name="email" size="20"><br>
	주소 : <input value="<%=dto.getAddress()%>" type="text" name="address" size="50"><br>
	<input type="submit" value="정보수정"><br>
	<input type="reset" value="Reset" onClick="javascript:window.location='login.jsp'">
</form>
</h1>
</body>
</html>