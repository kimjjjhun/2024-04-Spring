/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.86
 * Generated at: 2024-04-18 09:00:40 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class google_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<style>.LGLeeN-keyboard-shortcuts-view{display:-webkit-box;display:-webkit-flex;display:-moz-box;display:-ms-flexbox;display:flex}.LGLeeN-keyboard-shortcuts-view table,.LGLeeN-keyboard-shortcuts-view tbody,.LGLeeN-keyboard-shortcuts-view td,.LGLeeN-keyboard-shortcuts-view tr{background:inherit;border:none;margin:0;padding:0}.LGLeeN-keyboard-shortcuts-view table{display:table}.LGLeeN-keyboard-shortcuts-view tr{display:table-row}.LGLeeN-keyboard-shortcuts-view td{-moz-box-sizing:border-box;box-sizing:border-box;display:table-cell;color:#000;padding:6px;vertical-align:middle;white-space:nowrap}.LGLeeN-keyboard-shortcuts-view td:first-child{text-align:end}.LGLeeN-keyboard-shortcuts-view td kbd{background-color:#e8eaed;border-radius:2px;border:none;-moz-box-sizing:border-box;box-sizing:border-box;color:inherit;display:inline-block;font-family:Google Sans Text,Roboto,Arial,sans-serif;line-height:16px;margin:0 2px;min-height:20px;min-width:20px;padding:2px 4px;position:relative;text-align:center}\r\n");
      out.write("</style>\r\n");
      out.write("<style>.gm-control-active>img{-webkit-box-sizing:content-box;box-sizing:content-box;display:none;left:50%;pointer-events:none;position:absolute;top:50%;-webkit-transform:translate(-50%,-50%);-ms-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}.gm-control-active>img:nth-child(1){display:block}.gm-control-active:focus>img:nth-child(1),.gm-control-active:hover>img:nth-child(1),.gm-control-active:active>img:nth-child(1),.gm-control-active:disabled>img:nth-child(1){display:none}.gm-control-active:focus>img:nth-child(2),.gm-control-active:hover>img:nth-child(2){display:block}.gm-control-active:active>img:nth-child(3){display:block}.gm-control-active:disabled>img:nth-child(4){display:block}sentinel{}\r\n");
      out.write("</style>\r\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans:400,500,700|Google+Sans+Text:400&amp;lang=ko\"><link type=\"text/css\" rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Google+Sans+Text:400&amp;text=%E2%86%90%E2%86%92%E2%86%91%E2%86%93&amp;lang=ko\"><style>.gm-ui-hover-effect{opacity:.6}.gm-ui-hover-effect:hover{opacity:1}.gm-ui-hover-effect>span{background-color:#000}@media (forced-colors:active),(prefers-contrast:more){.gm-ui-hover-effect>span{background-color:ButtonText}}sentinel{}\r\n");
      out.write("</style>\r\n");
      out.write("<style>.gm-style .gm-style-cc a,.gm-style .gm-style-cc button,.gm-style .gm-style-cc span,.gm-style .gm-style-mtc div{font-size:10px;-webkit-box-sizing:border-box;box-sizing:border-box}.gm-style .gm-style-cc a,.gm-style .gm-style-cc button,.gm-style .gm-style-cc span{outline-offset:3px}sentinel{}\r\n");
      out.write("</style>\r\n");
      out.write("<style>@media print {  .gm-style .gmnoprint, .gmnoprint {    display:none  }}@media screen {  .gm-style .gmnoscreen, .gmnoscreen {    display:none  }}</style><style>.gm-style-moc{background-color:rgba(0,0,0,.45);pointer-events:none;text-align:center;-webkit-transition:opacity ease-in-out;transition:opacity ease-in-out}.gm-style-mot{color:white;font-family:Roboto,Arial,sans-serif;font-size:22px;margin:0;position:relative;top:50%;transform:translateY(-50%);-webkit-transform:translateY(-50%);-ms-transform:translateY(-50%)}sentinel{}\r\n");
      out.write("</style>\r\n");
      out.write("<style>.gm-style img{max-width: none;}.gm-style {font: 400 11px Roboto, Arial, sans-serif; text-decoration: none;}</style><meta charset=\"utf-8\"><link rel=\"icon\" href=\"/favicon.ico\"><title>MYRO - AI 여행 플래너</title><meta name=\"robots\" content=\"index,follow\"><meta name=\"description\" content=\"평균 10시간 이상이 소요되는 여행 일정 세부 스케줄링을 가고 싶은 장소만 장바구니에 담듯이 선택하면 인공지능이 최적의 일정을 자동으로 스케줄링 해주는 쉽고 간편한 AI 여행 플래너 서비스 마이로(MYRO)\"><meta property=\"og:description\" content=\"평균 10시간 이상이 소요되는 여행 일정 세부 스케줄링을 가고 싶은 장소만 장바구니에 담듯이 선택하면 인공지능이 최적의 일정을 자동으로 스케줄링 해주는 쉽고 간편한 AI 여행 플래너 서비스 마이로(MYRO)\"><meta property=\"og:url\" content=\"https://www.myro.co.kr/\"><meta property=\"og:type\" content=\"website\"><meta property=\"og:image:alt\" content=\"이미지\"><meta property=\"og:locale\" content=\"ko_KR\"><meta property=\"og:site_name\" content=\"MYRO - AI 여행 플래너\"><link rel=\"canonical\" href=\"https://www.myro.co.kr/\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover\"><meta name=\"keywords\" content=\"마이로, myro, 여행일정, 마이로 여행일정, 추천 일정, 추천 코스, 여행 플래너, 5분 만에 여행 일정, 유럽 여행, 홍콩 여행, 대만 여행, 나만의 여행 일정, 해외여행, 국내여행, 인공지능 여행, AI 여행, AI 여행 플래너, 인공지능 여행 플래너, 엠와이알오\"><meta property=\"og:article:author\" content=\"MYRO - AI 여행 플래너\"><meta name=\"naver-site-verification\" content=\"b462c80cb5b18ceeec9bb80bce1bd8dbefa5f0cc\"><meta name=\"google-site-verification\" content=\"6dLwVODj4glAujnMHA8rfK_9jrxixaxucC3c80JtNmA\"><link rel=\"apple-touch-icon\" sizes=\"180x180\" href=\"/assets/images/apple-touch-icon.png\"><link rel=\"icon\" type=\"image/png\" sizes=\"32x32\" href=\"/assets/images/favicon-32x32.png\"><link rel=\"icon\" type=\"image/png\" sizes=\"16x16\" href=\"/assets/images/favicon-16x16.png\"><meta property=\"og:title\" content=\"MYRO - AI 여행 플래너\"><meta property=\"og:image\" content=\"/assets/images/meta_logo.png\"><meta property=\"og:image:width\" content=\"285\"><meta property=\"og:image:height\" content=\"167\"><meta name=\"next-head-count\" content=\"24\"><link rel=\"stylesheet\" data-href=\"https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;500;600;900&amp;family=Noto+Sans+KR:wght@100;400;500;700;900&amp;display=swap\"><link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\"><script type=\"text/javascript\" async=\"\" src=\"https://www.googletagmanager.com/gtag/js?id=G-BDJFZN2228&amp;l=dataLayer&amp;cx=c\"></script><script async=\"\" src=\"https://www.googletagmanager.com/gtm.js?id=GTM-KW2LQK7V\"></script><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':\r\n");
      out.write("                  new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],\r\n");
      out.write("                  j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=\r\n");
      out.write("                  'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);\r\n");
      out.write("                  })(window,document,'script','dataLayer','GTM-KW2LQK7V');</script><link rel=\"preload\" href=\"/_next/static/css/7c62a7157e7980a2.css\" as=\"style\"><link rel=\"stylesheet\" href=\"/_next/static/css/7c62a7157e7980a2.css\" data-n-g=\"\"><noscript data-n-css=\"\"></noscript><script defer=\"\" nomodule=\"\" src=\"/_next/static/chunks/polyfills-c67a75d1b6f99dc8.js\"></script><script src=\"/_next/static/chunks/webpack-3c9b6c80d785b0f0.js\" defer=\"\"></script><script src=\"/_next/static/chunks/framework-3236775a9ca336a2.js\" defer=\"\"></script><script src=\"/_next/static/chunks/main-589843cdf0664f67.js\" defer=\"\"></script><script src=\"/_next/static/chunks/pages/_app-650aad3504cc374e.js\" defer=\"\"></script><script src=\"/_next/static/chunks/6943-53ecf2adc2630d65.js\" defer=\"\"></script><script src=\"/_next/static/chunks/3932-1ead39fe62a0e367.js\" defer=\"\"></script><script src=\"/_next/static/chunks/9721-f18c9fc0a21c3670.js\" defer=\"\"></script><script src=\"/_next/static/chunks/6827-cba2ac16814ea53f.js\" defer=\"\"></script><script src=\"/_next/static/chunks/2598-8843e0289ba4a829.js\" defer=\"\"></script><script src=\"/_next/static/chunks/pages/index-2dada5b16617fe5c.js\" defer=\"\"></script><script src=\"/_next/static/0d8352fdf5addb5bb60b6f4984f2bf6295d0c770/_buildManifest.js\" defer=\"\"></script><script src=\"/_next/static/0d8352fdf5addb5bb60b6f4984f2bf6295d0c770/_ssgManifest.js\" defer=\"\"></script><link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css2?family=Montserrat:wght@100;400;500;600;900&amp;family=Noto+Sans+KR:wght@100;400;500;700;900&amp;display=swap\"><link as=\"script\" rel=\"prefetch\" href=\"/_next/static/chunks/pages/login-1fd0a06030d5d26c.js\"><script type=\"text/javascript\" src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyAP5_rx-kEWvBIgIqvFwRmYreGJtRi3GSY&amp;v=weekly&amp;libraries=places&amp;callback=initMap\" id=\"script-loader\" async=\"\" data-state=\"ready\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"https://maps.googleapis.com/maps-api-v3/api/js/56/8/intl/ko_ALL/common.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"https://maps.googleapis.com/maps-api-v3/api/js/56/8/intl/ko_ALL/util.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"https://maps.googleapis.com/maps-api-v3/api/js/56/8/intl/ko_ALL/map.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"https://maps.googleapis.com/maps-api-v3/api/js/56/8/intl/ko_ALL/onion.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"https://maps.googleapis.com/maps-api-v3/api/js/56/8/intl/ko_ALL/controls.js\"></script><script type=\"text/javascript\" charset=\"UTF-8\" src=\"https://maps.googleapis.com/maps-api-v3/api/js/56/8/intl/ko_ALL/marker.js\"></script>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
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