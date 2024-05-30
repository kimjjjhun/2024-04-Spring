<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>어드민 메인 페이지</h1>

<form action ="/admin/member" method="get">
<button type="submit">멤버 리스트 페이지</button>
</form>

<form action="/admin/help" method="get">
<button type="submit">문의사항 리스트 페이지</button>
</form>
<form action="/admin/content" method="get">
<button type="submit">콘텐츠 추가 페이지</button>
</form>
</body>
</html>