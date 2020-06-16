<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send02</title>
</head>
<body>
<%
	String result = request.getParameter("data");
	int num = Integer.parseInt(result)*10;
%>
<h1>
이곳은 send02 입니다.<br>
send01에서 전달한 값의 10배값은 <%=num%> 입니다.
</h1>

<form action="send03.jsp" method="post">
<input type="text" name="data" value="<%=num%>" readonly="readonly">
<input type="submit" name="보내기" value="보내기">
</form>
</body>
</html>