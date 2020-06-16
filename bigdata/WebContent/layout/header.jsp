<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String id  = (String)session.getAttribute("userId");
%>
<a class="logo" href="<%=app_path%>/index.jsp"> <img
	src="<%=img_path%>dog01.png" height="36px">
</a>
<%if(id == null) {%>
<nav>
	<ul class="nav-items">
		<li><a href="<%=login_path%>login.jsp">Login</a></li>
		<li>|</li>
		<li><a href="<%=join_path%>join.jsp">회원가입</a></li>
		<li>|</li>
		<li><a href="<%=board_path%>list.jsp">게시판</a></li>
		<li>|</li>
		<li><a href="/bigdata/mvcboard/list.do">MVC 게시판</a></li>
		<li>|</li>
		<li><a href="/bigdata/index.do">MVC-jstl 게시판</a></li>
		<li>|</li>
		<li><a href="/bigdata/main.member">MVC Member</a></li>
		
	</ul>
</nav>
<%}else{ %>
<nav>
	<ul class="nav-items">
		<li><a href="#"><%=id%></a>님 환영합니다</li>
		<li>|</li>
		<li><a href="<%=app_path%>/logout_form.jsp">로그아웃</a></li>
		<li>|</li>
		<li><a href="<%=modify_path%>modify.jsp">회원정보수정</a></li>
		<li>|</li>
		<li><a href="<%=board_path%>list.jsp">게시판</a></li>
		<li>|</li>
		<li><a href="/bigdata/mvcboard/list.do">MVC게시판</a></li>
		<li>|</li>
		<li><a href="<%=delete_path%>delete.jsp">회원탈퇴</a></li>
	</ul>
</nav>
<%} %>
