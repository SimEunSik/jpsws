<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% // 로그인 체크
String id = (String)session.getAttribute("id");
if(id == null) { 
	response.sendRedirect("login.jsp");
} %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete.jsp</title>
</head>
<body>
<h1>회원탈퇴 : 비밀번호를 넣으세요<br>
<form action="deleteOK.jsp" method="post">
	PW : <input type="password" name="pw">
	<input type="submit" value="전송">
</form>
</h1>
</body>
</html>