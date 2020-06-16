<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<% for(int a=2;a<10;a++) { %>
	<tr><th><%=a %>단</th></tr>
		<% for(int b=1;b<10;b++){  %>
		<tr><td><%=a%> * <%=b %> = <%=a*b%></td></tr>
		<% } %>
	<% } %>
</table>
</body>
</html>