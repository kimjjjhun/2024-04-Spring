<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../includes/header2.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css"  
	href="/resources/slick/slick-theme.css" /> 
<link rel="stylesheet" href="/resources/css/templatemo-style.css">
<!-- <link rel="stylesheet"  
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">   -->
<script  
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/css/searchbar.css">
<title>게시판</title>
<style>
h2 {
	font-weight: border;
}

.hr1 {
	border: 0;
	height: 2px;
	background: #d3d3d3;
}

.grey {
	color: #727272;
}

#strong {
	font-weight: 900;
}

table {
	width: 100%;
	border: none;
	border-collapse: collapse;
}

th {
	background-color: #FFC107;
	border-top: 3px solid #727272;
}

th, td {
	border-bottom: 1px solid #d3d3d3;
	padding: 10px;
}

tr:hover {
	background-color: #F5F5F5;
}

body {
	/* width: 1400px;
	margin: 0 auto;
	margin-top : 180px; 
	background-color:#EFEFEF;*/
}

.greylist {
	width: 50px;
	height: 30px;
	font-weight: 900;
	color: white;
	text-align: center;
	background: grey;
	border: solid 2px white;
	border-radius: 5px;
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

.left {
	text-align: left;
}

.right {
	float: right;
}

.center {
	text-align: center;
}

a {
	color: black;
	text-decoration-line: none;
}

.emergency{
color:red;
font: bold;
}
</style>
</head>
<body style="margin-top : 180px;">
<div class="p-5 tm-container-outer tm-bg-gray" style="max-width: 1400px; margin: 0 auto; ">
	<h2>팝업 공지</h2>

	<hr class="hr1" noshade>

	<br>
	총 ${page.total}개의 글이 있습니다.
	<form action="/notice/popupList" id="searchForm" method="get">
		<select name="type">
			<option value="T" <c:out value="${page.cri.type eq 'T' ? 'selected' : ''}"/> >제목</option>
			<option value="C" >내용</option>
			<option value="W" >작성자</option>
		</select>
		<input type="text" name="keyword" <c:out value="${page.cri.keyword}"/>>
		<input type="hidden" name="pageNum" value="${page.cri.pageNum}">
		<input type="hidden" name="amount" value="${page.cri.amount}">
		<button class="btn btn-warning btn-xs" >검색</button>
	</form>
	
	
	<c:if test="${loginUser.userId eq 'admin'}">
		<button data-oper="register" class="gradient right" id="register" type="submit">글쓰기</button>
	</c:if>
	<c:if test="${loginUser.userId eq 'admin'}">
		<button data-oper="list" class="gradient right" id="list" type="submit">공지사항</button>
	</c:if>
	
	<table id="listTable">
		<tr>
			<th width=10%>글번호</th>
			<th width=40%>제목</th>
			<th width=20%>작성일자</th>
			<th width=20%>작성자</th>
			<th width=10%>조회수</th>
		</tr>
			<c:forEach var="item" items="${list}">
				<c:if test="${item.emergency==2}">  
					<tr>
						<td><span style="color:green;">팝업</span></td>
						<td><a class="move" href="/notice/read?boardnum=${item.boardnum}&pageNum=${page.cri.pageNum}&amount=${page.cri.amount}">${item.boardsubject }</a></td>
						<td>${item.regidate }</td> 
						<td>${item.boardwriter}</td>
						<td>${item.readcount}</td>
					</tr>
				</c:if>
			</c:forEach>
	</table>
	<br>

 <div class="container">
			<ul class="pagination pagination justify-content-center">
				<!-- <td colspan="5"> -->
					<c:choose>
						<c:when test="${page.cri.pageNum<=1}"> 
							<li class="page-item"><a class="page-link">Previous</a><li>
						</c:when>
						<c:otherwise>
							<c:if test="${!empty page.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${page.cri.pageNum-1}&keyword=${page.cri.keyword}&type=${page.cri.type}&amount=${paging.cri.amount}">Previous</a>&nbsp;<li>
							</c:if>
							<c:if test="${empty page.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${page.cri.pageNum-1}&amount=${page.cri.amount}">Previous</a>&nbsp;<li>
							</c:if>
						</c:otherwise>
					</c:choose> 
					<c:forEach var="a" begin="${page.startPage}" end="${page.endPage}" step="1">
						<c:choose>
							<c:when test="${a==page.cri.pageNum}"> 
								<li class="page-item active"><a class="page-link" >${a}</a></li>
							</c:when>
							<c:otherwise>
								<c:if test="${!empty page.cri.keyword}">
									<li class="page-item"><a class="page-link"  href="?pageNum=${a}&keyword=${page.cri.keyword}&type=${page.cri.type}&amount=${page.cri.amount}">${a}</a>&nbsp;<li>
								</c:if>
								<c:if test="${empty page.cri.keyword}">
									<li class="page-item"><a class="page-link"  href="?pageNum=${a}&amount=${page.cri.amount}">${a}</a>&nbsp;</li>
								</c:if>
							</c:otherwise>
						</c:choose>
					</c:forEach> 
						
					<c:choose>
						<c:when test="${page.cri.pageNum>=page.realEnd}"> 
							<li class="page-item"><a class="page-link">Next</a><li>
						</c:when>
						<c:otherwise>
							<c:if test="${!empty page.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${page.cri.pageNum+1}&keyword=${page.cri.keyword}&type=${page.cri.type}">Next</a></li>
							</c:if>					
							<c:if test="${empty page.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${page.cri.pageNum+1}&amount=${page.cri.amount}">Next</a></li>
							</c:if>
						</c:otherwise>
					</c:choose>
				<!-- </td> -->
			</ul>
			
		 </div>
		</div>	



	<form action="/notice/list" method="get" id="actionForm">
		<input type="hidden" name="pageNum" value="${page.cri.pageNum }">
		<input type="hidden" name="amount" value="${page.cri.amount }">
	  	<input type="hidden" name="type" value="${page.cri.type}">
       	<input type="hidden" name="keyword" value="${page.cri.keyword}">
	</form>

	
	<script type="text/javascript">
		$(document).ready(function() {
			
			var actionForm = $("#actionForm");
		 /* 	$(".pagination a").on("click", function(e){
				e.preventDefault();
				
				console.log('click');
				
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
			});  */
			
		/* 	$(".move").on("click", function(e){
			
				e.preventDefault();
				actionForm.append("<input type='hidden' name='boardnum' value='"+$(this).attr("href")+"'>");
				actionForm.attr("action", "/notice/read");
				actionForm.attr("method", "post");
				actionForm.submit();
				
			}); */
			
			$("#register").on("click", function(){
				self.location = "/notice/register";
			});

			$("#popupList").on("click", function(){
				self.location = "/notice/popupList";
			});
			
			$("#list").on("click", function(){
				self.location = "/notice/list";
			});
			
			//검색버튼 이벤트 처리
			var searchForm = $("#searchForm");
			$("#searchForm button").on("click",function(e){
				
				if(!searchForm.find("option:selected").val()){
					alert("검색 종류를 선택해주세요.");
					return false;
				}
				
				if(!searchForm.find("input[name='keyword']").val()){
					alert("키워드를 입력하세요.");
					return false;
				}
				
				searchForm.find("input[name='pageNum']").val("1");
				e.preventDefault();
				
				searchForm.submit();
			});
			
			
			//selected 체크
			var select = "${page.cri.type}";
			if(select != "") { 
				$('#type option[value= '+ select +']').prop("selected", true);
				}			
			
			
		});
	</script>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>