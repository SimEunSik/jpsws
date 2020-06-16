<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include01.jsp</title>
</head>
<body>
	<jsp:include page="include02.jsp">
		<jsp:param value="abcd" name="id"/>
		<jsp:param value="1234" name="pw"/>
	</jsp:include>
</body>
</html>