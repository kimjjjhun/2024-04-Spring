<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">


<script src="../resources/js/vendor/modernizr.custom.min.js"></script>
<link rel="stylesheet" href="../resources/css/normalize.css">

<!-- 이미지로더 -->
<script
	src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
<style>
 img{
	max-width: 100%;
	display: block; /* 이미지를 블록 요소로 설정 */
 	margin: 0 auto; /* 가운데 정렬 */
} 
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
.map-container{
	position: relative;
    display: inline-block;
}

.map-container img {
    width: 100%;
    height: auto;
    position: relative;
}
#seats {
	text-align: center; /* 이미지 맵을 가운데 정렬합니다. */
	position: relative; /* 좌석들의 위치를 상대적으로 설정하기 위해 필요합니다. */
}

.seat {
	opacity: 0; 
	z-index : 1;
	position: absolute; /* 좌석을 상대적으로 위치시킵니다. */
	transform: translate(-50%, -50%);
	/* 좌석의 중심을 좌석의 좌상단이 아니라 중앙으로 이동시킵니다. */
}


.seat1#A1 {
    left: 189px;
    top: 131px;
    width:54px;
    height : 50px;
}
.seat1#A2 {
	z-index : 2;
    left: 189px;
    top: 191px;
    width:54px;
    height : 50px;
}

.seat1#A3 {
	z-index : 2;
    left: 189px;
    top: 251px;
    width:54px;
    height : 50px;
}
.seat1#A4 {
	z-index : 2;
    left: 189px;
    top: 312px;
    width:54px;
    height : 50px;
}
.seat1#B1 {
    left: 300px;
    top: 131px;
    width:54px;
    height : 50px;
}
.seat1#B2 {
	z-index : 2;
    left: 300px;
    top: 192px;
    width:54px;
    height : 50px;
}

.seat1#B3 {
	z-index : 2;
    left: 300px;
    top: 252px;
    width:54px;
    height : 50px;
}
.seat1#B4 {
	z-index : 2;
    left: 300px;
    top: 312px;
    width:54px;
    height : 50px;
}
.seat1#C1 {
    left: 364px;
    top: 131px;
    width:54px;
    height : 50px;
}
.seat1#C2 {
	z-index : 2;
    left: 364px;
    top: 191px;
    width:54px;
    height : 50px;
}

.seat1#C3 {
	z-index : 2;
    left: 365px;
    top: 253px;
    width:54px;
    height : 50px;
}
.seat1#C4 {
	z-index : 2;
    left: 366px;
    top: 312px;
    width:54px;
    height : 50px;
}
.seat1#D1 {
    left: 486px;
    top: 131px;
    width:54px;
    height : 50px;
}
.seat1#D2 {
	z-index : 2;
    left: 488px;
    top: 191px;
    width:54px;
    height : 50px;
}

.seat1#D3 {
	z-index : 2;
    left: 484px;
    top: 250px;
    width:54px;
    height : 50px;
}
.seat1#D4 {
	z-index : 2;
    left: 486px;
    top: 310px;
    width:54px;
    height : 50px;
}
.seat1#E1 {
    left: 550px;
    top: 130px;
    width:54px;
    height : 50px;
}
.seat1#E2 {
	z-index : 2;
    left: 551px;
    top: 190px;
    width:54px;
    height : 50px;
}

.seat1#E3 {
	z-index : 2;
    left: 551px;
    top: 252px;
    width:54px;
    height : 50px;
}
.seat1#E4 {
	z-index : 2;
    left: 550px;
    top: 311px;
    width:54px;
    height : 51px;
}
.seat1#F1 {
    left: 612px;
    top: 130px;
    width:54px;
    height : 50px;
}
.seat1#F2 {
	z-index : 2;
    left: 612px;
    top: 190px;
    width:54px;
    height : 50px;
}

.seat1#F3 {
	z-index : 2;
    left: 613px;
    top: 253px;
    width:56px;
    height : 50px;
}
 .seat1#F4 {
	z-index : 2;
    left: 612px;
    top: 312px;
    width:54px;
    height : 50px;
} 

</style>

<div class="tm-page-wrap mx-auto" style="margin-top : 180px;">
	<section class="tm-banner">

		<!-- .tm-container-outer -->
<!-- 		<div class="inner">
			<div class="slideshow">
				<img src="../resources/img/tm-img-01.jpg" alt="" width="1600"
					height="1000"> <img src="../resources/img/tm-img-02.jpg"
					alt="" width="1600" height="1000"> <img
					src="../resources/img/tm-img-03.jpg" alt="" width="1600"
					height="1000"> <img src="../resources/img/tm-img-04.jpg"
					alt="" width="1600" height="1000">
			</div>
		</div> -->
	</section>

	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
					<h2 class="text-uppercase mb-4">출발<i class="bi bi-caret-right-fill"></i>${vo.fullDeptime}</h2>
					<h2 class="text-uppercase mb-4">${vo.depName}<i class="bi bi-caret-right-fill"></i>${vo.arrName}
					&nbsp; /&nbsp; ${vo.flightName}</h2>
					<p class="mb-4">원하는 좌석을 골라 선택하여 주세요.</p>
					<!-- 					<a href="#" class="text-uppercase btn-primary tm-btn">Continue
						explore</a> -->
					<c:forEach items="${rvo}" var="data" varStatus="loop">	
						<input type="hidden" id="data_${loop.index}" class="data" value='<c:out value="${json}"/>'>
					</c:forEach>
					<div class="map-container">
						<img src="../resources/img/비행기 좌석도.jpg" usemap="#image-map" style="text-align: center;opacity: 0.8;"">
						<c:forEach items="${rvo}" var="seat">
							<c:if test="${not empty seat.seatid}">
								<div class="seat1" id="${seat.seatid}"></div>
							</c:if>
						</c:forEach>
						<!-- <div class="seat1" id="A1"></div>
						<div class="seat1" id="A2"></div>
						<div class="seat1" id="A3"></div>
						<div class="seat1" id="A4"></div>
						<div class="seat1" id="B1"></div>
						<div class="seat1" id="B2"></div>
						<div class="seat1" id="B3"></div>
						<div class="seat1" id="B4"></div>
						<div class="seat1" id="C1"></div>
						<div class="seat1" id="C2"></div>
						<div class="seat1" id="C3"></div>
						<div class="seat1" id="C4"></div>
						<div class="seat1" id="D1"></div>
						<div class="seat1" id="D2"></div>
						<div class="seat1" id="D3"></div>
						<div class="seat1" id="D4"></div>
						<div class="seat1" id="E1"></div>
						<div class="seat1" id="E2"></div>
						<div class="seat1" id="E3"></div>
						<div class="seat1" id="E4"></div>
						<div class="seat1" id="F1"></div>
						<div class="seat1" id="F2"></div>
						<div class="seat1" id="F3"></div>
						<div class="seat1" id="F4"></div> -->
					</div>
					<map name="image-map" id="seats">
					<area class="seat" target="" alt="A1" href="A1" coords="190,135,242,180" shape="rect" id="A1">
					<area class="seat" target="" alt="A2" href="A2" coords="190,190,242,235" shape="rect" id="A2">
					<area class="seat" target="" alt="A3" href="A3" coords="190,250,242,300" shape="rect" id="A3">
					<area class="seat" target="" alt="A4" href="A4" coords="190,310,242,360" shape="rect" id="A4">
					<area class="seat" target="" alt="B1" href="B1" coords="296,135,348,180" shape="rect" id="B1">
					<area class="seat" target="" alt="B2" href="B2" coords="296,190,348,235" shape="rect" id="B2">
					<area class="seat" target="" alt="B3" href="B3" coords="296,250,348,300" shape="rect" id="B3">
					<area class="seat" target="" alt="B4" href="B4" coords="296,310,348,360" shape="rect" id="B4">
					<area class="seat" target="" alt="C1" href="C1" coords="356,135,408,180" shape="rect" id="C1">
					<area class="seat" target="" alt="C2" href="C2" coords="356,190,408,235" shape="rect" id="C2">
					<area class="seat" target="" alt="C3" href="C3" coords="356,250,408,300" shape="rect" id="C3">
					<area class="seat" target="" alt="C4" href="C4" coords="356,310,408,360" shape="rect" id="C4">
					<area class="seat" target="" alt="D1" href="D1" coords="484,135,540,180" shape="rect" id="D1">
					<area class="seat" target="" alt="D2" href="D2" coords="484,190,540,235" shape="rect" id="D2">
					<area class="seat" target="" alt="D3" href="D3" coords="484,250,540,300" shape="rect" id="D3">
					<area class="seat" target="" alt="D4" href="D4" coords="484,310,540,360" shape="rect" id="D4">
					<area class="seat" target="" alt="E1" href="E1" coords="550,135,600,180" shape="rect" id="E1">
					<area class="seat" target="" alt="E2" href="E2" coords="550,190,600,235" shape="rect" id="E2">
					<area class="seat" target="" alt="E3" href="E3" coords="550,250,600,300" shape="rect" id="E3">
					<area class="seat" target="" alt="E4" href="E4" coords="550,310,600,360" shape="rect" id="E4">
					<area class="seat" target="" alt="F1" href="F1" coords="612,135,662,180" shape="rect" id="F1">
					<area class="seat" target="" alt="F2" href="F2" coords="612,190,662,235" shape="rect" id="F2">
					<area class="seat" target="" alt="F3" href="F3" coords="612,250,662,300" shape="rect" id="F3">
					<area class="seat" target="" alt="F4" href="F4" coords="612,310,662,360" shape="rect" id="F4">
				<!-- 		<area class="seat" target="" alt="A1" coords="292,204,374,277"
							shape="rect" id="A1">
						<area class="seat" target="" alt="A2" coords="292,296,374,370"
							shape="rect" id="A2">
						<area class="seat" target="" alt="A3" href="A3"
							coords="292,389,374,462" shape="rect" id="A3">
						<area class="seat" target="" alt="A4" href="A4"
							coords="292,481,374,555" shape="rect" id="A4">
						<area class="seat" target="" alt="B1" href="B1"
							coords="465,204,546,277" shape="rect" id="B1">
						<area class="seat" target="" alt="B2" href="B2"
							coords="465,296,546,370" shape="rect" id="B2">
						<area class="seat" target="" alt="B3" href="B3"
							coords="465,389,546,462" shape="rect" id="B3">
						<area class="seat" target="" alt="B4" href="B4"
							coords="465,481,546,555" shape="rect" id="B4">
						<area class="seat" target="" alt="C1" href="C1"
							coords="564,204,644,277" shape="rect" id="C1">
						<area class="seat" target="" alt="C2" href="C2"
							coords="564,296,644,370" shape="rect" id="C2">
						<area class="seat" target="" alt="C3" href="C3"
							coords="564,389,644,462" shape="rect" id="C3">
						<area class="seat" target="" alt="C4" href="C4"
							coords="564,481,644,555" shape="rect" id="C4">
						<area class="seat" target="" alt="D1" href="D1"
							coords="750,204,833,277" shape="rect" id="D1">
						<area class="seat" target="" alt="D2" href="D2"
							coords="750,296,833,370" shape="rect" id="D2">
						<area class="seat" target="" alt="D3" href="D3"
							coords="750,389,833,462" shape="rect" id="D3">
						<area class="seat" target="" alt="D4" href="D4"
							coords="750,481,833,555" shape="rect" id="D4">
						<area class="seat" target="" alt="E1" href="E1"
							coords="850,204,931,277" shape="rect" id="E1">
						<area class="seat" target="" alt="E2" href="E2"
							coords="850,296,931,370" shape="rect" id="E2">
						<area class="seat" target="" alt="E3" href="E3"
							coords="850,389,931,462" shape="rect" id="E3">
						<area class="seat" target="" alt="E4" href="E4"
							coords="850,481,931,555" shape="rect" id="E4">
						<area class="seat" target="" alt="F1" href="F1"
							coords="946,204,1028,277" shape="rect" id="F1">
						<area class="seat" target="" alt="F2" href="F2"
							coords="946,296,1028,370" shape="rect" id="F2">
						<area class="seat" target="" alt="F3" href="F3"
							coords="946,389,1028,462" shape="rect" id="F3">
						<area class="seat" target="" alt="F4" href="F4"
							coords="946,481,1028,555" shape="rect" id="F4"> -->
					</map>

				</div>
			</div>

		</div>
	</section>

	<!-- 전달 폼 -->
	<form id="resForm" action="/flight/flightRes" method="get">
		<input type='hidden' name='${_csrf.parameterName}'
			value='${_csrf.token}' />
	</form>
	

</div>
<!-- .tm-container-outer -->
<!-- <script type="text/javascript" src="http://davidlynch.org/projects/maphilight/jquery.maphilight.min.js"></script> -->
<script>
$(document).ready(function(e) {

var data = $(".data").val();
//console.log("data>>"+data);
var dataList = JSON.parse(data);
var seatid = dataList.map(item=>item.seatid);
var uniqSeatid = Array.from(new Set(seatid));
console.log(seatid);
console.log(uniqSeatid);

uniqSeatid.forEach(function(seatId){
	var seatArea = $(".seat[id='"+seatId+"']");
	var seat1 = $(".seat1");
	//seatArea.css('background-color','#CCCCCC');
	//seatArea.css('opacity','1');
	//seatArea.css('z-index','2');
	$(".seat1[id='"+seatId+"']").css('background-color','gray');
	seatArea.attr('id','selled');
 	$(".seat1[id='"+seatId+"']").css('background','#CCCCCC');
	$(".seat1[id='"+seatId+"']").css('opacity','0.8');
	$(".seat1[id='"+seatId+"']").css('z-index','2');
	$(".map-container").css('position','relative');
	$(".seat1[id='"+seatId+"']").css('position','absolute'); 
	seatArea.css('z-index','3');	
});

$('img[usemap]').rwdImageMaps();
		//location.reload();
	});
</script>
<script type="text/javascript">
	$(".seat").click(
					function(e) {
						e.preventDefault();
						alert($(this).attr('id'));
						if($(this).attr('id') == 'selled'){
							alert("예약된 좌석은 예매가 불가합니다.");
							return false;
						}
						$("#resForm")
								.append(
										"<input type='hidden' name='fno' value='" + ${fno}+ "'>");
						$("#resForm").append(
								"<input type='hidden' name='seat' value='"
										+ $(this).attr('id') + "'>");
						$("#resForm").submit();

					})
	/* 	var seat = $("area[name='s']").href();
	 /* var seat = $(this).document.getElementByName("s").getAttribute("href"); 
	 alert(seat);
	 $("#actionForm").append("<input type='hidden' name='fno' value='" + ${fno}+ "'>");
	 $("#actionForm").append("<input type='hidden' name='seat' value='" + $(this).attr("href")+ "'>");
	 $("#actionForm").submit(); */
</script>
<%@ include file="../includes/footer.jsp"%>