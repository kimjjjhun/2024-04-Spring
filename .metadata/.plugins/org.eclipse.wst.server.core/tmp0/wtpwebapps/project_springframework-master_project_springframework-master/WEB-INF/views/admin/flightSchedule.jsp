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

</style>

<div class="tm-page-wrap mx-auto" style="margin-top : 180px;">


	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
					<h2 class="text-uppercase mb-4">항공운항내역 조회 및 업데이트</h2>
					<p>*항공운항내역 업데이트 및 삭제 시 사유입력 필수</p>
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
		 		<div class="container wrapper">
				<button type="button" class="btn btn-primary btn-sm btn-custom" onclick="window.open('/admin/flightCreate','항공정보인서트','width = 2100, height = 300, top = 100, left = 100, location = no')" style="float: right;"><i class="bi bi-chevron-double-right"></i>&nbsp;신규 운항 등록
				</button>
				</div>
				<table class="table table-hover">
					<thead style="background: #ffc107">
						<tr>
							<th>번호</th>
							<th>항공기</th>
							<th>출발지</th>
							<th>출발시간</th>
							<th>도착지</th>
							<th>도착시간</th>
							<th>운항시간</th>
							<th>좌석수</th>
							<th>수정</th>
							<th>삭제</th>
							
						</tr>
					</thead>
					<c:forEach items="${vo}" var="list">
						<tbody>
							<tr class="flight">
								<td>${list.fno}</td>
								<td>${list.flightName}</td>
								<td>${list.depName}</td>
								<td>${list.fullDeptime}</td>
								<td>${list.arrName}</td>
								<td>${list.fullArrtime}</td>
								<td>${list.flightTime}</td>
								<td>24</td>
 								<td><button type="button" class="btn btn-primary btn-sm btn-block btn-custom"  onclick="window.open('/admin/flightModify?fno=${list.fno}','항공정보수정','width = 1800, height = 300, top = 100, left = 100, location = no')">
								<i class="bi bi-chevron-double-right"></i>&nbsp;수정 </button> </td> 
								<%-- <td><button type="button" class="btn btn-primary btn-sm btn-block btn-custom"  onclick="modify('${list.fno}')">
								<i class="bi bi-chevron-double-right"></i>&nbsp;수정 </button> </td> --%>
								<td><button type="button" class="btn btn-primary btn-sm btn-block btn-custom" onclick="submit('${list.fno}')"><i class="bi bi-chevron-double-right"></i>&nbsp;삭제
								</button></td>
						
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
function modify(fno){
	if(!confirm(fno+"번 항공운항내역을 수정하시겠습니까?")){
		return false;
	}else{
		var reason = prompt("결항 사유를 입력하여 주십시오.");
		$.ajax({
			url : "/admin/flightModify",
			type : "POST",
			//dataType : "json",
			async : true,
			contentType : "application/json",
			data : JSON.stringify({
				fno : fno,
				reason : reason
				
			}),
			success : function(data){
				console.log(data);
				location.href="/admin/flightModify";
			},
			error : function(err){
				console.log(err);
	/* 			console.log(err.responseText); // 서버에서 전송한 오류 메시지
			    console.log(err.status);  */
				alert("항공스케즐 수정에 실패했습니다!");
			}
		});
	}
}



function submit(fno){
	if(!confirm(fno+"번 항공을 결항처리하시겠습니까?")){
		return false;
	}else{
		var reason = prompt("결항 사유를 입력하여 주십시오.");
		$.ajax({
			url : "/admin/flightDelete",
			type : "POST",
			//dataType : "json",
			async : true,
			contentType : "application/json",
			data : JSON.stringify({
				fno : fno,
				reason : reason,
				isDelete : 3
				
			}),
			success : function(data){
				console.log(data);
				window.close();
	/* 			location.href="admin/flightSchedule"; */
			},
			error : function(err){
				console.log(err);
	/* 			console.log(err.responseText); // 서버에서 전송한 오류 메시지
			    console.log(err.status);  */
				alert("항공스케즐 수정에 실패했습니다!");
			}
		});
	}
	

		
}


</script>

<%@ include file="../includes/footer.jsp"%>
