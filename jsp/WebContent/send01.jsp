<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send01</title>
</head>
<body>
<h1>POST로 값 계속 전달하기
<form action="redirect.jsp" method="post">
<input type="text" name="data">
<input type="radio" name="times" value="send02" checked="checked">10배
<input type="radio" name="times" value="send03">100배
<input type="submit" name="보내기" value="보내기">
</form>
</h1>
</body>
</html>