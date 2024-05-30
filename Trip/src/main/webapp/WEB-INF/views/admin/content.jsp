<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>콘텐츠 추가</h1>
<form action="/admin/content" method="post">
<input type="text" name="content_id" placeholder="콘텐츠 명을 입력하세요"><br>
<input type="text" name="addr1" placeholder="주소1를 입력하세요"><br>
<input type="text" name="addr2" placeholder="주소2를 입력하세요"><br>
<input type="text" name="phone" placeholder="전화번호를 입력하세요"><br>
<input type="text" name="cExplain" placeholder="부가 설명을 입력하세요"><br>
<input type="text" name="areaname" placeholder="지역명을 입력하세요"><br>
<input type="text" name="contentType" placeholder="콘텐츠 타입을 입력하세요"><br>
<input type="text" name="mapx" placeholder="위도를 입력하세요"><br>
<input type="text" name="mapy" placeholder="경도를 입력하세요"><br>
<input type="text" name="maplevel" placeholder="맵레벨?을 입력하세요"><br>
<button type="submit">추가</button>
</form>
</body>
</html>