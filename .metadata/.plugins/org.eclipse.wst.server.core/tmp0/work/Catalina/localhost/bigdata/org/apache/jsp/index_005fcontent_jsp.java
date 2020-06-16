/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.54
 * Generated at: 2020-05-11 02:11:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.bigdata.dto.BoardDto;
import java.util.ArrayList;
import com.bigdata.dao.BoardDao;

public final class index_005fcontent_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.bigdata.dao.BoardDao");
    _jspx_imports_classes.add("com.bigdata.dto.BoardDto");
    _jspx_imports_classes.add("java.util.ArrayList");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

BoardDao dao = BoardDao.getInstance();
ArrayList<BoardDto> boards = dao.getBoardAll();

      out.write("\r\n");
      out.write("\r\n");
      out.write("      <table class=\"table table-striped\">\r\n");
      out.write("      <tr>\r\n");
      out.write("          <td>번 호</td>\r\n");
      out.write("          <td>제 목</td>\r\n");
      out.write("          <td>작성자</td>\r\n");
      out.write("          <td>작성일</td>\r\n");
      out.write("          <td>조회수</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      ");

      if(boards.size()>0){
    	  String viewPath = "";
      for(BoardDto board : boards){
    	  viewPath = request.getContextPath()+"/board/list.jsp?idx="+board.getIdx();
    	  String space = "";
    	  int spaceCount = board.getIndent() * 2;
    	  for(int i=0;i<=spaceCount;++i){
    		  space += "&nbsp";
    	  }
      
      out.write("\r\n");
      out.write("      <tr>\r\n");
      out.write("          <td>");
      out.print(board.getIdx() );
      out.write("</td>\r\n");
      out.write("          <td>");
      out.print(space );
      out.write("<a href=\"");
      out.print(viewPath );
      out.write('"');
      out.write('>');
      out.print(board.getTitle() );
      out.write("</a></td>\r\n");
      out.write("          <td>");
      out.print(board.getName() );
      out.write("</td>\r\n");
      out.write("          <td>");
      out.print(board.getRegdate() );
      out.write("</td>\r\n");
      out.write("          <td>");
      out.print(board.getHit() );
      out.write("</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      ");
  
      }
      } else {
    	  out.println("<tr><td> colspan='5'>게시글이 없습니다.</td></tr>");
      }
      
      out.write("\r\n");
      out.write("  </table>\r\n");
      out.write("  <a href=\"");
      out.print(board_path);
      out.write("write.jsp\"><input type=\"button\" id=\"wbtn\" \r\n");
      out.write("    class=\"btn btn-success\" value=\"글쓰기\"></a>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"text-center\">\r\n");
      out.write("    <ul class=\"pagination justify-content-center\">\r\n");
      out.write("      <li class=\"page-item\"><a class=\"page-link\" href=\"#\">Previous</a></li>\r\n");
      out.write("      ");
for(int j=1;j<10;j++) { 
      out.write("\r\n");
      out.write("      <li class=\"page-item\"><a class=\"page-link\" href=\"#\">");
      out.print(j);
      out.write("</a></li>\r\n");
      out.write("      ");
} 
      out.write("\r\n");
      out.write("      <li class=\"page-item\"><a class=\"page-link\" href=\"#\">Next</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("  </div>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}