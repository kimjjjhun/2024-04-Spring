<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../includes/header2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../resources/summernote/summernote-lite.js"></script>
<script src="../resources/summernote/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="../resources/summernote/summernote-lite.css">
<script type="text/javascript" src="../resources/script/boardDiary.js"></script>
<title>Insert title here</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" type="text/css" href="../resources/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="../resources/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="../resources/slick/slick-theme.css" />
<link rel="stylesheet" href="../resources/css/templatemo-style.css">
<style>
	.gradient {
	width: 80px;
	height: 30px;
	font-weight: 900;
	color: white;
	text-align: center;
	background: #FFC107;
	border: solid 2px white;
	border-radius: 5px;
	}
	
	.container {
    max-width: 1400px; 
    margin: 0 auto;
    }

</style>
</head>
<body style="margin-top : 180px;">
	
	<div class="p-5 tm-container-outer tm-bg-gray">
		<h2>여행일기 수정</h2>
		<hr class="hr1" noshade>
		<form action="/boardDiary/update" method="post" name="frm">
			<input type="hidden" id="boardNum" name="boardNum" value="${board.boardNum}">
			<input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum}">
			<input type="hidden" id="keyword" name="keyword" value="${cri.keyword}">
			<input type="hidden" id="type" name="type" value="${cri.type}">
			<input type="hidden" id="order" name="order" value="${cri.order}">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			 
			<div class="form-group">
				<label for="boardTitle">제목</label> 
				<input type="text" class="form-control" id="boardTitle" name="boardTitle" value="${board.boardTitle}">
			</div>
			
			<div class="form-group">
				<label for="boardWriter">작성자</label> 
				<input type="text" class="form-control" id="boardWriter" name="boardWriter" value="${board.boardWriter}" readonly="readonly">
			</div>
			
			<div class="form-group">
				<label for="boardContent">내용</label><br> 
				<textarea id="summernote" class="summernote" name="boardContent">${board.boardContent}</textarea>
			</div>
		
			<div class="mt-3 text-right">	
			<button type="button" class="gradient" onclick="location.href='/boardDiary/list?pageNum=${cri.pageNum}&keyword=${cri.keyword}&type=${cri.type}&order=${cri.order}'">목록</button> &nbsp;
			<button type="reset" class="gradient">다시작성</button> &nbsp;
			<button type="submit" class="gradient" onclick="return boardCheck()">수정</button> &nbsp;
			</div>
		</form>
	</div>
	<br><br>

	<script>
		$('#summernote').summernote({
			/* height : 300,
			width : 700, */
			lang : "ko-KR",
		});

	</script>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>