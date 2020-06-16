<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="com.eljstl.ex.MemberInfoDto"></jsp:useBean>
<jsp:setProperty value="aaaaa" property="id" name="member"/>
<jsp:setProperty value="1234" property="pw" name="member"/>
<jsp:setProperty value="홍길동" property="name" name="member"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>
ID : <jsp:getProperty property="id" name="member"/><br>
PW : <jsp:getProperty property="pw" name="member"/><br>
NAME : <jsp:getProperty property="name" name="member"/><br>
<hr>
ID : ${member.id }<br>
PW : ${member.pw }<br>
NAME : ${member.name }<br>








</h1>
</body>
</html>