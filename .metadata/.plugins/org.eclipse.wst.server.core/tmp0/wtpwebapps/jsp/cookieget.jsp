<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookieget.jsp</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();
	for(Cookie cookie : cookies){
		String str = cookie.getName();
		out.println(cookie.getName());
		out.println(cookie.getValue()+"<br>");
	}
%>
<a href="cookiedel.jsp">Delete Cookie</a>
</body>
</html>