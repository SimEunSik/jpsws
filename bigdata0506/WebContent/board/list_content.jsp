<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h1 class="content-title">글 읽기</h1>
<div id="board-wrap">
	<table class="pos">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회</th>
		</tr>
		<%
			for (int i = 10; i > 0; i--) {
		%>
		<tr>
			<td><%=i%></td>
			<td><a href="<%=request.getContextPath() %>/board/view.jsp">게시판 글입니다 <%=i%></a></td>
			<td>k2moon</td>
			<td>2020-04-16</td>
			<td>1234</td>
		</tr>
		<%
			}
		%>
		<tr>
			<td colspan="5">
				<%
					for (int i = 1; i < 10; i++) {
				%> <a href="<%=request.getContextPath() %>/board/list.jsp">[<%=i%>]
			</a> <%
 	}
 %>
			</td>
		</tr>
		<tr>
			<td colspan="5"><a href="<%=request.getContextPath() %>/board/write.jsp" class="btn">글쓰기</a></td>
		</tr>
	</table>
</div>