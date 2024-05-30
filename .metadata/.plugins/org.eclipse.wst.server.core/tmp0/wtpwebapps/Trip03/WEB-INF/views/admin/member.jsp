<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>멤버 리스트</h1>
<form action="/admin/member" method="post">
<c:forEach var="member" items="${list}">
<input type="checkbox" name ="member_email" value="${member.member_email }">회원 아이디 : ${member.member_email } 회원 이름 :  ${member.name }<br>
</c:forEach>
<button type="submit">삭제</button>
</form>
</body>
</html>