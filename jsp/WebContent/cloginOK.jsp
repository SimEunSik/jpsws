<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
// id: abcd | pw: 1234
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id.equals("abcd") && pw.equals("1234")){
	Cookie cookie = new Cookie("id", id);
	cookie.setMaxAge(60*10);
	response.addCookie(cookie);
	
	response.sendRedirect("cwelcome.jsp");
} else {
	response.sendRedirect("clogin.jsp");
}
%>