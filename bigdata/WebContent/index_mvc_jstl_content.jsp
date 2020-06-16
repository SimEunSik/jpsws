<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
ArrayList<BoardDto> boards = (ArrayList<BoardDto>)request.getAttribute("boards");
int count = (int)request.getAttribute("count");
int pageCount = (int)request.getAttribute("pageCount");
int pageNum = (int)request.getAttribute("pageNum");
%>
<div id="board-wrap">Total : ${count} | Page : ${pageNum} / ${pageCount}</div>
<%@ include file="/layout/search.jsp" %>
      <table class="table table-striped">
      <tr>
          <td>번 호</td>
          <td>제 목</td>
          <td>작성자</td>
          <td>작성일</td>
          <td>조회수</td>
      </tr>
      <c:choose>
      <c:when test="${boards ne null}">
      <c:forEach items="${boards}" var="board">
	      <tr>
	          <td>${board.idx}</td>
	          <td>
	          <c:url value="/mvcboard/view.do" var="view">
	          	<c:param name="idx" value="${board.idx}"></c:param>
	          </c:url>
	          <a href="${ivew}">${board.title}</a>
	          </td>
	          <td>${board.name }</td>
	          <td>${board.regdate }</td>
	          <td>${board.hit }</td>
	      </tr>
      </c:forEach>
      </c:when>
	      <c:otherwise>
		      <tr>
		      	<td colspan='5'>게시글이 없습니다.</td>
		      </tr>
	      </c:otherwise>
      </c:choose>
  </table>
  <a href="<%=request.getContextPath()%>/mvcboard/write.do"><input type="button" id="wbtn" 
    class="btn btn-success" value="글쓰기"></a>
<a href="<%=request.getContextPath()%>/mvcboard/fwrite.do"><input type="button" id="wbtn" 
    class="btn btn-warning" value="파일업로드 글쓰기"></a>
  <div class="text-center">
    <ul class="pagination justify-content-center">
      <li class="page-item"><a class="page-link" href="#">Previous</a></li>
      <c:forEach var="i" begin="1" end="${pageCount}"> 
	      <c:choose>
	      	<c:when test="${i eq pageNum}"><li class="page-item"><a class="page-link"><strong>${i}</strong></a></li></c:when>
	      	<c:when test="${i ne pageNum}"><li class="page-item"><a class="page-link" href="/bigdata/index.do?page=${i}">${i}</a></li></c:when>
	      </c:choose>
      </c:forEach>
      <li class="page-item"><a class="page-link" href="#">Next</a></li>
    </ul>
  </div>