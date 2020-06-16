<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	String sIdx = request.getParameter("idx");
	int idx = Integer.parseInt(sIdx);
	BoardDao dao = BoardDao.getInstance();
	//조회수 증가시켜
	dao.setBoardHit(idx);
	// 글1개 가져오기
	BoardDto board = dao.getBoardOne(idx);
	
	String content = board.getContent().replace("\n", "<br>");
	
	%>
<br>
<h3>
	<p class="text-info">글 읽기</p>
</h3>
<table class="table table-striped">
	<tr>
		<td>작성자</td>
		<td><%=board.getName() %></td>
		<td>작성일</td>
		<td><%=board.getRegdate() %></td>
	</tr>
	<tr>
		<td>E-mail</td>
		<td><%=board.getEmail() %></td>
		<td>홈페이지</td>
		<td>
		<% if(board.getHomepage().length() == 0){ %>
		</td>
		<%} else { %>
		<a href="<%=board.getHomepage() %>" target="_blank">www.thecoding.kr</a></td>
		<%} %>
	</tr>
	<tr>
		<td>제 목</td>
		<td colspan="3"><%=board.getTitle() %></td>
	</tr>
	<tr>
		<td colspan="4"><%=content %></td>
	</tr>
	<tr>
		<td colspan="4">조회수 : <%=board.getHit() %></td>
	</tr>
</table>
<div class="brap">
	 <a href="<%=board_path%>list.jsp"><input type="button"	class="btn btn-success" value="목록"></a>
	 <a href="<%=board_path%>update.jsp?idx=<%=idx%>"><input type="button" class="btn btn-primary" value="수정"></a>
	 <a	href="<%=board_path%>reply.jsp?idx=<%=idx%>"><input type="button" class="btn btn-warning" value="답변"></a>
	 <a href="<%=board_path%>delete.jsp?idx=<%=idx%>"><input type="button" class="btn btn-danger" value="삭제"></a>
</div>