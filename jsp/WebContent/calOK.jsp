<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calOK.jsp</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String n1 = request.getParameter("num1");
	String n2 = request.getParameter("num2");
	String cal = request.getParameter("cal");
	int a = Integer.parseInt(n1);
	int b = Integer.parseInt(n2);
	int ans = 0;
	if(cal.equals("+")){
		ans = a + b;
	} else if(cal.equals("-")){
		ans = a - b;
	} else if(cal.equals("*")){
		ans = a * b;
	} else {
		ans = a / b;
	}
%>
<h1>
<%
out.println(a + " " + cal + " " + b + " = " + ans);
%>
<br>
<a href="cal_form.html">[다시하기]</a>
</body>
</html>