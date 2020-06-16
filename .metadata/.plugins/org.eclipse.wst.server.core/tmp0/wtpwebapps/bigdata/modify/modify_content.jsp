<%@page import="com.bigdata.dto.MemberInfoDto"%>
<%@page import="com.bigdata.dao.MemberInfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberInfoDao dao = MemberInfoDao.getInstance();
	MemberInfoDto dto = dao.getMemberInfo(uid);
%>    
<h3>
	<p class="text-info">회원정보수정</p><br>
</h3>
<form action="modifyOK.jsp" method="post" name="reg_frm">
<table class="table">
	<tr>
		<td>아이디</td>
		<td><%=uid%></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input value="<%=dto.getPw()%>" type="password" name="pw" size="30"></td>
	</tr>
	<tr>
		<td>이 름</td>
		<td><input value="<%=dto.getName()%>" type="text" name="name" size="30"></td>
	</tr>
	<tr>
		<td>닉네임</td>
		<td><input value="<%=dto.getNicname()%>" type="text" name="nicname" size="30"></td>
	</tr>
	<tr>
		<td>메 일</td>
		<td><input value="<%=dto.getEmail()%>" type="text" name="email" size="30"></td>
	</tr>
</table>

<div class="modifybtn">
	<input class="btn btn-success" type="submit" value="정보수정">
	<input class="btn btn-danger" type="reset" value="Reset" onClick="javascript:window.location='/bigdata/login/login.jsp'">
</div>

</form>