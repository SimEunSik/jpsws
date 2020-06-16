<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage.jsp</title>
</head>
<body>
<h1>
My Page <hr>
<%
String id = (String)session.getAttribute("userId");
if(id == null) response.sendRedirect("login.jsp");
%>
ID: <%=id %>

</h1>
</body>
</html>