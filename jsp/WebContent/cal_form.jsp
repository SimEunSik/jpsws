<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String n1 = request.getParameter("num1");
String n2 = request.getParameter("num2");
String cal = request.getParameter("cal");
%>
<!DOCTYPE html>
<html></html>
<head></head>
<meta charset="UTF-8">
<title>cal_form</title>
</head>
<body>

<h1>4칙연산 계산기<br>
<form action="cal_form.jsp">
<input type="text" name="num1" value="<%=n1%>">
<select name="cal">
	<option>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
</select>
<input type="text" name="num2" value="<%=n2%>">
<input type="submit" name="계산" value="계산">
</form>

<hr>

<%
	String num1 = request.getParameter("num1");
	if(num1 == null || num1.equals("")){
%>		
사칙연산 계산기 입니다.
<%}else{ %>
<%
	request.setCharacterEncoding("UTF-8");
		
		int a = Integer.parseInt(n1);
		int b = Integer.parseInt(n2);
		int reslut = 0;
		if(cal.equals("+")){
			reslut = a + b;
		} else if(cal.equals("-")){
			reslut = a - b;
		} else if(cal.equals("*")){
			reslut = a * b;
		} else {
			reslut = a / b;
		}	
	
%>
<%=a %> <%=cal %> <%=b %> = <%=reslut%>
<%} %>
<h1>
<br>
<a href="cal_form.jsp">[다시하기]</a>
</h1>

</body>
</html>