<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ include file="../includes/header2.jsp"%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet"
	href="../resources/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" type="text/css"
	href="../resources/css/datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/slick/slick-theme.css" />
<link rel="stylesheet" href="../resources/css/templatemo-style.css">
<!-- Templatemo style -->
<!-- 
<script src="../resources/js/vendor/modernizr.custom.min.js"></script>
<link rel="stylesheet" href="../resources/css/normalize.css"> -->
<style>
/* .slideshow {
	height: 465px;
	overflow: hidden; /*높이와 overflow만 잡아주면 이미지 중첩됨*/
	position: relative;
}

.slideshow img {
	position: absolute;
	/*이미지 위치 가운데로 옮기기*/
	left: 50%; /*오른쪽으로 50% 밀고 margin으로 위치 조정*/
	margin-left: -800px;
	display: none;
} */

@media(min-width:768px){
#kako-talk-channel-chat-button{
position:fixed;
z-index:999;
right:30px;
bottom:30px;
}
}

@media(max-width:767px){
#kako-talk-channel-chat-button{
position:fixed;
z-index:999;
right:15px;
bottom:30px;
}
}

</style>

<div class="tm-page-wrap mx-auto" style="margin-top: 180px">
	<%-- <section class="tm-banner">

		<!-- .tm-container-outer -->
		<div class="inner">
			<div class="slideshow">
				<img src="../resources/img/tm-img-01.jpg" alt="" width="1600"
					height="1000"> <img src="../resources/img/tm-img-02.jpg"
					alt="" width="1600" height="1000"> <img
					src="../resources/img/tm-img-03.jpg" alt="" width="1600"
					height="1000"> <img src="../resources/img/tm-img-04.jpg"
					alt="" width="1600" height="1000">
			</div>
		</div>
	</section> --%>

	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
					<h2 class="text-uppercase mb-4">공지사항</h2>
				</div>
			</div>

<!-- 			<form action="/flight/search" method="get"
				class="tm-search-form tm-section-pad-1">
				<div class="form-row tm-search-form-row">
					<div
						class="form-group tm-form-group tm-form-group-pad tm-form-group-2">

					</div>

				</div>
				form-row
				<div class="form-row tm-search-form-row"></div>
			</form> -->

			<div class="container">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>작성일</th>
							<th>조회수</th>
							<th>삭제</th>
						</tr>
					</thead>
					<c:forEach items="${vo}" var="list">
						<tbody>
							<tr class="flight">
								<td>${list.boardnum}</td>
								<td><a href="/notice/read?boardnum=${list.boardnum}&pageNum=${paging.cri.pageNum}&amount=${paging.cri.amount}">${list.boardsubject}</a></td>
								<td>${list.regidate}</td>
								<td>${list.readcount}</td>
								<td><button type="button" class="btn btn-primary btn-sm btn-block btn-custom" onclick="cancelTicket('${list.boardnum}')">삭제</button></td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
				<!-- 페이징  -->
				<ul class="pagination justify-content-center">
							<c:if test="${paging.prev}">
					<li class="page-item">
							<c:if test="${paging.cri.pageNum>=1}">
								<a class="page-link" href="?pageNum=${paging.cri.pageNum-1}&amount=${paging.cri.amount}">Previous</a>
							</c:if>
					</li>
				</c:if> 
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
					<c:choose>
				        <c:when test="${num eq paging.cri.pageNum}">
				            <li class="page-item active">
				                <span class="page-link">${num}</span>
				            </li>
				        </c:when>
				        <c:otherwise>
				            <li class="page-item">
				                <a class="page-link" href="?pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
				            </li>
				        </c:otherwise>
					 </c:choose>       
				</c:forEach>
				 <c:if test="${paging.next}">
					<li class="page-item">
					<a class="page-link" href="?pageNum=${paging.cri.pageNum+1}&amount=${paging.cri.amount}">Next</a></li>
				</c:if> 
				</ul>
			</div>
		</div>
	</section>
	
	<div id="kakao-talk-channel-chat-button">ddd</div>

<%-- 	<!-- 전달 폼 -->
	<form id="ticketForm" action="/user/kakaoDetail" method="get">
		<input type="hidden" name="pageNum" value="${paging.cri.pageNum}" />
		<input type="hidden" name="amount" value="${paging.cri.amount}" /> <input
			type="hidden"
			value='sec:authentication property="principal.username"' />
	</form> --%>

</div>
<!-- .tm-container-outer -->

<script type="text/javascript">
	function cancelTicket(boardnum){
		console.log(boardnum);
		 if(!confirm(boardnum+"번 게시글을 삭제하시겠습니까?")){
			return false;
		}else{
			console.log("삭제중...");
			$.ajax({
				url : "/admin/notice",
				async : false,
				dataType : "text",
				data : {
					boardnum : boardnum,
				},
				type : "POST",
				success : function(data){
					console.log(data);
				},error : function(err){
					console.log(err);
				}
				
			});
			
			alert("삭제가 완료되었습니다.")
			location.reload(); 
		}
	}	


</script>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>
kakao.init('3156d02ad4070a1c858f024518bda8c5');
Kakao.Channel.createAddChannelButton({
	  container: '#kakao-talk-channel-chat-button',
	  channelPublicId: '_frpnG' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
	});

</script>
<%@ include file="../includes/footer.jsp"%>