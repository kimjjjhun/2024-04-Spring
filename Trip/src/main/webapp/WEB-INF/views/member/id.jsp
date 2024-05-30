<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/login.css">
<%@include file="../includes/header1.jsp"%>
</head>
<body>
	<div class="login-page">
		<div class="form" id="customLogin">
		<c:if test="${empty member_email}">
	<p style="margin-bottom:15px;">일치하는 아이디가 존재하지 않습니다.</p>
<button type="button" onclick="location.href='/member/findid'">아이디 다시 찾기</button>
</c:if>
<c:if test="${not empty member_email}">
<p style="margin-bottom:15px;">	회원님의 아이디는<br>
	${member_email}입니다.</p>
<button type="button" onclick="location.href='/customLogin'">로그인하러 가기</button>
</c:if>
		</div>
	</div>
</body>
</html>