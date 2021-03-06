<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/layout/common.jsp"%>
<%page_name="write";%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%=page_name%>.jsp</title>
    <link rel="stylesheet" href="<%=css_path%>board.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
<div id="wrap">
  <header>
  	<%@ include file="/layout/header.jsp" %>
  </header>

   <div id="write">
   	<%@ include file="/mvcboard/write_content.jsp" %>
   </div>  
    
  <footer>
    <%@ include file="/layout/footer.jsp" %>
  </footer>
</div>
<script src="<%=js_path%>board.js"></script>
</body>
</html>