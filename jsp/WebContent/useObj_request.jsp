<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.jsp.ex.Student" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useObj_request.jsp</title>
</head>
<body>
<h1> useObj_request Page<br>
Name:<jsp:getProperty property="name" name="student"/><br>
Age:<jsp:getProperty property="age" name="student"/><br>
Grade:<jsp:getProperty property="grade" name="student"/><br>
StudentNum:<jsp:getProperty property="studentNum" name="student"/><br>
</h1>
</body>
</html>