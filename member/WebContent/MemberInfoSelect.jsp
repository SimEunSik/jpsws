<%@page import="com.javalex.ex.MemberInfoDto"%>
<%@page import="com.javalex.ex.MemberInfoDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberInfoselect.jsp</title>
</head>
<body>
<h1>
<%
String id = (String)session.getAttribute("id");
if(id == null){%>
<a href="join.jsp">회원가입</a> / <a href="login.jsp">로그인</a> 
<%} else { %>
환영합니다. <%=id %>님

<%} %>

</h1>
<hr>
<table border="1">
<tr><th>id</th><th>pw</th><th>name</th><th>email</th><th>address</th><th>regdate</th></tr>
<%
MemberInfoDao dao = MemberInfoDao.getInstance(); // driver
ArrayList<MemberInfoDto> dtos = dao.memberInfoSelect();

for(MemberInfoDto item : dtos) { %>
<tr><td><%=item.getId() %></td><td><%=item.getPw() %></td>
<td><%=item.getName() %></td><td><%=item.getEmail() %></td>
<td><%=item.getAddress() %></td><td><%=item.getRegdate() %></td>
</tr>
<%}%>
		
		
</table>
</body>
</html>