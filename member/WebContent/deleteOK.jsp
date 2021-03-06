<%@page import="com.javalex.ex.MemberInfoDao"%>
<%@page import="com.javalex.ex.MemberInfoDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<% // 로그인 체크

String id = (String)session.getAttribute("id");
if(id == null) { // 비로그인%>
<jsp:forward page="login.jsp" />
<%} %>

<% // 값 받아야지
String pw = request.getParameter("pw");

// DB에 일 시켜야지(dao)
MemberInfoDao dao = MemberInfoDao.getInstance();

// pw 맞는지 확인
int ri = dao.userCheck(id, pw); // 1 성공 | 0 실패
%>

<% // 실패|성공 분기
if(ri == 0){ %>
<script> // 실패
	alert('비밀번호가 다릅니다. 다시 시도해 주세요.')
	history.back();
</script>
<%} else if (ri == 1) {
	ri = dao.memberInfoDelete(id); // 1 성공 | 0 실패
	if(ri == 0){%>
	<script> // 실패
	alert('회원탈퇴 실패 잠시 후 다시 해주세요')
	history.back();
</script>	
	<%} else if(ri == 1){
	session.invalidate(); // 로그인 정보 삭제 %>
	<script>
		alert('회원탈퇴가 정상처리 되었습니다. 더 좋은 서비스로 보답하겠습니다.')
		location.href='login.jsp';
	</script>
 	<%}	
}%>