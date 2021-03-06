<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//페이지 번호
int pageNum = 0;
if(request.getParameter("page") == null){
	pageNum = 1;
} else {
	pageNum = Integer.parseInt(request.getParameter("page"));
}

//한 페이지 list count
int pageList = 10;

//검색어
String keyWord = request.getParameter("keyword");
String searchWord = request.getParameter("searchWord");

// 글 목록 전체 가져오기
BoardDao dao = BoardDao.getInstance();
ArrayList<BoardDto> boards = dao.getBoardSearch(pageNum, pageList, keyWord, searchWord);

// 검색 전체 list count
int count = dao.getCount(keyWord, searchWord);

// page count
int pageCount = (int)Math.ceil((double)count / pageList);

String idx = request.getParameter("idx");
%>
<div id="board-wrap">Total : <%=count %> / Page : <%=pageNum %> / <%=pageCount %></div>
<%@ include file="/layout/search.jsp" %> <a href="./index.jsp">[List]</a>
      <table class="table table-striped">
      <tr>
          <td>번 호</td>
          <td>제 목</td>
          <td>작성자</td>
          <td>작성일</td>
          <td>조회수</td>
      </tr>
      <%
      if(boards.size()>0){
    	  String viewPath = "";
      for(BoardDto board : boards){
    	  viewPath = request.getContextPath()+"/board/list.jsp?idx="+board.getIdx();
    	  String space = "";
    	  int spaceCount = board.getIndent() * 2;
    	  for(int i=0;i<=spaceCount;++i){
    		  space += "&nbsp";
    	  }
      %>
      <tr>
          <td><%=board.getIdx() %></td>
          <td><%=space %><a href="<%=viewPath %>"><%=board.getTitle() %></a></td>
          <td><%=board.getName() %></td>
          <td><%=board.getRegdate() %></td>
          <td><%=board.getHit() %></td>
      </tr>
      <%  
      }
      } else {
    	  out.println("<tr><td colspan='5'>게시글이 없습니다.</td></tr>");
      }
      %>
  </table>
  <a href="<%=request.getContextPath()%>/board/write.jsp"><input type="button" id="wbtn" 
    class="btn btn-success" value="글쓰기"></a>
	<a href="<%=request.getContextPath()%>/board/fwrite.jsp"><input type="button" id="wbtn" 
    class="btn btn-warning" value="파일업로드 글쓰기"></a>
  <div class="text-center">
    <ul class="pagination justify-content-center">
      <li class="page-item"><a class="page-link" href="#">Previous</a></li>
      <%for(int j=1;j<pageCount;j++) {
    	  String path = request.getContextPath()+"search.jsp?page="+j+"&keyWord="+keyWord+"&searchWord="+searchWord;
      if(j == pageNum){%>
      <li class="page-item"><a class="page-link"><strong><%=j%></strong></a></li>
      <%} else { %>
      <li class="page-item"><a class="page-link" href="<%=path%>"><%=j%></a></li>
      <%} }%>
      <li class="page-item"><a class="page-link" href="#">Next</a></li>
    </ul>
  </div>
