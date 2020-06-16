<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome.jsp</title>
</head>
<body>
<%
String id = (String)session.getAttribute("userId");
%>
<a href="update.jsp"><%=id%></a>님 환영합니다.
</body>
</html>