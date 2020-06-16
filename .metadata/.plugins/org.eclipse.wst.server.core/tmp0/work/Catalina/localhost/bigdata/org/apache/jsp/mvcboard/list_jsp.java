/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.54
 * Generated at: 2020-05-15 05:09:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.mvcboard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import com.bigdata.dto.BoardDto;
import com.bigdata.dao.BoardDao;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


String app_path = "/bigdata";
String css_path = app_path + "/css/";
String js_path = app_path + "/js/";
String img_path = app_path + "/img/";
String layout_path = app_path + "/layout/";
String join_path = app_path + "/join/";
String login_path = app_path + "/login/";
String board_path = app_path + "/board/";
String modify_path = app_path + "/modify/";
String delete_path = app_path + "/delete/";
String page_name = "";

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(5);
    _jspx_dependants.put("/mvcboard/list_content.jsp", Long.valueOf(1589337431531L));
    _jspx_dependants.put("/layout/footer.jsp", Long.valueOf(1587721303237L));
    _jspx_dependants.put("/layout/common.jsp", Long.valueOf(1588146366580L));
    _jspx_dependants.put("/layout/header.jsp", Long.valueOf(1589512342786L));
    _jspx_dependants.put("/layout/search.jsp", Long.valueOf(1589176516721L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.bigdata.dao.BoardDao");
    _jspx_imports_classes.add("java.util.ArrayList");
    _jspx_imports_classes.add("com.bigdata.dto.BoardDto");
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

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
page_name="list";
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>");
      out.print(page_name);
      out.write(".jsp</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print(css_path);
      out.write("board.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\r\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\" integrity=\"sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"wrap\">\r\n");
      out.write("  <header>\r\n");
      out.write("  \t");
      out.write("\r\n");
      out.write("\r\n");

String id  = (String)session.getAttribute("userId");

      out.write("\r\n");
      out.write("<a class=\"logo\" href=\"");
      out.print(app_path);
      out.write("/index.jsp\"> <img\r\n");
      out.write("\tsrc=\"");
      out.print(img_path);
      out.write("dog01.png\" height=\"36px\">\r\n");
      out.write("</a>\r\n");
if(id == null) {
      out.write("\r\n");
      out.write("<nav>\r\n");
      out.write("\t<ul class=\"nav-items\">\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(login_path);
      out.write("login.jsp\">Login</a></li>\r\n");
      out.write("\t\t<li>|</li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(join_path);
      out.write("join.jsp\">회원가입</a></li>\r\n");
      out.write("\t\t<li>|</li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(board_path);
      out.write("list.jsp\">게시판</a></li>\r\n");
      out.write("\t\t<li>|</li>\r\n");
      out.write("\t\t<li><a href=\"/bigdata/mvcboard/list.do\">MVC 게시판</a></li>\r\n");
      out.write("\t\t<li>|</li>\r\n");
      out.write("\t\t<li><a href=\"/bigdata/mvcboard/index.do\">MVC-jstl 게시판</a></li>\r\n");
      out.write("\t\t<li>|</li>\r\n");
      out.write("\t\t<li><a href=\"/bigdata/main.member\">MVC Member</a></li>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</ul>\r\n");
      out.write("</nav>\r\n");
}else{ 
      out.write("\r\n");
      out.write("<nav>\r\n");
      out.write("\t<ul class=\"nav-items\">\r\n");
      out.write("\t\t<li><a href=\"#\">");
      out.print(id);
      out.write("</a>님 환영합니다</li>\r\n");
      out.write("\t\t<li>|</li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(app_path);
      out.write("/logout_form.jsp\">로그아웃</a></li>\r\n");
      out.write("\t\t<li>|</li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(modify_path);
      out.write("modify.jsp\">회원정보수정</a></li>\r\n");
      out.write("\t\t<li>|</li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(board_path);
      out.write("list.jsp\">게시판</a></li>\r\n");
      out.write("\t\t<li>|</li>\r\n");
      out.write("\t\t<li><a href=\"/bigdata/mvcboard/list.do\">MVC게시판</a></li>\r\n");
      out.write("\t\t<li>|</li>\r\n");
      out.write("\t\t<li><a href=\"");
      out.print(delete_path);
      out.write("delete.jsp\">회원탈퇴</a></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("</nav>\r\n");
} 
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("  </header>\r\n");
      out.write("\r\n");
      out.write("   <div id=\"content\" class=\"container\">\r\n");
      out.write("   \t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  \r\n");

ArrayList<BoardDto> boards = (ArrayList<BoardDto>)request.getAttribute("boards");
int count = (int)request.getAttribute("count");
int pageCount = (int)request.getAttribute("pageCount");
int pageNum = (int)request.getAttribute("pageNum");

      out.write("    \r\n");
      out.write("<div id=\"board-wrap\">Total : ");
      out.print(count );
      out.write(" / Page : ");
      out.print(pageNum );
      out.write(' ');
      out.write('/');
      out.write(' ');
      out.print(pageCount );
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<form action=\"");
      out.print(request.getContextPath() );
      out.write("/search.jsp\" method=\"post\">\r\n");
      out.write("<select name=\"keyword\">\r\n");
      out.write("\t<option value=\"title\">제목(Title)</option>\r\n");
      out.write("\t<option value=\"content\">내용(Content)</option>\r\n");
      out.write("\t<option value=\"name\">작성자(Name)</option>\r\n");
      out.write("</select>\r\n");
      out.write("<input type=\"text\" name=\"searchWord\" placeholder=\"입력하세요\">\r\n");
      out.write("<input type=\"submit\" value=\"Search\">\r\n");
      out.write("</form>");
      out.write("\r\n");
      out.write("<table class=\"table table-striped\">\r\n");
      out.write("        <tr>\r\n");
      out.write("            <td>번 호</td>\r\n");
      out.write("            <td>제 목</td>\r\n");
      out.write("            <td>작성자</td>\r\n");
      out.write("            <td>작성일</td>\r\n");
      out.write("            <td>조회수</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("        ");

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
    	
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("            <td>");
      out.print(board.getIdx() );
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print(space );
      out.write("<a href=\"");
      out.print(viewPath);
      out.write('"');
      out.write('>');
      out.print(board.getTitle() );
      out.write("</a></td>\r\n");
      out.write("            <td>");
      out.print(board.getName() );
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print(board.getRegdate() );
      out.write("</td>\r\n");
      out.write("            <td>");
      out.print(board.getHit() );
      out.write("</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("\t\t");
	}
		} else {
			out.println("<tr><td colspan='5'>게시글이 없습니다.</td></tr>");
		}
		
        
      out.write("\r\n");
      out.write("        \r\n");
      out.write("    </table>\r\n");
      out.write("    <a href=\"");
      out.print(request.getContextPath());
      out.write("/mvcboard/write.do\"><input type=\"button\" id=\"wbtn\" \r\n");
      out.write("      \tclass=\"btn btn-success\" value=\"글쓰기\"></a>\r\n");
      out.write("    <a href=\"");
      out.print(request.getContextPath());
      out.write("/mvcboard/fwrite.do\"><input type=\"button\" id=\"wbtn\" \r\n");
      out.write("    \tclass=\"btn btn-warning\" value=\"파일업로드 글쓰기\"></a>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"text-center\">\r\n");
      out.write("      <ul class=\"pagination justify-content-center\">\r\n");
      out.write("        <li class=\"page-item\"><a class=\"page-link\" href=\"#\">Previous</a></li>\r\n");
      out.write("         ");
for(int j=0;j<pageCount;j++) { 
	      if(j == pageNum){
      out.write("\r\n");
      out.write("\t      <li class=\"page-item\"><a class=\"page-link\" ><strong>");
      out.print(j+1);
      out.write("</strong></a></li>\r\n");
      out.write("\t      ");
} else { 
      out.write("\r\n");
      out.write("\t      <li class=\"page-item\"><a class=\"page-link\" href=\"");
      out.print(request.getContextPath());
      out.write("/mvcboard/list.do?page=");
      out.print(j+1);
      out.write('"');
      out.write('>');
      out.print(j+1);
      out.write("</a></li>\r\n");
      out.write("\t      ");
} }
      out.write("\r\n");
      out.write("        <li class=\"page-item\"><a class=\"page-link\" href=\"#\">Next</a></li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </div>");
      out.write("\r\n");
      out.write("   </div>  \r\n");
      out.write("    \r\n");
      out.write("  <footer>\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div>이용약관 | 개인정보취급방침</div>\r\n");
      out.write("<div>서울특별시 구로구 디지털로 306 (구로동, 대륭포스트타워 2차 212호,218호,219호) | t.\r\n");
      out.write("\t02-2082-1688 | F. 031-000-0000</div>\r\n");
      out.write("<div>Copyright ⓒ THEJOEUN ACADEMY Corp.. All Rights Reserved.</div>");
      out.write("\r\n");
      out.write("  </footer>\r\n");
      out.write("</div>\r\n");
      out.write("<script src=\"");
      out.print(js_path);
      out.write("board.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
