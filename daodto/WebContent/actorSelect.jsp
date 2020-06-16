<%@page import="java.util.ArrayList"%>
<%@page import="daodto.ActorDto"%>
<%@page import="daodto.ActorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>actorselect.jsp</title>
</head>
<body>
<table border="1">
<tr><th>actor_id</th><th>first_name</th><th>last_name</th><th>last_update</th></tr>
<%
ActorDao dao = new ActorDao(); // driver
ArrayList<ActorDto> dtos = dao.actorSelect(10); // conn ~~~ return dtos

for(ActorDto actor : dtos) { %>
<tr><td><%=actor.getActorId() %></td><td><%=actor.getFirstName() %></td><td><%=actor.getLastName() %></td><td><%=actor.getLastUpdate() %></td></tr>
<%}%>
		
		
</table>
</body>
</html>