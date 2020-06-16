<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send05</title>
</head>
<body>
<%
	String result = request.getParameter("data");
	int num = Integer.parseInt(result)*10000;
	long answer = (long)num;
%>
<h1>
여기는 send05 입니다.<br>
send04에서 전달한 값의 10000배값은 <%=answer%> 입니다.
</h1>

</body>
</html>