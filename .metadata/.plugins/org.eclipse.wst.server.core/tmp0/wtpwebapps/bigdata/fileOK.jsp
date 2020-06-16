<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
final String saveFolder = "D:/bigdata/jsp/jpsws/bigdata/WebContent/fileupload";
final int maxSize = 1024 * 1024 * 11;

MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "UTF-8", new DefaultFileRenamePolicy());
String fileName = multi.getFilesystemName("uploadFile");
String original = multi.getOriginalFileName("uploadFile");
String type = multi.getContentType("uploadFile");
File f = multi.getFile("uploadFile");
int len = 0;
if(f != null){
	len = (int)f.length();
}
String writer = multi.getParameter("writer");




%>
<h1>
파일 올린사람 <%=writer%><br>
저장된 파일명 <%=fileName%><br>
업로드 파일명 <%=original%><br>
업로드 파일타입 <%=type%><br>
업로드 파일크기 <%=len%><br>

<a href="<%=request.getContextPath()%>/fileupload/<%=fileName%>"><%=fileName %></a>



</h1>