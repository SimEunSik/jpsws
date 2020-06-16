<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h1 class="content-title">글 읽기</h1>
<div id="board-wrap">
	<table class="pos">
		<tr>
			<th>작성자</th>
			<td>k2moon</td>
			<th>작성일</th>
			<td>2020-04-16</td>
		</tr>
		<tr>
			<th>E-mail</th>
			<td>k2moon@naver.com</td>
			<th>홈페이지</th>
			<td><a href="http://www.thecoding.kr" target="_blank">www.thecoding.kr</a></td>
		</tr>
		<tr>
			<th>제목</th>
			<td colspan="3">게시판 글읽기입니다.</td>
		</tr>
		<tr>
			<td colspan="4">게시판 글읽기입니다. <br> 게시판 글읽기입니다. <br> 게시판
				글읽기입니다. <br> 게시판 글읽기입니다. <br> 게시판 글읽기입니다. <br>
			</td>

		</tr>
		<tr>
			<td colspan="4" class="readnum">조회수 : 10&nbsp;</span>
			</td>

		</tr>
	</table>

	<div class="btnwrap">
		<a href="<%=request.getContextPath() %>/board/list.jsp" class="btn white">목록</a> 
		<a href="<%=request.getContextPath() %>/board/update.jsp" class="btn">수정</a> 
		<a href="<%=request.getContextPath() %>/board/reply.jsp" class="btn">답변</a> 
		<a href="<%=request.getContextPath() %>/board/delete.jsp" class="btn">삭제</a>
	</div>
</div>