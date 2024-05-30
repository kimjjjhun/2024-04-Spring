<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <title>Flex - Responsive HTML Template</title>
    	<meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 
Flex Template 
http://www.templatemo.com/tm-406-flex
-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="/resources/css/font-awesome.css">
        <link rel="stylesheet" href="/resources/css/animate.css">
        <link rel="stylesheet" href="/resources/css/templatemo_misc.css">
        <link rel="stylesheet" href="/resources/css/templatemo_style.css">
        <link rel="stylesheet" href="/resources/css/modal1.css">

        <script src="/resources/js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
    </head>
    <body>
      <div class="site-header">
                <div class="main-header">
                        <div id="menu-wrapper">
                            <div class="row">
                                <div class="logo-wrapper col-md-2 col-sm-2">
                                    <h1>
                                        <a href="/main">TRIP</a>
                                    </h1>
                                </div> <!-- /.logo-wrapper -->
                                <div class="col-md-10 col-sm-10 main-menu text-right">
                                    <ul class="menu">
                                        <li class="active"><a href="/main">메인 홈</a></li>
                                        <li><a href="#portfolio">여행지</a></li>
                                        <li><a href="#services">여행 계획</a></li>
                                        <li><a href="#">게시판</a> </li>
                                        <li><a href="#">고객 센터</a></li> 
                                        <sec:authorize access="isAnonymous()"> <!-- 로그인 안했을 때 표시 -->
                                        <li><a href="/customLogin">로그인</a></li>
                                        </sec:authorize>
                                        <sec:authorize access="isAuthenticated()"> <!--  로그인 하였을 때 표시 -->
                                        <li><a href="/customLogout">로그아웃</a></li>
                                        </sec:authorize>
                                    </ul>                                    
                                </div> <!-- /.main-menu -->
                            </div> <!-- /.row -->
                        </div> <!-- /#menu-wrapper -->                        
                </div> <!-- /.main-header -->
            </div> <!-- /.site-header -->
    