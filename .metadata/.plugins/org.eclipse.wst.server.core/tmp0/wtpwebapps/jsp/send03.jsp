<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send03</title>
</head>
<body>
<%
	String result = request.getParameter("data");
	int num = Integer.parseInt(result)*100;
%>
<h1>
여기는 send03 입니다.<br>
send02에서 전달한 값의 100배값은 <%=num%> 입니다.
</h1>

<form action="send04.jsp" method="post">
<input type="text" name="data" value="<%=num%>" readonly="readonly">
<input type="submit" name="보내기" value="보내기">
</form>
</body>
</html>