<%@page import="com.bigdata.dto.JoinDto"%>
<%@page import="com.bigdata.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bigdata.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <table class="table table-striped">
      <tr>
          <td>ID</td>
          <td>PW</td>
          <td>Name</td>
          <td>NickName</td>
          <td>E-mail</td>
      </tr>
      <%
      ArrayList<JoinDto> memberList = (ArrayList<JoinDto>)request.getAttribute("memberList");
      for(JoinDto member : memberList){
      %>
      <tr>
          <td><%=member.getId() %></td>
          <td><%=member.getPw() %></a></td>
          <td><%=member.getName() %></td>
          <td><%=member.getNickname() %></td>
          <td><%=member.getEmail() %></td>
      </tr>
      <%  
      } 
      %>
  </table>

