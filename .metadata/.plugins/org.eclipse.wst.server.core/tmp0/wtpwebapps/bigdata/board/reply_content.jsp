<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 답변할 글 번호 받기
String sIdx = request.getParameter("idx");
int idx = Integer.parseInt(sIdx);

BoardDao dao = BoardDao.getInstance();
// 수정할 글 내용 가져오기
BoardDto board = dao.getBoardOne(idx);
String title = "답변 >> " + board.getTitle();
String content = "\n\n======= 원 본=======\n" + board.getContent();
int group = board.getGroup();
int step = board.getStep();
int indent = board.getIndent();

%>

<br>
<h3>
	<p class="text-info">글 답변하기</p>
</h3>
<form name="reply" action="<%=request.getContextPath()%>/board/replyOK.jsp"	method="post">
<input type="hidden" name="idx" value="<%=idx%>">
<input type="hidden" name="group" value="<%=group%>">
<input type="hidden" name="step" value="<%=step%>">
<input type="hidden" name="indent" value="<%=indent%>">
<table class="table">
	<tr>
		<td>작성자</td>
		<td><input type="text" class="bname" name="bname"></td>
	</tr>
	<tr>
		<td>E-Mail</td>
		<td><input type="text" class="bemail" name="bemail"></td>
	</tr>
	<tr>
		<td>홈페이지</td>
		<td><input type="text" class="bhomepage" name="bhomepage"></td>
	</tr>
	<tr>
		<td>제 목</td>
		<td><input type="text" class="btitle" name="btitle" value="<%=title%>"></td>
	</tr>
	<tr>
		<td>내 용</td>
		<td><textarea name="bcontent" class="bcontent" rows="8" cols="30"><%=content %></textarea></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" class="bpw" name="bpw"></td>
	</tr>
</table>
</form>
<div class="writebtnbox">
	<button type="button" onClick=replyf() class="btn btn-success">등 록</button>
	<button type="button" onClick="history.back()" class="btn btn-danger">뒤 로</button>
</div>