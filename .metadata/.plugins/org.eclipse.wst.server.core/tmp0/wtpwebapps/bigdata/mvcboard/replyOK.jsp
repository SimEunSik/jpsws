<%@page import="com.bigdata.dao.BoardDao"%>
<%@page import="com.bigdata.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
int ri = (int)request.getAttribute("ri");
// 글 입력 처리 후 이동
%>
<script>
<%if(ri == 1){%>
	alert('글답변 성공');
	location.href='<%=request.getContextPath()%>/mvcboard/list.do';
<%} else { %>
	alert('글답변 실패');
	location.href='<%=request.getContextPath()%>/mvcboard/reply.do';
<%}%>
</script>