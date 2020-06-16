<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestobj</title>
</head>
<body>
<%
	String serverName = request.getServerName();
	int serverPort = request.getServerPort();
	String method = request.getMethod();
	String protocol = request.getProtocol();
	StringBuffer url = request.getRequestURL();
	String uri = request.getRequestURI();
	String remotAddr = request.getRemoteAddr();
	String servletPath = request.getServletPath();
	String contextPath = request.getContextPath();
%>
ServerName : <%=serverName%><br>
ServerPort : <%=serverPort%><br>
Method : <%=method%><br>
Protocol : <%=protocol%><br>
URL : <%=url%><br>
URI : <%=uri%><br>
RemotAddr : <%=remotAddr%><br>
ServletPath : <%=servletPath%><br>
ContextPath : <%=contextPath%><br>
</body>
</html>