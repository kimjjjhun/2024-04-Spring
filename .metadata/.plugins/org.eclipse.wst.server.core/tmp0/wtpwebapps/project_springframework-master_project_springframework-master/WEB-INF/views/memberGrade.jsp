<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="includes/header2.jsp"%>
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
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/css/searchbar.css">


<script>
	$(document).ready(function() {

		$("#gradeInformation").on("click", function(e) {
			e.preventDefault();
			$(".gradeInformation").show();
			$(".gradeBenefit").hide();
		});

		$("#gradeBenefit").on("click", function(e) {
			e.preventDefault();
			$(".gradeInformation").hide();
			$(".gradeBenefit").show();
		});
	});
</script>

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
	width: 1400px;
	margin: 0 auto;
	margin-top: 200px;
	/* background-color: #EFEFEF; */
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

.emergency {
	color: red;
	font: bold;
}

.grade {
	display: flex;
	text-align: center;
	margin-bottom: 50px;
}

.grade img {
	height: 300px;
	width: auto;
	max-width: 180px;
	margin: 50px 50px 30px 80px;
}

.field {
	border: 8px double #FFC107;
	margin-bottom: 100px;
	width: 100%;
}

.field p {
	font-weight: bold;
}

.field hr {
	border-top: 2px solid #FFC107;
	margin: 20px 0;
}

/* hover 효과 */
.field:hover {
	box-shadow: 0 0 50px rgba(0, 0, 0, 0.3);
	transition: box-shadow 0.3s ease-in-out;
}

/* 미디어 쿼리를 사용하여 반응형 디자인 적용 */
@media only screen and (max-width: 768px) {
	body {
		width: 90%;
	}
}

.gradeInfo {
	text-align: right;
	font-size: 30px;
}

hr {
	border-top: 5px solid #FFC107;
	padding-top: 30px;
	margin-top: -2px;
}

.button {
	border: none;
	border-left: 5px solid #FFC107;
	border-top: 5px solid #FFC107;
	border-right: 5px solid #FFC107;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom: 5px solid #FFC107;
	border-bottom-width: 100%;
	background-color: #FFC107;
}

.button:hover {
	box-shadow: 0 0 50px rgba(0, 0, 0, 0.3);
	transition: box-shadow 0.3s ease-in-out;
}

.gradeBenefit th, td {
	text-align: center;
	border-right: 1px solid #CCCCCC;
	border-left: 1px solid #CCCCCC;
}

.VIPinform {
	color: blue;
	font-size: 11px;
	font-family: sans-serif;
}

.mileInfo {
	font-size: 15px;
}
</style>
</head>
<body>
<div class="p-5 tm-container-outer tm-bg-gray">
	<button type="button" class="button" id="gradeInformation"
		name="gradeInformation">회원등급안내</button>
	<button type="button" class="button" id="gradeBenefit"
		name="gradeBenefit">회원혜택안내</button>
	<hr>



	<!-- 회원등급안내 -->
	<div class="gradeInformation">
			<div class="gradeInfo">
				<c:if test="${!empty loginUser}">
					<strong>${loginUser.userNick}</strong>님의 회원등급은 
				<c:if test="${loginUser.gradeCode == 3}">
						<strong style="color: #FFCC66;">춘식이</strong> 입니다.
				</c:if>
					<c:if test="${loginUser.gradeCode == 2}">
						<strong style="color: #DD9B25;">라이언</strong> 입니다.
				</c:if>
					<c:if test="${loginUser.gradeCode == 1}">
						<strong style="color: #FFCCCC;">어피치</strong> 입니다.
				</c:if>
					<c:if test="${loginUser.gradeCode == 0}">
						<strong style="color: #5F4D13;">제이지</strong> 입니다.
				</c:if>
					<br>
					<div class="mileInfo">
						<c:choose>
							<c:when test="${mile>=0 and mile <300000}">
								어피치 등급까지
								<fmt:formatNumber value="${300000-mile}" pattern="###,###,###" />
								마일리지 남았습니다.
							</c:when>
							<c:when test="${mile>=300000 and mile < 500000}">
								라이언 등급까지 
								<fmt:formatNumber value="${500000-mile}" pattern="###,###,###" />
								마일리지 남았습니다.
							</c:when>
							<c:when test="${mile>=500000 and mile <1000000}">
								춘식이 등급까지 
								<fmt:formatNumber value="${1000000-mile}" pattern="###,###,###" />
								 마일리지 남았습니다.
							</c:when>
							<c:otherwise>
								<fmt:formatNumber value="${mile}" pattern="###,###,###" />
								마일리지를 보유하여 춘식이 등급입니다.
							</c:otherwise>
						</c:choose>
					</div>
				</c:if>
			</div>

		<section class="grade">

			<div class="field">
				<img src="/resources/img/chunsik.png" alt="grade3">
				<p style="color: #FFCC66;">춘식이</p>
				<hr>
				<span> 자격 유지 기간[평생]<br>
				<br> 가입일로부터 <br>다음의 어느 한 조건을 충족할 경우<br>
				<br> 1) 100만 탑승 마일 적립<br> 2) 카카오항공 1,000회 탑승
				</span>
			</div>

			<div class="field">
				<img src="/resources/img/Lion.png" alt="grade2">
				<p style="color: #DD9B25;">라이언</p>
				<hr>
				<span> ‘기준일’로부터 매 24개월간 <br>다음의 어느 한 조건을 충족할 경우<br>
				<br> 1) 50만 탑승 마일 적립<br> 2) 카카오항공 50회 탑승<br> 3) 탑승
					마일이 50만 마일 이상이면서 카카오 <br>제휴카드 이용 실적과 합하여 50만 마일 적립
				</span>
			</div>

			<div class="field">
				<img src="/resources/img/apeach.png" alt="grade1">
				<p style="color: #FFCCCC;">어피치</p>
				<hr>
				<span> ‘기준일’로부터 매 24개월간 <br>다음의 어느 한 조건을 충족할 경우<br>
				<br> 1) 30만 탑승 마일 적립<br> 2) 카카오항공 50회 탑승<br> 3) 탑승
					마일이 30만 마일 이상이면서 카카오 <br>제휴카드 이용 실적과 합하여 30만 마일 적립
				</span>
			</div>

			<div class="field">
				<img src="/resources/img/Jay-G.png" alt="grade3">
				<p style="color: #5F4D13;">제이지</p>
				<hr>
				<span> 기본 회원가입 시 제공되는 등급 </span>
			</div>
		</section>
	</div>
	<!-- /회원등급안내 -->


	<!-- 회원혜택안내 -->

	<div class="gradeBenefit" style="display: none;">

		<table>
			<tr>
				<th width="40%">회원 혜택</th>
				<th width="15%">춘식이</th>
				<th width="15%">라이언</th>
				<th width="15%">어피치</th>
				<th width="15%">제이지</th>
			</tr>
			<tr>
				<td>스카이팀 등급</td>
				<td><b>VIP</b></td>
				<td><b>Diamond</b></td>
				<td><b>Gold</b></td>
				<td><b>Silver</b></td>
			</tr>
			<tr>
				<td>국제선 일반석 사전 좌석 배정 서비스</td>
				<td>O</td>
				<td>O</td>
				<td>O</td>
				<td>O</td>
			</tr>
			<tr>
				<td>라운지 이용</td>
				<td>O</td>
				<td>O</td>
				<td>O</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>성수기 보너스 이용 시<br>평수기 공제 마일리지 적용
				</td>
				<td>O</td>
				<td>O</td>
				<td>O</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>보너스 항공권<br>재발행 수수료 면제
				</td>
				<td>O</td>
				<td>O</td>
				<td>O</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>위탁 수하물 무료추가</td>
				<td>O</td>
				<td>O</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>수하물 우선 처리</td>
				<td>O</td>
				<td>O</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>전용전화 이용 (국내)</td>
				<td>O</td>
				<td>O</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>예약 대기 시 우선권</td>
				<td>O</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>전용 카운터</td>
				<td>O</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</table>
		<div class="VIPinform">
			1) 춘식이 전용 짐부치는 곳을 이용할 수 있습니다.<br> 2) 미주 노선 일반석은 제외 됩니다.<br>
			3) 춘식이 등급 회원은 항공사 직영 프레스티지 클래스 라운지를 2년동안 총 4회 이용할 수 있습니다.<br>
			4) 서비스센터, 지점에서 보너스 항공권을 구매 혹은 변경 하시는 경우 '항공권 서비스 수수료'가 부과됩니다.<br>
		</div>
		<br> <br> <br>
	</div>
	<!-- /회원혜택안내 -->

</div>
	<%@ include file="includes/footer.jsp"%>

</body>
</html>