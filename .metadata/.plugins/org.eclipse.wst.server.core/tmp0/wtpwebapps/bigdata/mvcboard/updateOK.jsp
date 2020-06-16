<%@page import="com.bigdata.dao.BoardDao"%>
<%@page import="com.bigdata.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// updateOk.jsp
// 넘어온 데이터 받기 => dao 보내기
request.setCharacterEncoding("UTF-8");
int ri = (int)request.getAttribute("ri");
int idx = (int)request.getAttribute("idx");
	
	// 페이지 이동
	if(ri == 1){
%>
<script>
	alert('글 수정 성공');
	location.href='<%=request.getContextPath()%>/mvcboard/view.do?idx=<%=idx%>';
</script>
<%		
	}else if(ri == 0){
%>
<script>
	alert('글 수정 실패');
	location.href='<%=request.getContextPath()%>/mvcboard/update.do?idx=<%=idx%>';
</script>
<%	
}else{
%>
<script>
	alert('비밀번호가 틀립니다');
	location.href='<%=request.getContextPath()%>/mvcboard/update.do?idx=<%=idx%>';
</script>
<%}%>
