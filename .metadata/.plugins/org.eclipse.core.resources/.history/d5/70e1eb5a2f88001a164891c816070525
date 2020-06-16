<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
// id: abcd | pw: 1234
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id.equals("abcd") && pw.equals("1234")){
	session.setAttribute("userId", id);
	response.sendRedirect("welcome.jsp");
} else {
	response.sendRedirect("login.jsp");
}
%>