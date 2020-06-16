<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<form action="/bigdata/login/login_form.jsp" method="post"
	id="login_form" name="login_form">
	<fieldset id="fieldset">
		<legend>
			<span class="text-info">로 그 인</span>
		</legend>
		<input type="text" class="uid" name="id" placeholder="아이디(필수)"><br>
		<br> <input type="password" class="upw" name="pw"
			placeholder="비밀번호(필수)"><br> <br>
		<div class="btns">
			<div>
				<input type="button" class="btn btn-success" value="로 그 인">
			</div>
			<div class="jo">
				<a href="<%=join_path%>join.jsp"><input type="button" id="lbtn2"
					class="btn btn-primary" value="회원가입"></a>
			</div>
		</div>
	</fieldset>
</form>