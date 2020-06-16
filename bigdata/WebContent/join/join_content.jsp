<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2 class="text-info">회원 가입</h2>
<br>
<form action="/bigdata/join/join_form.jsp" method="post" id="join_form">
<div>
	<h4>사이트 이용정보 입력</h4>
	<input type="text" class="uid" name="id" placeholder="아이디">
	<br>
	<p id="won">영문자, 숫자, _만 입력 가능. 최소 3자이상 입력하세요.</p>
	<input type="password" class="upw" name="pw" placeholder="비밀번호">
	<p></p>
	<input type="password" class="repw" name="repw"
		placeholder="비밀번호확인">
</div>
<br>
<div>
	<h4>개인정보 입력</h4>
	<input type="text" class="uname" name="name" placeholder="이름">
	<p id="won">공백없이 한글, 영문, 숫자만 입력 가능 (한글2자, 영문4자 이상)</p>
	<p id="won">닉네임을 바꾸시면 앞으로 60일 이내에는 변경 할 수 없습니다.</p>
	<input type="text" class="unic" name="nicname" placeholder="닉네임">
	<p></p>
	<input type="text" class="umail" name="email" placeholder="E-mail">
</div>
</form>
<br>
<div class="btn-box">
	<div>
		<input type="button" onClick=join_check() class="btn btn-success" value="회원가입">
	</div>
	<div>
		<button class="btn btn-danger">
			<a href="<%=login_path%>login.jsp">취 소</a>
		</button>
	</div>
</div>

