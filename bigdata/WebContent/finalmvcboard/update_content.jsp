<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 수정할 글 번호 받기
int idx = (int)request.getAttribute("idx");
BoardDto board = (BoardDto)request.getAttribute("board");
%>
<br>
<h3>
	<p class="text-info">글 수정하기</p>
</h3>
<form action="<%=request.getContextPath()%>/mvcboard/updateOK.do"	method="post" name="update">
	<input type="hidden" name="idx" value="<%=idx%>">
	<table class="table">
		<tr>
			<td>작성자</td>
			<td><input type="text" class="bname" name="bname" value="<%=board.getName()%>"></td>
		</tr>
		<tr>
			<td>E-Mail</td>
			<td><input type="text" class="bemail" name="bemail" value="<%=board.getEmail()%>"></td>
		</tr>
		<tr>
			<td>홈페이지</td>
			<td><input type="text" class="bhomepage" name="bhomepage" value="<%=board.getHomepage()%>"></td>
		</tr>
		<tr>
			<td>제 목</td>
			<td><input type="text" class="btitle" name="btitle" value="<%=board.getTitle()%>"></td>
		</tr>
		<tr>
			<td>내 용</td>
			<td><textarea name="bcontent" class="bcontent" rows="8" cols="30"><%=board.getContent()%></textarea></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" class="bpw" name="bpw" value="<%=board.getPw()%>"></td>
		</tr>
	</table>

<div class="updatebtnbox">
	<button type="button" onClick=updatef() class="btn btn-success">수정완료</button>
	<button type="button" onClick=resetf() class="btn btn-warning">다시수정</button>
	<button type="button" onClick="history.back()" class="btn btn-danger">뒤 로</button>
</div>
</form>
