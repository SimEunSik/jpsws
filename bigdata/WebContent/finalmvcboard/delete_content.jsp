<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String idx = request.getParameter("idx");
%>
	
<p>작성자의 비밀번호를 입력해 주세요.</p>
<form action="<%=request.getContextPath() %>/mvcboard/deleteOK.do" method="post" name="delet">
	<input type="hidden" name="idx" value="<%=idx %>">
	<input type="password" class="bpw" name="bpw"> <br>
	<br>
	<button type="button" onClick=deletef() class="btn btn-primary">삭제완료</button>
	<button type="button" onClick="history.back()" class="btn btn-danger">뒤	 로</button>
</form>