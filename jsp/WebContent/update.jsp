<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
<%
String id = (String)session.getAttribute("userId");
%>
당신의 ID는 <%=id %>입니다.

<a href="welcome.jsp">돌아가기</a>
</body>
</html>