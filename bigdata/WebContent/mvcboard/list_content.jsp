<%@page import="java.util.ArrayList"%>
<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%
ArrayList<BoardDto> boards = (ArrayList<BoardDto>)request.getAttribute("boards");
int count = (int)request.getAttribute("count");
int pageCount = (int)request.getAttribute("pageCount");
int pageNum = (int)request.getAttribute("pageNum");
%>    
<div id="board-wrap">Total : <%=count %> / Page : <%=pageNum %> / <%=pageCount %></div>
<%@ include file="/layout/search.jsp" %>
<table class="table table-striped">
        <tr>
            <td>번 호</td>
            <td>제 목</td>
            <td>작성자</td>
            <td>작성일</td>
            <td>조회수</td>
        </tr>
        <%
        // db에서 전체 board 정보 가져오기
        if(boards.size()>0){
    	  String viewPath = "";
      	for(BoardDto board : boards){
    	  viewPath = request.getContextPath()+"/mvcboard/view.do?idx="+board.getIdx();
    	  String space = "";
    	  int spaceCount = board.getIndent() * 2;
    	  for(int i=0;i<=spaceCount;++i){
    		  space += "&nbsp";
    	  }
    	%>
		<tr>
            <td><%=board.getIdx() %></td>
            <td><%=space %><a href="<%=viewPath%>"><%=board.getTitle() %></a></td>
            <td><%=board.getName() %></td>
            <td><%=board.getRegdate() %></td>
            <td><%=board.getHit() %></td>
        </tr>
		<%	}
		} else {
			out.println("<tr><td colspan='5'>게시글이 없습니다.</td></tr>");
		}
		
        %>
        
    </table>
    <a href="<%=request.getContextPath()%>/mvcboard/write.do"><input type="button" id="wbtn" 
      	class="btn btn-success" value="글쓰기"></a>
    <a href="<%=request.getContextPath()%>/mvcboard/fwrite.do"><input type="button" id="wbtn" 
    	class="btn btn-warning" value="파일업로드 글쓰기"></a>

    <div class="text-center">
      <ul class="pagination justify-content-center">
        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
         <%for(int j=0;j<pageCount;j++) { 
	      if(j == pageNum){%>
	      <li class="page-item"><a class="page-link" ><strong><%=j+1%></strong></a></li>
	      <%} else { %>
	      <li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/mvcboard/list.do?page=<%=j+1%>"><%=j+1%></a></li>
	      <%} }%>
        <li class="page-item"><a class="page-link" href="#">Next</a></li>
      </ul>
    </div>