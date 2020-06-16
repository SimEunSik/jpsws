<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.jsp.ex.Student" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanex.jsp</title>
</head>
<body>
<jsp:setProperty property="name" name="student" value="홍길동"/>
<jsp:setProperty property="age" name="student" value="16"/>
<jsp:setProperty property="grade" name="student" value="6"/>
<jsp:setProperty property="studentNum" name="student" value="7"/>
<h1>
Name:<jsp:getProperty property="name" name="student"/><br>
Age:<jsp:getProperty property="age" name="student"/><br>
Grade:<jsp:getProperty property="grade" name="student"/><br>
StudentNum:<jsp:getProperty property="studentNum" name="student"/><br>
</h1>
</body>
</html>