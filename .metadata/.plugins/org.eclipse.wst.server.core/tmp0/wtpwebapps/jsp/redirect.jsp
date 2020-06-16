<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- redirect.jsp -->
<%
	String result = request.getParameter("data");
	String times = request.getParameter("times");
	int num = Integer.parseInt(result);
	String path = "";
	if(times.equals("send02")){
		path = times + ".jsp?data=" + result;
		response.sendRedirect(path);
	} else{
		response.sendRedirect("send03.jsp?data=" + result);
	}
%>

<form action="send03.jsp" method="post">
<input type="text" name="data" value="<%=num%>" readonly="readonly">
<input type="submit" name="보내기" value="보내기">
</form>