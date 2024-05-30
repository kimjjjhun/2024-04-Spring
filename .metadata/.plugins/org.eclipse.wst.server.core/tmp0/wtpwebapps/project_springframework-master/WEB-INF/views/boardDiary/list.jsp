<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../includes/header2.jsp"%>
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

<!-- 구글 아이콘 -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style>
	#th1 {
	background-color: #FFC107;
	border-top: 3px solid #727272;
	}
	
	td, th{
		text-align: center;
	}
	
	a {
	color: black;
	text-decoration-line: none;
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

</style>
</head>
<body style="margin-top : 180px;">
	<div class="p-5 tm-container-outer tm-bg-gray" style="max-width: 1400px; margin: 0 auto; ">
	<h2>여행일기</h2>
	<hr class="hr1" noshade>
	<div class="mt-3 text-right">
		조회옵션
		<select onchange="if(this.value) location.href=this.value;">
			<option value="">선택하세요
			<option value="?pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&amount=10&order=${paging.cri.order}" <c:if test="${paging.cri.amount==10}">selected="selected"</c:if>>10개씩
			<option value="?pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&amount=20&order=${paging.cri.order}" <c:if test="${paging.cri.amount==20}">selected="selected"</c:if>>20개씩
			<option value="?pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&amount=40&order=${paging.cri.order}" <c:if test="${paging.cri.amount==40}">selected="selected"</c:if>>40개씩
		</select>
		
		정렬
		<select onchange="if(this.value) location.href=this.value;">
			<option value="">선택하세요
			<option value="?pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&amount=${paging.cri.amount}&order=latest" <c:if test="${paging.cri.order=='latest'}">selected="selected"</c:if>>최신순
			<option value="?pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&amount=${paging.cri.amount}&order=oldest" <c:if test="${paging.cri.order=='oldest'}">selected="selected"</c:if>>과거순
			<option value="?pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&amount=${paging.cri.amount}&order=readcount" <c:if test="${paging.cri.order=='readcount'}">selected="selected"</c:if>>조회순
			<option value="?pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&amount=${paging.cri.amount}&order=replycount" <c:if test="${paging.cri.order=='replycount'}">selected="selected"</c:if>>댓글순
			<option value="?pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&amount=${paging.cri.amount}&order=likecount" <c:if test="${paging.cri.order=='likecount'}">selected="selected"</c:if>>추천순
		</select>
	</div> 
	<br>
	<div>
		<form action="/boardDiary/list" method="get" id="searchForm" name="searchForm">
		<span style="text-align: left; font-size: 15px">▷ 총 ${paging.total}개의 게시물이 있습니다. </span>
		<span style="float: right;">
		<input type="hidden" id="amount" name="amount" value="${paging.cri.amount}" readonly="readonly">
        <select name="type" class="type-box">
			<option value="boardTitle" <c:if test="${paging.cri.type =='boardTitle'}">selected="selected"</c:if> >제목</option>
			<option value="boardContent" <c:if test="${paging.cri.type =='boardContent'}">selected="selected"</c:if> >내용</option>
			<option value="boardWriter" <c:if test="${paging.cri.type =='boardWriter'}">selected="selected"</c:if> >작성자</option>
		</select>
          <input class="inputId" type="text" id="keyword" name="keyword" placeholder="검색어 입력" value="${paging.cri.keyword}">
          <input class="gradient" type="submit" value="검색하기" onclick="return search()">
          <c:if test="${!empty loginUser.userId}">
          	<input type="button" class="gradient" value="내글보기" onclick="location.href='/boardDiary/list?type=boardWriter&keyword=${loginUser.userNick}'">
          </c:if>
          
          <input type="button" class="gradient" onclick="location.href='/boardDiary/list'" value="전체">&nbsp; <br> <br>
        </span>
		</form>
	</div>
	<br>
	<input type="hidden" id="userId" name="userId" value="${loginUser.userId}" readonly="readonly">

		<table class="table table-hover" style="width: 120%;">
		 <c:if test="${paging.total>0}">

			<tr>
				<th id="th1" width="10%">번호</th>
				<th id="th1" width="40%">제목</th>
				<th id="th1" width="15%">작성자</th>
				<th id="th1" width="15%">날짜</th>
				<th id="th1" width="10%">조회수</th>
				<th id="th1" width="10%">추천수</th>
			</tr>

		
			<jsp:useBean id="now" class="java.util.Date" />
			<fmt:parseNumber value="${now.time}" integerOnly="true" var="nowfmtTime" scope="request"/>
			
			<c:forEach var="board" items="${diaryList}">

				<tr>
					
					<c:choose>

						<c:when test="${board.regiDate>=board.modifyDate}">
		
							<fmt:parseDate value = "${board.regiDate}" var = "parsedMyDate" pattern = "yyyy-MM-dd HH:mm:ss" />
							<c:if test="${nowfmtTime-parsedMyDate.time<(1000*60*60*24)}">
								<c:set var="hh" value="${fn:substring(board.regiDate, 11,13)}"/>
								<c:set var="mi" value="${fn:substring(board.regiDate, 14,16)}"/>
								<c:set var="ss" value="${fn:substring(board.regiDate, 17,19)}"/>
								
								<td>${board.boardNum}</td>
								<td><a href="/boardDiary/view?boardNum=${board.boardNum}&pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&order=${paging.cri.order}"><i class="material-icons" style="color:red">fiber_new</i>${board.boardTitle} [${board.replyCount}]</a></td>
								<td>${board.boardWriter}</td>
								
								<td>${hh}:${mi}:${ss}</td>
							</c:if>
							<c:if test="${nowfmtTime-parsedMyDate.time>=(1000*60*60*24)}">
								<c:set var="yy" value="${fn:substring(board.regiDate, 0,4)}"/>
								<c:set var="mm" value="${fn:substring(board.regiDate, 5,7)}"/>
								<c:set var="dd" value="${fn:substring(board.regiDate, 8,10)}"/>
								
								<td>${board.boardNum}</td>
								<td><a href="/boardDiary/view?boardNum=${board.boardNum}&pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&order=${paging.cri.order}">${board.boardTitle} [${board.replyCount}]</a></td>
								<td>${board.boardWriter}</td>
								
								<td>${yy}/${mm}/${dd}</td>
							</c:if>
						</c:when>
						<c:when test="${board.regiDate<board.modifyDate}">
		
							<fmt:parseDate value = "${board.modifyDate}" var = "parsedMyDate2" pattern = "yyyy-MM-dd HH:mm:ss" />
							<c:if test="${nowfmtTime-parsedMyDate2.time<(1000*60*60*24)}">
								<c:set var="hh" value="${fn:substring(board.modifyDate, 11,13)}"/>
								<c:set var="mi" value="${fn:substring(board.modifyDate, 14,16)}"/>
								<c:set var="ss" value="${fn:substring(board.modifyDate, 17,19)}"/>
								
								<td>${board.boardNum}</td>
								<td><a href="/boardDiary/view?boardNum=${board.boardNum}&pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&order=${paging.cri.order}"><i class="material-icons" style="color:red">fiber_new</i>${board.boardTitle} [${board.replyCount}]</a></td>
								<td>${board.boardWriter}</td>
								<td>${hh}:${mi}:${ss}</td>
							</c:if>
							<c:if test="${nowfmtTime-parsedMyDate2.time>=(1000*60*60*24)}">
								<c:set var="yy" value="${fn:substring(board.modifyDate, 0,4)}"/>
								<c:set var="mm" value="${fn:substring(board.modifyDate, 5,7)}"/>
								<c:set var="dd" value="${fn:substring(board.modifyDate, 8,10)}"/>
								
								<td>${board.boardNum}</td>
								<td><a href="/boardDiary/view?boardNum=${board.boardNum}&pageNum=${paging.cri.pageNum}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&order=${paging.cri.order}">${board.boardTitle} [${board.replyCount}]</a></td>
								<td>${board.boardWriter}</td>
								<td>${yy}/${mm}/${dd}</td>
							</c:if>
						
						</c:when>
					</c:choose>
					<td>${board.readCount}</td>
					<td>${board.likeCount}</td>
				</tr>
			</c:forEach>
		</c:if>	
			<c:if test="${empty diaryList}">
			<tr>
				<td colspan="6">등록된 글이 없습니다.</td>
			</tr>
			</c:if>
	
		 </table> 
				
		<c:if test="${!empty loginUser.admin}">
			<div style="float: right;">
				<input type="button" class="gradient" onclick="location.href='/boardDiary/write'" value="글쓰기">
			</div>
		</c:if>
		<c:if test="${empty loginUser.admin}">
			<p style="color: red; float:right;">*로그인 후 글 작성이 가능합니다.</p>	
		</c:if>	 
			
		 <div class="container">
			<ul class="pagination pagination justify-content-center">
				<!-- <td colspan="5"> -->
					<c:choose>
						<c:when test="${paging.cri.pageNum<=1}"> 
							<li class="page-item"><a class="page-link">Previous</a><li>
						</c:when>
						<c:otherwise>
							<c:if test="${!empty paging.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${paging.cri.pageNum-1}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&amount=${paging.cri.amount}&order=${paging.cri.order}">Previous</a>&nbsp;<li>
							</c:if>
							<c:if test="${empty paging.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${paging.cri.pageNum-1}&amount=${paging.cri.amount}&order=${paging.cri.order}">Previous</a>&nbsp;<li>
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
									<li class="page-item"><a class="page-link"  href="?pageNum=${a}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&amount=${paging.cri.amount}&order=${paging.cri.order}">${a}</a>&nbsp;<li>
								</c:if>
								<c:if test="${empty paging.cri.keyword}">
									<li class="page-item"><a class="page-link"  href="?pageNum=${a}&amount=${paging.cri.amount}&order=${paging.cri.order}">${a}</a>&nbsp;</li>
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
								<li class="page-item"><a class="page-link" href="?pageNum=${paging.cri.pageNum+1}&keyword=${paging.cri.keyword}&type=${paging.cri.type}&viewLimit=${viewLimit}&sort=${sort}">Next</a></li>
							</c:if>					
							<c:if test="${empty paging.cri.keyword}">
								<li class="page-item"><a class="page-link" href="?pageNum=${paging.cri.pageNum+1}&amount=${paging.cri.amount}&order=${paging.cri.order}">Next</a></li>
							</c:if>
						</c:otherwise>
					</c:choose>
				<!-- </td> -->
			</ul>
			
		 </div>
			
				
			
	</div>
		<br>
	
<script>
function displayTime(timeValue){
    var today = new Date();
    
	var time = new Date(timeValue);
	console.log("time>>"+time);
		
    var gap = today.getTime() - time;
 	console.log("today>>"+today.getTime());
 	console.log("timeV>>"+timeValue);
 	console.log("gap">>>+gap)
 	
    var dateObj = new Date(timeValue);

    console.log("dateObj : " + dateObj);
 
    var str = "";

    if(gap<(1000*60*60*24)){                    //24시간(밀리초*초*분*시)
        var hh = dateObj.getHours();
        var mi = dateObj.getMinutes();
        var ss = dateObj.getSeconds();

        return [(hh>9? '' : '0') + hh, ":", (mi>9? '' : '0') + mi, ":", (ss>9? '' : '0') + ss].join("");
    } else {
        var yy = dateObj.getFullYear();
        var mm = dateObj.getMonth() + 1;        //getMonth : zero-based
        var dd = dateObj.getDate();

        return [yy, "/", (mm>9? '' : '0') + mm, "/", (dd>9? '' : '0') + dd].join("");
    }
}  

</script>
	
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>