<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/WebContent/Script.jsp</title>
</head>
<body>
<h1>
<%
	int i = 0;
	while(true){
		i++;
		out.println("2 * "+ i + " = " + (2*i) + "<br>");
		if(i>=9) break;
	}

%>
<%
	int sum = 0;
	for(int j=0;j<=10;j++){
		sum += j;
	}
%>
1 부터 10 까지의 합은 <%=sum %>

</h1>
</body>
</html>