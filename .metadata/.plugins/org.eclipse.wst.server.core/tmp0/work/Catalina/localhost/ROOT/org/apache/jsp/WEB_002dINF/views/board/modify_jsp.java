/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.86
 * Generated at: 2024-05-27 06:21:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class modify_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(6);
    _jspx_dependants.put("/WEB-INF/views/board/../includes/footer.jsp", Long.valueOf(1716770234624L));
    _jspx_dependants.put("jar:file:/C:/java/Spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Trip03/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/views/board/../includes/header1.jsp", Long.valueOf(1716535517938L));
    _jspx_dependants.put("/WEB-INF/lib/spring-security-taglibs-5.2.7.RELEASE.jar", Long.valueOf(1714376254473L));
    _jspx_dependants.put("jar:file:/C:/java/Spring/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Trip03/WEB-INF/lib/spring-security-taglibs-5.2.7.RELEASE.jar!/META-INF/security.tld", Long.valueOf(1602058062000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1712112365428L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess;

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
    _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("<script	src=\"https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js\"></script>\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.7.1.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("        \n");
      out.write("<!DOCTYPE html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Flex - Responsive HTML Template</title>\n");
      out.write("    	<meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<!-- \n");
      out.write("Flex Template \n");
      out.write("http://www.templatemo.com/tm-406-flex\n");
      out.write("-->\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"/resources/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"/resources/css/font-awesome.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"/resources/css/animate.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"/resources/css/templatemo_misc.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"/resources/css/templatemo_style.css\">\n");
      out.write("\n");
      out.write("        <script src=\"/resources/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <div class=\"site-header\">\n");
      out.write("                <div class=\"main-header\">\n");
      out.write("                        <div id=\"menu-wrapper\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"logo-wrapper col-md-2 col-sm-2\">\n");
      out.write("                                    <h1>\n");
      out.write("                                        <a href=\"/main\">TRIP</a>\n");
      out.write("                                    </h1>\n");
      out.write("                                </div> <!-- /.logo-wrapper -->\n");
      out.write("                                <div class=\"col-md-10 col-sm-10 main-menu text-right\">\n");
      out.write("                                    <ul class=\"menu\">\n");
      out.write("                                        <li class=\"active\"><a href=\"/main\">메인 홈</a></li>\n");
      out.write("                                        <li><a href=\"#portfolio\">여행지</a></li>\n");
      out.write("                                        <li><a href=\"#services\">여행 계획</a></li>\n");
      out.write("                                        <li><a href=\"/board/list\">게시판</a> </li>\n");
      out.write("                                        <li><a href=\"/member/mypage\">마이페이지</a> </li>\n");
      out.write("                                        <li><a href=\"#\">고객 센터</a></li> \n");
      out.write("                                        ");
      if (_jspx_meth_sec_005fauthorize_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                        ");
      if (_jspx_meth_sec_005fauthorize_005f1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    </ul>                                    \n");
      out.write("                                </div> <!-- /.main-menu -->\n");
      out.write("                            </div> <!-- /.row -->\n");
      out.write("                        </div> <!-- /#menu-wrapper -->                        \n");
      out.write("                </div> <!-- /.main-header -->\n");
      out.write("            </div> <!-- /.site-header -->\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>        ");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- DataTables CSS -->\n");
      out.write("    <link href=\"/resources/vendor/datatables-plugins/dataTables.bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- DataTables Responsive CSS -->\n");
      out.write("    <link href=\"/resources/vendor/datatables-responsive/dataTables.responsive.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link href=\"/resources/dist/css/sb-admin-2.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom Fonts -->\n");
      out.write("    <link href=\"/resources/vendor/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    \n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("	<div class=\"container\">\n");
      out.write("		<h2>여행 후기 게시판</h2>\n");
      out.write("		<p>\n");
      out.write("			<strong>Trip.go?</strong>를 통하여 여행플랜을 계획한 여행지의 후기\n");
      out.write("		</p>\n");
      out.write("			<div class=\"form-group\">\n");
      out.write("				<form role=\"form\" action=\"/board/modify\" method=\"post\">\n");
      out.write("					<input type=\"hidden\" name=\"pageNum\" value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${cri.pageNum}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'>\n");
      out.write("           			<input type=\"hidden\" name=\"amount\" value='");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${cri.amount}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("'>\n");
      out.write("           			<input type=\"hidden\" name=\"type\" value=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${cri.type}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(">\n");
      out.write("					<input type=\"hidden\" name=\"keyword\" value=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${cri.keyword}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(">\n");
      out.write("           			\n");
      out.write("	           		<div class=\"form-group\">\n");
      out.write("	            		<label><strong>글번호</strong></label> \n");
      out.write("	            		<input class=\"form-control\" name=\"board_id\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${board.board_id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" style=\"border: none;\" readonly=\"readonly\">\n");
      out.write("	           		</div>\n");
      out.write("	           		\n");
      out.write("	           		<div class=\"form-group\">\n");
      out.write("	            		<label><strong>제목</strong></label> \n");
      out.write("	            		<input class=\"form-control\" name=\"title\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${board.title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("	           		</div>\n");
      out.write("	           		\n");
      out.write("	           		<div class=\"form-group\">\n");
      out.write("	            		<label><strong>내용</strong></label>\n");
      out.write("	            		<textarea rows=\"3\" class=\"form-control\" name=\"content\" style=\"resize: none; background-color: white; width:1120px; height: 600px;\" >\n");
      out.write("	            		");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${board.content}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("</textarea>\n");
      out.write("	           		</div>\n");
      out.write("	           		\n");
      out.write("	           		<div class=\"form-group\">\n");
      out.write("	            		<label><strong>닉네임</strong></label> \n");
      out.write("	            		<input class=\"form-control\" name=\"member_email\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${board.member_email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" style=\"border: none;\" readonly=\"readonly\">\n");
      out.write("	           		</div>\n");
      out.write("			           		<button type=\"submit\" data-oper='modify' class=\"btn btn-primary\" style=\"margin-top: 20px\">수정하기</button>\n");
      out.write("			           		<button type=\"submit\" data-oper='remove' class=\"btn btn-danger\" style=\"margin-top: 20px\">삭제하기</button>\n");
      out.write("	           				<button data-oper='list' class=\"btn btn-dark\"  style=\"margin-top: 20px; float: right\">돌아가기</button>\n");
      out.write("            	</form>	\n");
      out.write("			</div>\n");
      out.write("	</div>\n");
      out.write("	\n");
      out.write("	<script>\n");
      out.write(" 	$(document).ready(function(){\n");
      out.write(" 		\n");
      out.write(" 		let formObj = $(\"form\");\n");
      out.write(" 		\n");
      out.write(" 		$('button').on(\"click\", function(e){\n");
      out.write(" 			e.preventDefault();  \n");
      out.write(" 			\n");
      out.write(" 			let operation = $(this).data(\"oper\");\n");
      out.write(" 			\n");
      out.write(" 			if(operation === 'remove'){\n");
      out.write(" 				formObj.attr(\"action\", \"/board/remove\"); 				\n");
      out.write(" 			}else if(operation === 'list'){\n");
      out.write(" 				formObj.attr(\"action\", \"/board/list\").attr(\"method\",\"get\");\n");
      out.write(" 				\n");
      out.write(" 				let pageNumTag = $(\"input[name='pageNum']\").clone();\n");
      out.write(" 				let amountTag = $(\"input[name='amount']\").clone();\n");
      out.write(" 				let typeTag = $(\"input[name='type']\").clone();\n");
      out.write(" 				let keywordTag = $(\"input[name='keyword']\").clone();\n");
      out.write(" 			\n");
      out.write(" 				formObj.empty();\n");
      out.write(" 				\n");
      out.write(" 				formObj.append(pageNumTag);\n");
      out.write(" 				formObj.append(amountTag);\n");
      out.write(" 				formObj.append(typeTag);\n");
      out.write(" 				formObj.append(keywordTag);\n");
      out.write(" 			\n");
      out.write(" 			}\n");
      out.write(" 			formObj.submit();\n");
      out.write(" 		});\n");
      out.write(" 		\n");
      out.write(" 	});\n");
      out.write(" </script>\n");
      out.write("	\n");
      out.write("	\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("        <!-- /#page-wrapper -->\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <!-- /#wrapper -->\n");
      out.write("\n");
      out.write("    <!-- jQuery -->\n");
      out.write("    <script src=\"/resources/vendor/jquery/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core JavaScript -->\n");
      out.write("    <script src=\"/resources/vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Metis Menu Plugin JavaScript -->\n");
      out.write("    <script src=\"/resources/vendor/metisMenu/metisMenu.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- DataTables JavaScript -->\n");
      out.write("    <script src=\"/resources/vendor/datatables/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script src=\"/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"/resources/vendor/datatables-responsive/dataTables.responsive.js\"></script>\n");
      out.write("    <!-- Custom Theme JavaScript -->\n");
      out.write("    <script src=\"/resources/dist/js/sb-admin-2.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Page-Level Demo Scripts - Tables - Use for reference -->\n");
      out.write("    <script>\n");
      out.write("    $(document).ready(function() {\n");
      out.write("        $('#dataTables-example').DataTable({\n");
      out.write("            responsive: true\n");
      out.write("        });\n");
      out.write("        \n");
      out.write("        $(\".sidebar-nav\")\n");
      out.write("    	.attr(\"class\", \"sidebar-nav navbar-collapse collapse\")\n");
      out.write("    	.attr(\"aria-expanded\", 'false')\n");
      out.write("    	.attr(\"sytle\", \"height:1px\")\n");
      out.write("        \n");
      out.write("    });\n");
      out.write("    </script>\n");
      out.write("    \n");
      out.write("    <footer class=\"d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top\">\n");
      out.write("    <div class=\"col-md-4 d-flex align-items-center\">\n");
      out.write("      <a href=\"/\" class=\"mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1\">\n");
      out.write("        <svg class=\"bi\" width=\"30\" height=\"24\"><use xlink:href=\"#bootstrap\"></use></svg>\n");
      out.write("      </a>\n");
      out.write("      <span class=\"mb-3 mb-md-0 text-muted\">© 2024 Tripgo? Company, Inc<br><br>\n");
      out.write("      <li style=\"line-height:60%\" class=\"footerlistyle\"><a href=\"\" style=\"text-decoration: none\" class=\"footerastyle\">이용약관</a></li><br>\n");
      out.write("      <li style=\"line-height:60%\" class=\"footerlistyle\"><a href=\"\" style=\"text-decoration: none\" class=\"footerastyle\">개인정보처리방침</a></li><br>\n");
      out.write("      <li style=\"line-height:20%\" class=\"footerlistyle\"><a href=\"\" style=\"text-decoration: none\" class=\"footerastyle\">1:1문의</a></li><br>\n");
      out.write("      ▶ 문의메일: TeamProject@Tripgo.co.kr<br>\n");
      out.write("      ▶ 대표번호: 010-0000-0000<br>\n");
      out.write("      </span>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <ul class=\"nav col-md-4 justify-content-end list-unstyled d-flex\">\n");
      out.write("      <li class=\"ms-3\"><a class=\"text-muted\" href=\"https://www.facebook.com/?locale=ko_KR\"><img src=\"../resources/image/Facebook.png\" alt=\"\" width=\"30\" height=\"30\"></a></li>\n");
      out.write("      <li class=\"ms-3\"><a class=\"text-muted\" href=\"https://www.instagram.com/\"><img src=\"../resources/image/instagram.png\" alt=\"\" width=\"30\" height=\"30\"></a></li>\n");
      out.write("      <li class=\"ms-3\"><a class=\"text-muted\" href=\"https://twitter.com/?lang=ko\"><img src=\"../resources/image/twiiter.png\" alt=\"\" width=\"30\" height=\"30\"></a></li>\n");
      out.write("      <li class=\"ms-3\"><a class=\"text-muted\" href=\"https://www.kakaocorp.com/page/service/service/KakaoTalk\"><img src=\"../resources/image/kakaotalk.png\" alt=\"\" width=\"30\" height=\"30\"></a></li>\n");
      out.write("    </ul>\n");
      out.write("  </footer>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("    ");
      out.write("\n");
      out.write("      \n");
      out.write("</html>\n");
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

  private boolean _jspx_meth_sec_005fauthorize_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  sec:authorize
    org.springframework.security.taglibs.authz.JspAuthorizeTag _jspx_th_sec_005fauthorize_005f0 = (org.springframework.security.taglibs.authz.JspAuthorizeTag) _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.get(org.springframework.security.taglibs.authz.JspAuthorizeTag.class);
    boolean _jspx_th_sec_005fauthorize_005f0_reused = false;
    try {
      _jspx_th_sec_005fauthorize_005f0.setPageContext(_jspx_page_context);
      _jspx_th_sec_005fauthorize_005f0.setParent(null);
      // /WEB-INF/views/board/../includes/header1.jsp(42,40) name = access type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_sec_005fauthorize_005f0.setAccess("isAnonymous()");
      int _jspx_eval_sec_005fauthorize_005f0 = _jspx_th_sec_005fauthorize_005f0.doStartTag();
      if (_jspx_eval_sec_005fauthorize_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        out.write(" <!-- 로그인 안했을 때 표시 -->\n");
        out.write("                                        <li><a href=\"/customLogin\">로그인</a></li>\n");
        out.write("                                        ");
      }
      if (_jspx_th_sec_005fauthorize_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.reuse(_jspx_th_sec_005fauthorize_005f0);
      _jspx_th_sec_005fauthorize_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_sec_005fauthorize_005f0, _jsp_getInstanceManager(), _jspx_th_sec_005fauthorize_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_sec_005fauthorize_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  sec:authorize
    org.springframework.security.taglibs.authz.JspAuthorizeTag _jspx_th_sec_005fauthorize_005f1 = (org.springframework.security.taglibs.authz.JspAuthorizeTag) _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.get(org.springframework.security.taglibs.authz.JspAuthorizeTag.class);
    boolean _jspx_th_sec_005fauthorize_005f1_reused = false;
    try {
      _jspx_th_sec_005fauthorize_005f1.setPageContext(_jspx_page_context);
      _jspx_th_sec_005fauthorize_005f1.setParent(null);
      // /WEB-INF/views/board/../includes/header1.jsp(45,40) name = access type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_sec_005fauthorize_005f1.setAccess("isAuthenticated()");
      int _jspx_eval_sec_005fauthorize_005f1 = _jspx_th_sec_005fauthorize_005f1.doStartTag();
      if (_jspx_eval_sec_005fauthorize_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        out.write(" <!--  로그인 하였을 때 표시 -->\n");
        out.write("                                        <li><a href=\"/customLogout\">로그아웃</a></li>\n");
        out.write("                                        ");
      }
      if (_jspx_th_sec_005fauthorize_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fsec_005fauthorize_0026_005faccess.reuse(_jspx_th_sec_005fauthorize_005f1);
      _jspx_th_sec_005fauthorize_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_sec_005fauthorize_005f1, _jsp_getInstanceManager(), _jspx_th_sec_005fauthorize_005f1_reused);
    }
    return false;
  }
}