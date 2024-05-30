<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="includes/header2.jsp"%>
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

<script src="../resources/js/vendor/modernizr.custom.min.js"></script>
<link rel="stylesheet" href="../resources/css/normalize.css">
<style>

p{
	text-align: center;
}
</style>

<div class="tm-page-wrap mx-auto" style="margin-top: 180px">

	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
					<h2 class="text-uppercase mb-4">
						<strong>Fly, better Fly</strong>
					</h2>
					<p class="mb-4">카카오 에어라인 을 방문해주신 모든 분들께 감사드립니다</p>
<!-- 					<a href="#" class="text-uppercase btn-primary tm-btn">Continue
						explore</a> -->
				</div>
			</div>
		</div>
	</section>

	<div class="tm-container-outer" id="tm-section-2">

	</div>
	<div class="tm-container-outer" id="tm-section-3">
		<ul class="nav nav-pills tm-tabs-links">
			<li class="tm-tab-link-li"><a href="history" data-toggle="information"
				class="tm-tab-link"> <!-- <img
					src="../resources/img/north-america.png" alt="Image"
					class="img-fluid"> 소개 --> 
				<img src="../resources/img/kakao/등급_라이언.png" alt="Image"
					class="img-fluid" style="width: 50px"> 소개 
			</a></li>
			<li class="tm-tab-link-li"><a href="history" data-toggle="history"
				class="tm-tab-link"> 
<!-- 				<img src="../resources/img/south-america.png" alt="Image"
					class="img-fluid"> 연혁 -->
				<img src="../resources/img/kakao/등급_어피치.png" alt="Image"
					class="img-fluid" style="width: 55px"> 연혁
			</a></li>
			<li class="tm-tab-link-li"><a href="map" data-toggle="map"
				class="tm-tab-link">
<!-- 				<img src="../resources/img/antartica.png"
					alt="Image" class="img-fluid"> 찾아오는 길 -->
				<img src="../resources/img/kakao/등급_춘식이.png"
					alt="Image" class="img-fluid" style="width: 55px"> 찾아오는 길
			</a></li>
		</ul>

	</div>
	<div class="main-wrapper">
		<div class="main-content">
			<section id="section">
				<section id='information'>
					<img src="../resources/img/kakao/인사말.jpg" alt="인사말이미지"/>
				</section>
			</section>
	</div>
	</div>
	<!-- <div class="main-wrapper">

	<!-- .tm-container-outer -->
	<%@ include file="includes/footer.jsp"%>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3156d02ad4070a1c858f024518bda8c5"></script>
	<script type="text/javascript">
		var str="";
		var section = $("#section");
		$(".tm-tab-link-li").on("click","a",function(e){
			e.preventDefault();
			var operData = $(this).data("toggle");
			if(operData ==="map"){
				$("#information").attr("id","map");
				str="";
				/* str+="<section id='map'>"; */
				str+="<p></p>"; 
				str+="<div class='tm-container-outer tm-position-relative' id='map' style='width: 800px; height: 400px;'></div>";
				str+="<p></p>"; 
				str+="<div><h3 class='text-uppercase mb-4' style='text-align: center;'><strong>카카오(본사)</strong> : 제주특별자치도 제주시 첨단로 242 (우)63309</h3></div>";
				str+="<p></p>"; 
				str+="<div><h3 class='text-uppercase mb-4' style='text-align: center;'><strong>카카오(판교)</strong> : 경기도 성남시 분당구 판교역로 166 (우)14529</h3></div>";
				/* str+="</section>"; */
			}else if(operData ==="history"){
				str="";
				$("#information").attr("id","history");
				str+="<img src='../resources/img/kakao/연혁2.jpg' alt='연혁이미지'/>"; 
			}else if(operData ==="information"){
				str="";
				$("#information").attr("id","information");
				str+="<img src='../resources/img/kakao/인사말.jpg' alt='인사말이미지'/>"; 
				/* str+="<div><p><img src='../resources/img/kakao/인사말.jpg' alt="Image"></p></div>";  */
				/* str+="<div><p>카카오 에어라인 ‘Fly, better fly’라는 슬로건을 바탕으로 2023년 10월 첫 창립되었습니다.</p><br></div>";
				str+="<div><p>카카오 에어라인은 국내 항공사 중 가장 많은 국내선 노선 운영으로 편리하고 다양한 항공 서비스를 제공하고 있으며,</p></div>";
				str+="<div><p>일본, 중국, 동남아, 대양주 등 전 세계로 뻗어가며 고객 여러분께 더 넓은 세상을 보여 드리기 위해 노력하고 있습니다.</p><br></div>";
				str+="<div><p>또한 카카오 에어라인은 경제적, 사회적, 환경적 책임을 다하고 지속 가능한 성장을 이루고,</p></div>";
				str+="<div><p>타협이 없는 절대 안전을 기반으로 여러분의 행복한 여행을 책임지겠습니다.</p><br></div>";
				str+="<div><p>더 나은 항공 여행 제공을 목표로 항공사의 핵심 가치인 안전과 서비스에서 완벽을 추구하며</p></div>";
				str+="<div><p>대한민국 대표 실용항공사로 자리매김할 수 있도록 최선을 다 하는 카카오 에어라인이 되도록 하겠습니다.</p><br></div>";
				str+="<div><p>감사합니다.</p></div>";  */
			}
			section.html(str);
			
			var mapContainer = document.getElementById('map'), 
			mapOption = { 
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };

			var map = new kakao.maps.Map(mapContainer, mapOption);
			
		});

	</script>
