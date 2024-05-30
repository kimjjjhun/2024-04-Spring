<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
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
	td, th{
		text-align: center;
	}
	
	#th1 {
	background-color: #FFC107;
	border-top: 3px solid #727272;
	}
	
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
	.hr1 {
	border: 0;
	height: 2px;
	background: #d3d3d3;
	}
	a {
	color: black;
	text-decoration-line: none;
	}
</style>
</head>
<body style=" margin-top : 180px;">
	<div class="p-5 tm-container-outer tm-bg-gray" style="max-width: 1400px; margin: 0 auto; ">
	<h2>이벤트 게시판-지난 이벤트</h2>
	<hr class="hr1" noshade>
	<div class="mt-3 text-right">
		<input type="button" class="gradient" onclick="location.href='/boardEvent/list'" style="width: 120px" value="리스트형으로 보기">
		<input type="button" class="gradient" onclick="location.href='/boardEvent/gridList'" style="width: 120px" value="그리드형으로 보기">
	</div>
	<div>   
		<form action="/boardEvent/list" method="get" id="searchForm" name="searchForm">
		<span style="text-align: left; font-size: 15px;">▷ 총 ${paging.total}개의 게시물이 있습니다. </span>
		<span style="float: right;">
        <select name="type" class="type-box">
			<option value="boardTitle" <c:if test="${paging.cri.type =='boardTitle'}">selected="selected"</c:if> >제목</option>
			<option value="boardContent" <c:if test="${paging.cri.type =='boardContent'}">selected="selected"</c:if> >내용</option>
		</select>
          <input class="inputId" type="text" id="keyword" name="keyword" placeholder="검색어 입력" value="${paging.cri.keyword}">
          <input class="gradient" type="submit" value="검색" onclick="return search()">
          <input type="button" class="gradient" onclick="location.href='/boardEvent/list'" value="전체">&nbsp; <br> <br>
		</span>
		</form>
	</div>
	<input type="hidden" id="userId" name="userId" value="${loginUser.userId}" readonly="readonly">
		<table class="table table-hover">
		 <c:if test="${paging.total>0}">
			<tr>
				<th id="th1" width="10%">번호</th>
				<th id="th1" width="45%">제목</th>
				<th id="th1" width="17.5%">시작일</th>
				<th id="th1" width="17.5%">종료일</th>
				<th id="th1" width="10%">조회수</th>
			</tr>

		
			<c:forEach var="board" items="${EventList}">

				<tr>
					<td>${board.boardNum}</td>
					<td><a href="/boardEvent/view?boardNum=${board.boardNum}&pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}">${board.boardTitle} </a></td>
					<td>${board.startDate}</td>
					<td>${board.endDate}</td>					
					<td>${board.readCount}</td>
				</tr>
			</c:forEach>
			</c:if>
			<c:if test="${empty EventList}">
				<tr>
					<td colspan="5">등록된 글이 없습니다.</td>
				</tr>
			</c:if>
	
		</table>
			
			<ul class="pagination pagination justify-content-center">
					<!--nowpage->page  --> 
					<c:choose>
						<c:when test="${paging.cri.pageNum<=1}"> 
							<li class="page-item"><a class="page-link">Previous</a><li>
						</c:when>
						<c:otherwise>
							<c:if test="${!empty paging.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${paging.cri.pageNum-1}&keyword=${paging.cri.keyword}&type=${paging.cri.type}">Previous</a></li>
							</c:if>
							<c:if test="${empty paging.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${paging.cri.pageNum-1}">Previous</a></li>
							</c:if>
						</c:otherwise>
					</c:choose> 
					<c:forEach var="a" begin="${paging.startPage}" end="${paging.endPage}" step="1">
						<c:choose>
							<c:when test="${a==paging.cri.pageNum}"> 
								<li class="page-item active"><a class="page-link" >${a}</a></li>
							</c:when>
							<c:otherwise>
								<c:if test="${!empty paging.cri.keyword}">
									<li class="page-item"><a class="page-link" href="?pageNum=${a}&keyword=${paging.cri.keyword}&type=${paging.cri.type}">${a}</a></li>
								</c:if>
								<c:if test="${empty paging.cri.keyword}">
									<li class="page-item"><a class="page-link" href="?pageNum=${a}">${a}</a></li>
								</c:if>
							</c:otherwise>
						</c:choose>
					</c:forEach> 
						
					<c:choose>
						<c:when test="${paging.cri.pageNum>=paging.realEnd}"> 
							<li class="page-item"><a class="page-link">Next</a><li>
						</c:when>
						<c:otherwise>
							<c:if test="${!empty paging.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${paging.cri.pageNum+1}&keyword=${paging.cri.keyword}&type=${paging.cri.type}">Next</a></li>
							</c:if>					
							<c:if test="${empty paging.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${paging.cri.pageNum+1}">Next</a></li>
							</c:if>
						</c:otherwise>
					</c:choose>
			</ul>
			
			
		<div class="mt-3 text-right">
		<c:if test="${loginUser.admin==1}">
			<input type="button" class="gradient" onclick="location.href='/boardEvent/write'" value="글쓰기">
		</c:if>
		<br><br>
	</div>
	</div>
	
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>