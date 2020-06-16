<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<br>
<h3>
	<p class="text-info">게시판 글쓰기</p>
</h3>
<form action="<%=request.getContextPath() %>/mvcboard/writeOK.do" method="post" name="write">
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
		<td><input type="text" class="btitle" name="btitle"></td>
	</tr>
	<tr>
		<td>내 용</td>
		<td><textarea name="bcontent" class="bcontent" rows="8" cols="30"></textarea></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" class="bpw" name="bpw"></td>
	</tr>
</table>

<div class="writebtnbox">
	<button type="button" onClick=writef() class="btn btn-success">등 록</button>
	<button type="button" onClick="history.go(-1)" class="btn btn-danger">뒤 로</button>
</div>
</form>
