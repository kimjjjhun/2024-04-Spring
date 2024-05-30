<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script> 
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script> 
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script>
	var $jLatest = jQuery.noConflict();
</script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  var $jb = jQuery.noConflict();
</script>


<script src="../resources/js/vendor/modernizr.custom.min.js"></script>
<link rel="stylesheet" href="../resources/css/normalize.css">
<style>
.slideshow {
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
}

.notice {
	display: inline-block;
	width: 45%;
}

.dateNumber {
	float: right;
}

</style>



<div class="tm-page-wrap mx-auto" style="margin-top : 180px;">
	<section class="tm-banner">

		<!-- .tm-container-outer -->
		<div class="inner">
			<div class="slideshow">
				<img src="../resources/img/tm-img-10.jpg" alt="" width="1600"
					height="1000"> 
					<img src="../resources/img/tm-img-11.jpg"
					alt="" width="1600" height="1000"> 
					<img
					src="../resources/img/tm-img-12.jpg" alt="" width="1600"
					height="1000"> 
					<img src="../resources/img/tm-img-14.jpg"
					alt="" width="1600" height="1000">
					
					
			</div>
		</div>
	</section>


	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container ">
			<div class="row">
				<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
					<h2 class="text-uppercase mb-4">
						Your <strong>Journey</strong> is our priority
					</h2>
					<p class="mb-4">비즈니스부터 여행까지, 저희 항공사는 안전하고 편안한 비행 서비스로 고객 여러분의 모든 여정을 도와드립니다.<br>
					혁신적인 항공 기술과 친절한 승무원이 함께 어우러져, 항상 최상의 비행 경험을 제공합니다. <br>
					풍부한 노선망과 다양한 서비스로 여러분의 다양한 요구를 충족시키며, 항공 여행을 더욱 편리하게 즐길 수 있습니다.<br> 
					안전과 서비스에 최우선을 두는 저희 항공사는 항상 여러분의 편안하고 즐거운 여정을 위해 노력하겠습니다.</p>
<!-- 					<a href="#" class="text-uppercase btn-primary tm-btn">Continue
						explore</a> -->
				</div>
			</div>
				
					<form action="/flight/search" method="get" class="tm-search-form tm-section-pad-2">
						<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="oneWay" style="width: 100px;">편도</button> 
						<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" id="roundTrip">왕복</button>
						<br><br>
						
								<p>검색창에서 아래 방향키를 눌러, 취항지를 확인할 수 있습니다.</p>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
							<label for="dep">&#x2714&nbsp;출발지</label> 
						</div>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
							<label for="arr">&#x2714&nbsp;도착지</label> 
						</div>
						
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
							<select id="depRegionCode" name="depRegionCode">
								<option value="1" <c:if test="${depRegionCode=='1'}">selected="selected"</c:if>>한국</option>
								<option value="2" <c:if test="${depRegionCode=='2'}">selected="selected"</c:if>>동북아시아</option>
								<option value="3" <c:if test="${depRegionCode=='3'}">selected="selected"</c:if>>동남아시아/서남아시아</option>
								<option value="4" <c:if test="${depRegionCode=='4'}">selected="selected"</c:if>>몽골/중앙아시아</option>
								<option value="5" <c:if test="${depRegionCode=='5'}">selected="selected"</c:if>>유럽</option>
								<option value="6" <c:if test="${depRegionCode=='6'}">selected="selected"</c:if>>미주(미국,캐나다)</option>
								<option value="7" <c:if test="${depRegionCode=='7'}">selected="selected"</c:if>>대양주/사이판</option>
							</select>
						</div>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
							<select id="arrRegionCode" name="arrRegionCode">
								<option value="">선택해주세요</option>
								
							</select>
						</div>
						
						<div class="form-row tm-search-form-row">
							<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
								<input name="dep" type="text" class="form-control" id="departure" placeholder="출발지를 입력해주세요"  required="required">
							</div>
							<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2" id="arrSearchBar">
								<input name="arr" type="text" class="form-control" id="arrival" placeholder="도착지를 입력해주세요"  required="required">
							</div>
						</div>
						<br>
						<!-- form-row -->
						<div class="form-row tm-search-form-row">
							<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
								<label for="boardTitle">&#x1F551&nbsp;가는 날</label> 
								<input type="text" class="form-control" id="depDate" name="depDate" value = "${depDate}" >
							</div>
							
							<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1" id="depDiv">
								<c:if test="${!empty arrDate}">
								<label for="boardTitle">&#x1F551&nbsp;오는 날</label> 
								<input type="text" class="form-control" id="arrDate" name="arrDate" value = "${arrDate}">
								</c:if>
							</div>
							<div
								class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
								<label for="btnSubmit" id="1">&nbsp;</label>
								<button type="submit" class="btn btn-primary tm-btn tm-btn-search text-uppercase "
									id="btnSubmit">검색</button>
							</div>
						</div>
						<!-- <div class="form-row tm-search-form-row">
							<input type="hidden" name="command" value="flightList"/>
							<div class="form-row tm-search-form-row">
								<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
									<label for="departure"><a>&#x2714&nbsp;&nbsp;</a>출발지</label> 
									<input name="dep" type="text" class="form-control" id="departure" placeholder="출발지를 입력해주세요" required="required">
								</div>
								<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
									<label for="arrival"><a>&#x2714&nbsp;&nbsp;</a>도착지</label> 
									<input name="arr" type="text" class="form-control" id="arrival" placeholder="도착지를 입력해주세요" required="required">
								</div>
								<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
									<label for="inputCheckIn"><a>&#x2714&nbsp;&nbsp;</a>탑승객</label> 
									<input name="" type="text" class="form-control" id="" placeholder="탑승객">
								</div>
								<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
									<label for="inputCheckIn"><a>&#x2714&nbsp;&nbsp;</a>좌석등급</label> 
									<input name="" type="text" class="form-control" id="" placeholder="좌석등급">
								</div>
								<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
									<label for="depDate"><a>&#x1F551&nbsp;&nbsp;</a>가는 날</label> 
									<input name="depDate" type="text" class="form-control" id="depDate" placeholder="Check In">
								</div>
								<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1" id="depDiv">
									<label for="arrDate"><a>&#x1F551&nbsp;&nbsp;</a>오는 날</label> 
									<input name="arrDate" type="text" class="form-control" id="arrDate" placeholder="Check In">
								</div>
								<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
									<label for="btnSubmit">&nbsp;</label>
									<button type="submit" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="btnSubmit"  onclick="return checksubmit()">검색</button>
								</div>
								</div>
						</div> -->
					</form>

			
		</div>
	</section>

	<div class="tm-container-outer" id="tm-section-2">
		<section class="tm-slideshow-section tm-bg-gray">
			<div class="tm-slideshow">
				
				<c:forEach var="board" items="${EventList}">
					<img src="/display?fileName=${board.filePath}" style="width: 700px; height: 500px; object-fit: contain;" onclick="location.href='/boardEvent/view?boardNum=${board.boardNum}'">					
				</c:forEach>
			</div>
			<div class="tm-slideshow-description tm-bg-primary">
				<h2 class="">이벤트</h2>
				<p> 현재 진행중인 이벤트를 알아보세요</p>
				<a href="/boardEvent/list"
					class="text-uppercase tm-btn tm-btn-white tm-btn-white-primary">게시판으로 이동</a>
			</div>
		</section>
		<!-- <section
			class="clearfix tm-slideshow-section tm-slideshow-section-reverse">

			<div class="tm-right tm-slideshow tm-slideshow-highlight">
				<img src="../resources/img/tm-img-02.jpg" alt="Image"> <img
					src="../resources/img/tm-img-03.jpg" alt="Image"> <img
					src="../resources/img/tm-img-01.jpg" alt="Image">
			</div>

			<div
				class="tm-slideshow-description tm-slideshow-description-left tm-bg-highlight">
				<h2 class="">Asia's most popular places</h2>
				<p>Vivamus in massa ullamcorper nunc auctor accumsan ac at arcu.
					Donec sagittis mattis pharetra. Proin commodo, ante et volutpat
					pulvinar, arcu arcu ullamcorper diam, id maximus sem tellus id sem.
					Suspendisse eget rhoncus diam. Fusce urna elit, porta nec
					ullamcorper id.</p>
				<a href="#"
					class="text-uppercase tm-btn tm-btn-white tm-btn-white-highlight">Continue
					Reading</a>
			</div>

		</section>
		<section class="tm-slideshow-section">
			<div class="tm-slideshow">
				<img src="../resources/img/tm-img-03.jpg" alt="Image"> <img
					src="../resources/img/tm-img-02.jpg" alt="Image"> <img
					src="../resources/img/tm-img-01.jpg" alt="Image">
			</div>
			<div class="tm-slideshow-description tm-bg-primary">
				<h2 class="">America's most famous places</h2>
				<p>Donec nec laoreet diam, at vehicula ante. Orci varius natoque
					penatibus et magnis dis parturient montes, nascetur ridiculus mus.
					Suspendisse nec dapibus nunc, quis viverra metus. Morbi eget diam
					gravida, euismod magna vel, tempor urna.</p>
				<a href="#"
					class="text-uppercase tm-btn tm-btn-white tm-btn-white-primary">Continue
					Reading</a>
			</div>
		</section> -->
	</div>
	
	<!-- 공지사항 -->
		
		<section class="p-5 tm-container-outer tm-bg-gray">
			<hr>
			<div class="notice">
						<h2 class="special_slider_title">
							공지사항
						</h2>
						<p class="special_slider_subtitle" title="새로운 소식을 알려드립니다.">
							새로운 소식을 알려드립니다.
						</p>								
						<a href="/notice/list">
							더보기
						</a>
			</div>
			<div class="notice">
				<ul>
					<c:forEach items="${noticeBoard}" var="nBoard">
						<li>
							<c:if test="${nBoard.emergency!=0}">
								<i class="fa fa-warning" style="color:red"></i>
							</c:if>
							<a href="/notice/read?boardnum=${nBoard.boardnum}"><b>${nBoard.boardsubject}</b></a>
							<span class="dateNumber">${fn:substring(nBoard.modifydate, 0,10)}</span>
							<br><br>
						</li>
					</c:forEach>
				</ul>
			</div>
			<hr>
		</section>
			<!-- //공지사항 -->
	
	<div class="tm-container-outer tm-bg-gray" id="tm-section-3">
		<ul class="nav nav-pills tm-tabs-links ">
			<li class="tm-tab-link-li"><a href="#1a" data-toggle="tab"
				class="tm-tab-link"> <img
					src="../resources/mainImg/korea.png" width="100px" height="100px" alt="Image"
					class="img-fluid"> 국내선
			</a></li>
			<li class="tm-tab-link-li"><a href="#2a" data-toggle="tab" class="tm-tab-link"> 
			<img src="../resources/mainImg/north-east-asia.png" alt="Image" width="100px" height="100px" class="img-fluid"> 
				<br>동북아시아
			</a></li>
			<li class="tm-tab-link-li"><a href="#3a" data-toggle="tab" class="tm-tab-link"> 
			<img src="../resources/mainImg/south-east-asia.png" alt="Image" width="100px" height="100px" class="img-fluid"> 
					동남아/서남아시아
			</a></li>
			<li class="tm-tab-link-li"><a href="#4a" data-toggle="tab" class="tm-tab-link active"> <!-- Current Active Tab --> 
			<img src="../resources/mainImg/central-asia.png" alt="Image" width="100px" height="100px" class="img-fluid">
				<br>중앙아시아
			</a></li>
			<li class="tm-tab-link-li"><a href="#5a" data-toggle="tab" class="tm-tab-link"> 
			<img src="../resources/mainImg/europe.png" alt="Image" class="img-fluid"> 
				유럽
			</a></li>
			<li class="tm-tab-link-li"><a href="#6a" data-toggle="tab" class="tm-tab-link"> 
			<img src="../resources/mainImg/north_america.png" alt="Image" width="100px" height="100px" class="img-fluid"> 
				<br>미주(미국/캐나다)
			</a></li>
			<li class="tm-tab-link-li"><a href="#7a" data-toggle="tab" class="tm-tab-link"> 
			<img src="../resources/mainImg/oceania.png"	alt="Image" width="100px" height="100px" class="img-fluid"> 
				대양주
			</a></li>
		</ul>
		<div class="tab-content clearfix tm-bg-gray">
		<input type="hidden" value="${today}">
		<input type="hidden" value="${nextWeek}">
		
			<!-- Tab 1 -->
			<div class="tab-pane fade tm-bg-gray" id="1a">
				<div class="tm-recommended-place-wrap">
					<div class="tm-recommended-place">
						<img src="../resources/mainImg/korea/Jeju.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">김포 ↔ 제주</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">신비로운 제주 돌문화촌과 함께 고풍스러운 한옥스테이에서 휴식을 즐기세요.<br>
							 맑은 바다와 푸른 하늘 아래에서 휴식을 즐기면서 지친 일상을 잊을 수 있는 최고의 여행지입니다.
							</p>
						</div>
						<a href="/flight/search?dep=김포&arr=제주&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box tm-bg-gray">
							<p class="tm-recommended-price " ><fmt:formatNumber value="${GMPtoCJU}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/korea/Jeju2.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">광주 ↔ 제주</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">푸른 바다, 신비로운 동굴, 그리고 맛있는 특산물로 가득한 특별한 경험을 만나보세요.<br> 
							한라산 등반으로 환상적인 풍경을 만끽하고, 성산일출봉에서 일출의 아름다움을 느껴보세요.</p>
						</div>
						<div id="preload-hover-img"></div>
						<a href="/flight/search?dep=광주&arr=제주&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${KWJtoCJU}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/korea/Yeosu.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">김포 ↔ 여수</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray"> 여수 남해안의 선홍색 일몰과 함께 돌산 대교의 아름다움을 만끽하세요.<br> 
								특히 여수밤바다는 반짝이는 불빛과 함께 로맨틱한 분위기를 조성해 더욱 특별한 여행이 될 것입니다.</p>
						</div>
						<a href="/flight/search?dep=김포&arr=여수&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${GMPtoRSU}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

				</div>

			</div>
			<!-- tab-pane -->

			<!-- Tab 2 -->
			<div class="tab-pane fade" id="2a">

				<div class="tm-recommended-place-wrap">
					<div class="tm-recommended-place">
						<img src="../resources/mainImg/northEastAsia/Osaka.jpg" alt="Image"
							class="img-fluid tm-recommended-img" style="height: 270px;" >
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 오사카</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">오사카는 현대적인 도시경관과 전통적인 문화가 공존하는 매력적인 도시입니다.<br> 
								오사카성, 도톤보리 쇼핑거리, 맛있는 길거리 음식 등 풍부한 경험을 즐기며 독특하고 활기찬 일본의 느낌을 만끽할 수 있습니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=오사카&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoKIX}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/northEastAsia/Fukuoka.jpg" alt="Image"
							class="img-fluid tm-recommended-img" style="height: 270px;" >
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 후쿠오카</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">후쿠오카는 풍부한 음식 문화와 역동적인 번화가가 어우러진 일본의 대도시로, 캐널시티나 오호리공원에서 휴식을 즐기며 현지 맛집을 탐험해보세요.<br> 
									온천과 역사적인 명소가 곳곳에 흩어져 있어 다채로운 매력을 느낄 수 있는 도시입니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=후쿠오카&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoFUK}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/northEastAsia/Taipei.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 타이베이</h3>
							<p class="tm-text-highlight">편도</p>
							<p class="tm-text-gray">타이페이 101에서 바라보는 도시 전경과 시린 낭만을 경험해보세요.<br> 
							풍부한 음식 거리와 역사적인 사적지가 어우러져, 매일 다양한 즐거움을 발견할 수 있는 매력적인 여행지입니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=타이베이&depDate=${today}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoTPE}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/northEastAsia/HongKong.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">홍콩 ↔ 인천</h3>
							<p class="tm-text-highlight">편도</p>
							<p class="tm-text-gray">홍콩은 동서양 문화가 만나 환상적인 현대 도시를 이루고 있습니다.<br>
							높이 솟아 있는 빌딩, 다채로운 거리 음식, 그리고 화려한 야경이 도시의 매력을 더욱 돋보이게 만들고 있어, 다양한 경험을 즐기기에 제격인 여행지입니다.</p>
						</div>
						<a href="/flight/search?dep=홍콩&arr=인천&depDate=${today}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoHKG}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>
				</div>

			</div>
			<!-- tab-pane -->

			<!-- Tab 3 -->
			<div class="tab-pane fade" id="3a">

				<div class="tm-recommended-place-wrap">
					<div class="tm-recommended-place">
						<img src="../resources/mainImg/southEastAsia/HoChiMinh.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 호찌민</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">호치민은 베트남의 남부에 위치한 대도시로, 현대적인 도시 생활과 역사적인 유적이 공존하는 독특한 도시입니다.<br>
							시티뷰에서 바라보는 고층 빌딩의 풍경은 현대 베트남의 번창을 상징하며, 벤탄시장에서는 현지 문화와 다양한 상품을 즐길 수 있습니다.<br>
							베트남 전쟁 박물관과 제1호 대통령 관저인 인정궁은 도시의 역사적인 중요성을 엿볼 수 있는 명소로 꼽힙니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=호찌민&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoSGN}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/southEastAsia/Manila.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 마닐라</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">스페인식 바로크 양식의 건물과 현대적인 상업지구가 어우러져 독특한 경관을 감상할 수 있습니다.<br>
								마닐라만의 특별한 맛을 찾아보고자 한다면 말라떼 지구의 맛집과 시장을 탐험해보세요.<br> 
								태양이 지는 마닐라 베이 산책로는 방문객들에게 아름다운 경험을 선사합니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=마닐라&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoMNL}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/southEastAsia/Singapore.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 싱가포르</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">싱가포르의 랜드마크인 마리나 베이 샌즈와 그랜드 하얏트 호텔은 세계적인 건축물로 유명하며, 아름다운 건물들이 위치한 클락키, 차이나타운은 이국적인 매력을 자랑합니다.<br>
								가든스 바이 더 베이와 플라워돔, 싱가포르 동물원과 리버 사파리를 방문하여 도시에서도 자연을 만끽할 수 있습니다.<br>
								도시 전역에 퍼져있는 공원과 정원은 도심 속에서도 자연의 아름다움을 느낄 수 있게 해주며, 세계적으로 손꼽히는 세계 최고의 정돈된 도시 중 하나로 알려져 있습니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=싱가포르&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoSIN}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/southEastAsia/Bangkok.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 방콕</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">방콕은 아름다운 신전, 역동적인 거리 시장, 풍부한 문화로 가득찬 도시입니다.<br>
							우선 그랜드 팰리스와 왓 프라케옹 신전은 놀라운 태국의 전통과 예술을 만날 수 있는 곳으로, 황홀한 골드 컬러와 화려한 장식이 인상적입니다.<br> 
							방콕의 강변 지역에 위치한 아시아 티크 야시장에서는 다양한 상품과 식물을 살 수 있으며, 태국 전통 목공예품도 구경할 수 있습니다. </p>
						</div>
						<a href="/flight/search?dep=인천&arr=방콕&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoBKK}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>
				</div>

			</div>
			<!-- tab-pane -->

			<!-- Tab 4 -->
			<div class="tab-pane fade show active" id="4a">
				<!-- Current Active Tab WITH "show active" classes in DIV tag -->
				<div class="tm-recommended-place-wrap">
					<div class="tm-recommended-place">
						<img src="../resources/mainImg/centralAsia/Ulaanbaatar.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 울란바타르</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">푸른 하늘 아래 펼쳐진 몽골의 자연 경관을 감상하며, 고대 몽골의 역사와 전통을 엿볼 수 있는 몽골 국립 박물관을 방문해보세요.<br>
							몽골의 다양한 얼굴을 만날 수 있는 이곳은 여행자들에게 독특하고 흥미로운 경험을 선사합니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=울란바타르&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoUBN}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/centralAsia/Almaty.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 알마티</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">알마티는 카자흐스탄의 수도로, 아름다운 자연 경관과 문화적 다양성이 어우러진 매력적인 도시입니다.<br>
								카파논 공원은 알마티의 녹지로, 푸른 나무와 꽃으로 가득하며 산책하기 좋은 장소입니다.<br>
								알마티의 역사적인 유적지 중 하나인 알마티 페트로파블스크 대성당은 아름다운 돔과 기와 지붕으로 유명하며, 도시의 역사와 문화를 엿볼 수 있는 곳입니다. </p>
						</div>
						<div id="preload-hover-img"></div>
						<a href="/flight/search?dep=인천&arr=알마티&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoALA}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/centralAsia/Taschkent.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 타슈켄트</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">타슈켄트의 독립 광장은 중앙 아시아에서 가장 큰 광장 중 하나로, 우즈베키스탄의 예술과 건축을 대표하는 곳입니다.<br> 
								초르수 바자르는 다양한 상점이 모여 있는 곳으로, 현지의 다채로운 상품을 쇼핑할 수 있습니다.<br>
								아미르 티무르 박물관 우즈베키스탄의 역사를 소개하는 박물관으로, 티무르 제국의 초대 황제인 티무르와 관련된 유물을 소장하고 있다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=타슈켄트&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoTAS}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>
				</div>

			</div>
			<!-- tab-pane -->

			<!-- Tab 5 -->
			<div class="tab-pane fade" id="5a">

				<div class="tm-recommended-place-wrap">
					<div class="tm-recommended-place">
						<img src="../resources/mainImg/europe/Frankfurt.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 프랑크푸르트</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">
								고전 음악의 중심인 알테 오퍼는 세계적인 음악 단체와 공연을 선보이며 예술과 음악을 즐길 수 있는 곳입니다. <br>
								뢰머 광장은 도시의 중심부로, 다양한 상점, 레스토랑, 박물관 등이 모여 있습니다. <br>
								라인강 강변 산책로에서 프랑크푸르트의 아름다운 강변을 따라 산책하면서 휴식을 취해보세요.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=프랑크푸르트&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoFRA}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/europe/London.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 런던히드로</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">런던은 영국의 수도로, 세계적으로 유명한 도시 중 하나입니다. <br>
							런던 타워와 타워브릿지, 빅 벤, 버킹엄 궁전과 같은 랜드마크들은 도시의 아이콘으로 자리 잡고 있습니다.<br>
							템즈 강은 도시를 가로지르며 아름다운 풍경을 제공하고, 사우스뱅크는 현대적이고 예술적인 분위기를 자랑합니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=런던히드로&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoLHR}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/europe/Paris.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 파리</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">에펠탑은 도시의 상징으로, 레니스상 강변에서 아름다운 불빛으로 빛나며 밤하늘을 아름답게 장식합니다. <br>
							개선문과 노트르담 대성당 같은 건축물은 도시의 역사와 예술을 대표하는 명소입니다.<br>
							루브르 박물관은 세계적인 예술 작품들을 소장하고 있으며, 몽마르트의 거리와 예술가들의 정신을 느낄 수 있는 명소로 알려져 있습니다.
							</p>
						</div>
						<a href="/flight/search?dep=인천&arr=파리&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoCDG}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/europe/Rome.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 로마</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">로마는 세계적인 역사와 문화의 보고로, 고대 로마의 유적물과 아름다운 예술로 가득찬 도시입니다. <br>
							콜로세움과 로마노 포룸은 고대 로마의 위대함을 상징하며, 바티칸 시국의 성 피터 대성당은 기독교 세계의 중심지입니다. <br>
							로마의 각종 광장과 분수는 도시의 아름다운 풍경을 만들어내며, 트레비 분수는 로마를 대표하는 명소 중 하나입니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=로마&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoFCO}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>
				</div>

			</div>
			<!-- tab-pane -->

			<!-- Tab 6 -->
			<div class="tab-pane fade" id="6a">

				<div class="tm-recommended-place-wrap">
					<div class="tm-recommended-place">
						<img src="../resources/mainImg/northAmerica/LosAngeles.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 로스앤젤레스</h3>
							<p class="tm-text-highlight">편도</p>
							<p class="tm-text-gray">할리우드는 세계적인 영화 산업의 중심지로서 유명하며, 월트 디즈니 콘서트홀과 같은 문화적 명소도 많이 있습니다. <br> 
							그리고 실리콘 비치는 해변과 함께 세계적으로 유명한 기술 중심지로 알려져 있습니다. <br> 
							그림과 같이 아름다운 산타모니카 해변은 휴양과 레저의 좋은 장소로 알려져 있습니다. </p>
						</div>
						<a href="/flight/search?dep=인천&arr=로스앤젤레스&depDate=${today}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoLAX}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/northAmerica/NewYork.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 뉴욕</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">맨해튼의 높은 고층 빌딩과 중앙 공원은 도시의 아이콘으로, 다양한 예술과 엔터테인먼트 시설이 자리하고 있습니다. <br>
							타임스스퀘어와 브로드웨이는 세계적인 엔터테인먼트와 쇼핑의 중심으로, 뉴욕의 다양한 문화를 체험할 수 있는 곳입니다. <br>
							브루클린의 다양한 동네와 다양한 음식 문화는 도시의 다양성을 보여주며, 자유의 여신상은 뉴욕을 대표하는 상징 중 하나입니다. </p>
						</div>
						<a href="/flight/search?dep=인천&arr=뉴욕&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoJFK}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/northAmerica/SanFrancisco.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 샌프란시스코</h3>
							<p class="tm-text-highlight">편도</p>
							<p class="tm-text-gray">샌프란시스코는 미국 서부에 위치한 도시로, 아름다운 해안선과 높은 언덕 지형이 특징입니다. 
							황홀한 금문교와 역사적인 알카트라즈 섬은 도시의 랜드마크로서 유명합니다.
							퍼시픽 하이츠의 아름다운 풍경과 피셔맨스 워프의 생동감 있는 분위기는 도시의 독특한 매력을 느낄 수 있는 곳입니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=샌프란시스코&depDate=${today}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoSFO}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/northAmerica/Honolulu.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 호놀룰루</h3>
							<p class="tm-text-highlight">편도</p>
							<p class="tm-text-gray">호놀룰루는 ​​하와이 주의 수도이자 최대 도시로, 태평양의 중심에 위치해 푸른 바다와 아름다운 해변을 자랑합니다. 
							다이아몬드 헤드와 와이키키 비치는 도시의 대표적인 명소로, 서핑과 해변에서의 즐거움을 제공합니다. 
							따뜻한 기후, 아름다운 자연, 그리고 다채로운 문화적 경험이 어우러져 동화된 여행지를 즐겨보세요.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=호놀룰루&depDate=${today}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoHNL}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>
				</div>

			</div>
			<!-- tab-pane -->

			<!-- Tab 7 -->
			<div class="tab-pane fade" id="7a">

				<div class="tm-recommended-place-wrap">
					<div class="tm-recommended-place">
						<img src="../resources/mainImg/oceania/Sydney.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 시드니</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">시드니 오페라 하우스와 하버 브릿지는 도시의 상징적인 랜드마크로, 본다이 비치나 맨리 비치와 같은 해변들은 휴양과 레저를 즐길 수 있는 좋은 장소입니다.<br>
							 뉴타운과 서러힐즈와 같은 동네들은 독특한 예술과 문화로 가득하며, 현지 음식과 다양한 상점들이 모여 있으며, 편안하고 활기찬 분위기를 자랑하는 세계적인 도시 중 하나입니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=시드니&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoSYD}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>

					<div class="tm-recommended-place">
						<img src="../resources/mainImg/oceania/Saipan.jpg" alt="Image"
							class="img-fluid tm-recommended-img">
						<div class="tm-recommended-description-box">
							<h3 class="tm-recommended-title">인천 ↔ 사이판</h3>
							<p class="tm-text-highlight">왕복</p>
							<p class="tm-text-gray">
							사이판은 태평양의 중심에 위치한 미국령 섬으로, 푸른 바다와 화려한 해변, 그리고 독특한 문화로 알려져 있습니다. <br>
							마이크로 비치와 마나가하 섬를 감상할 수 있는 보트 투어는 매력적인 해안 경관을 즐길 수 있는 좋은 방법입니다. <br>
							뿐만 아니라 수상 스포츠와 문화체험을 결합한 다양한 활동들이 사이판에서 기다리고 있습니다.</p>
						</div>
						<a href="/flight/search?dep=인천&arr=사이판&depDate=${today}&arrDate=${nextWeek}" class="tm-recommended-price-box">
							<p class="tm-recommended-price"><fmt:formatNumber value="${ICNtoSPN}" type="currency" currencySymbol="￦" minFractionDigits="0" /></p>
							<p class="tm-recommended-price-link">일정 확인하기</p>
						</a>
					</div>
					
				</div>

			</div>
			<!-- tab-pane -->&nbsp;
		</div>
	</div>


	<!-- 모달창 -->
	<jsp:include page="/WEB-INF/views/NoticePopup.jsp"/>   
	<!-- /모달창 -->
	
	<!-- 모달창 -->
	 <jsp:include page="/WEB-INF/views/FlightPopup.jsp"/>   
	<!-- /모달창 -->
	
	<!-- .tm-container-outer -->
	<%@ include file="includes/footer.jsp"%>
	<!-- 충돌부분 추가 -->
	<script type="text/javascript">
		var $123 = jQuery.noConflict();
		$("#oneWay").on("click", function(){
			console.log("편도");
			str = "";
			$("#depDiv").html(str);
			
		});
		
		$("#roundTrip").on("click", function(){
			console.log("왕복");
			str = "";
			str += "<label for='arrDate'><a>&#x1F551&nbsp;&nbsp;</a>오는 날</label>"; 
			str += "<input type='text' class='form-control' id='arrDate' name='arrDate'>";
			$("#depDiv").html(str);
			
			$jLatest('input[id="arrDate"]').daterangepicker({
				singleDatePicker: true,
			    //timePicker: true,
			    timePicker24Hour: true,
				 "locale": {
				       "format": 'YYYY-MM-DD',
				       "separator": " ~ ",
				       "applyLabel": "확인",
				        "cancelLabel": "취소",
				        "fromLabel": "From",
				        "toLabel": "To",
				        "customRangeLabel": "Custom",
				        "weekLabel": "주",
				        "daysOfWeek": [
				             "일",
				             "월",
				             "화",
				             "수",
				             "목",
				             "금",
				             "토"
				       ],
				      "monthNames": [
				             "1월",
				             "2월",
				             "3월",
				             "4월",
				             "5월",
				             "6월",
				             "7월",
				             "8월",
				             "9월",
				             "10월",
				             "11월",
				             "12월"
				        ],
				        "firstDay": 1
				    },
				    
				    
				    "minDate": "2023-12-01",
				    "maxDate": "2024-02-28"
			});
		});

		$jLatest('input[id="depDate"]').daterangepicker({
			singleDatePicker: true,
		    //timePicker: true,
		    timePicker24Hour: true,
			 "locale": {
			       "format": 'YYYY-MM-DD',
			       "separator": " ~ ",
			       "applyLabel": "확인",
			        "cancelLabel": "취소",
			        "fromLabel": "From",
			        "toLabel": "To",
			        "customRangeLabel": "Custom",
			        "weekLabel": "주",
			        "daysOfWeek": [
			             "일",
			             "월",
			             "화",
			             "수",
			             "목",
			             "금",
			             "토"
			       ],
			      "monthNames": [
			             "1월",
			             "2월",
			             "3월",
			             "4월",
			             "5월",
			             "6월",
			             "7월",
			             "8월",
			             "9월",
			             "10월",
			             "11월",
			             "12월"
			        ],
			        "firstDay": 1
			    },
			    "minDate": "2023-12-01",
			    "maxDate": "2024-02-28"
		});
	</script>
	<script type="text/javascript">
		$(function() {
			$('.slideshow').each(function() {
				// each : 앞에 선택된 내용의 개수만큼 반복하도록 하는 메서드
				let $slides = $(this).find("img");
				let slideCount = $slides.length;
				let currentIndex = 0;
				$slides.eq(currentIndex).fadeIn();
				// 첫 이미지를 나타나게 함

				// 다음이미지가 나타나게 끔->현재 이미지를 페이드아웃하고 다음이미지를 나타나게 하고 현재이미지값으로 변경시켜서 로테이션돌게 함
				let showNextSlide = function() {
					let nextIndex = (currentIndex + 1) % slideCount;
					// 다음이미지의 인덱스 값을 구하는데 이미지가 4개이므로 최대값이 3이되어야 함 따라서 나머지 연산자를 통해 반복하도록 함(1~4의 값을 4로 나누므로 0~3을 반복시킴-어차피 0은 위에서 표시되도록 했으니까.....?)
					$slides.eq(currentIndex).fadeOut();
					// 현재 이미지를 사라지게 하고
					$slides.eq(nextIndex).fadeIn();
					// 위에서 구한 다음 이미지를 나타나게 함
					currentIndex = nextIndex;
					// 다음 이미지의 값을 현재로 
				}

				let timer = setInterval(showNextSlide, 5000);
				$(this).on('mouseover', function() {
					//타이머 취소
					clearInterval(timer);
				}).on('mouseout', function() {
					//타이머 시작
					timer = setInterval(showNextSlide, 5000);
				})
			})
		});
		
		// Slick Carousel
        $('.tm-slideshow').slick({
            infinite: true,
            arrows: true,
            slidesToShow: 1,
            slidesToScroll: 1
        });
		
	
		
	</script>

	<script>
	//출발지 자동완성
	$jb(function() {    //화면 다 뜨면 시작
	   $jb("#departure").autocomplete({
	        source : function( request, response ) {
	             $jb.ajax({
	                    type: 'get',
	                    url: "/flight/getDistinctDep",
	                    dataType: "json",
	                    data: {searchValue: $("#departure").val(), depRegionCode: $("#depRegionCode").val()},
	                    success: function(data) {
	                    	console.log(data);
	                    	var json = JSON.stringify(data);
	                    	console.log(json);
	                        //서버에서 json 데이터 response 후 목록에 추가
	                        response(
	                            $jb.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
	                                return {
	                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
	                                    value: item,    //그냥 사용자 설정값
	                                }
	                            })
	                        );
	                    }
	               });
	            },    // source 는 자동 완성 대상
	         select : function(event, ui) {    //아이템 선택시
	            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
	            console.log(ui.item.label);    
	            console.log(ui.item.value);
	            $.ajax({
	    	        type: 'get',
	    	        url: "/flight/getDistinctArrRegionCode",
	    	        dataType: "json",
	    	        data: {depName : ui.item.label},
	    	        //contentType : "application/json; charset=utf-8", 
	    	        success: function(data) {
			     	   console.log(data);
			     	   str = "";
			     	   str += "<option value=''>선택해주세요</option>"
			     	   if(data.includes('1')){
			     		  str+="<option value='1'>한국</option>";
			     	   } 
			     	   if(data.includes('2')){
			     		  str+="<option value='2'>동북아시아</option>";
			     	   } 
			     	   if(data.includes('3')){
			     		 str+= "<option value='3'>동남아시아/서남아시아</option>";
			     	   } 
			     	   if(data.includes('4')){
			     		  str+="<option value='4'>몽골/중앙아시아</option>";
			     	   } 
			     	   if(data.includes('5')){
			     		  str+="<option value='5'>유럽</option>";
			     	   } 
			     	   if(data.includes('6')){
			     		  str+="<option value='6'>미주(미국,캐나다)</option>";
			     	   } 
			     	   if(data.includes('7')){
			     		  //$("#arrRegionCode").append("<option value='7'>대양주/사이판</option>");
			     		  str+="<option value='7'>대양주/사이판</option>";
			     	   } 
	    	     	   
	    	     	   $("#arrRegionCode").html(str);
	    	        
	    	        }
	    	    });
	            
	        },
	        focus : function(event, ui) {    //포커스 가면
	            return false;//한글 에러 잡기용도로 사용됨
	        },
	        minLength: 0,// 최소 글자수
	        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
//	        classes: {    //잘 모르겠음
//	            "ui-autocomplete": "highlight"
//	        },
	        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//	        disabled: true, //자동완성 기능 끄기
//	        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
	        close : function(event){    //자동완성창 닫아질때 호출
	            console.log(event);
	        }  
	      	    
	    });
	   
	});  

	//도착지 자동완성 
	 $jb(function() {    //화면 다 뜨면 시작
	    $jb("#arrival").autocomplete({
	        source : function( request, response ) {
	             $jb.ajax({
	                    type: 'POST',
	                    url: "/flight/getDistinctArrByDep1",
	                    dataType: "json",
	                    //data: JSON.stringify({depName : $("#departure").val(),searchValue: $("#arrival").val()}),
	                    data: {depName : $("#departure").val(),searchValue: $("#arrival").val()},
	                    //contentType : "application/json; charset=utf-8", 
	                    success: function(data) {
	                    	console.log(data);
	                    	var json = JSON.stringify(data);
	                    	console.log(json);
	                        //서버에서 json 데이터 response 후 목록에 추가
	                        response(
	                            $jb.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
	                                return {
	                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
	                                    value: item,    //그냥 사용자 설정값
	                                }
	                            })
	                        );
	                    }
	               });
	            },    // source 는 자동 완성 대상
	         select : function(event, ui) {    //아이템 선택시
	            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
	            console.log(ui.item.label);    
	            console.log(ui.item.value);    
	            
	        },
	        focus : function(event, ui) {    //포커스 가면
	            return false;//한글 에러 잡기용도로 사용됨
	        },
	        minLength: 0,// 최소 글자수
	        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
//	        classes: {    //잘 모르겠음
//	            "ui-autocomplete": "highlight"
//	        },
	        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//	        disabled: true, //자동완성 기능 끄기
//	        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
	        close : function(event){    //자동완성창 닫아질때 호출
	            console.log(event);
	        }  
	      	    
	    });
	   
	}); 
	
	//도착지 자동완성 
	 $jb(function() {    //화면 다 뜨면 시작
	    $jb("#arrival2").autocomplete({
	        source : function( request, response ) {
	             $jb.ajax({
	                    type: 'POST',
	                    url: "/flight/getDistinctArrByDep2",
	                    dataType: "json",
	                    //data: JSON.stringify({depName : $("#departure").val(),searchValue: $("#arrival").val()}),
	                    data: {depName : $("#departure").val(),searchValue: $("#arrival").val(), arrRegionCode: $("#arrRegionCode").val()},
	                    //contentType : "application/json; charset=utf-8", 
	                    success: function(data) {
	                    	console.log(data);
	                    	var json = JSON.stringify(data);
	                    	console.log(json);
	                        //서버에서 json 데이터 response 후 목록에 추가
	                        response(
	                            $jb.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
	                                return {
	                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
	                                    value: item,    //그냥 사용자 설정값
	                                }
	                            })
	                        );
	                    }
	               });
	            },    // source 는 자동 완성 대상
	         select : function(event, ui) {    //아이템 선택시
	            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
	            console.log(ui.item.label);    
	            console.log(ui.item.value);    
	            
	        },
	        focus : function(event, ui) {    //포커스 가면
	            return false;//한글 에러 잡기용도로 사용됨
	        },
	        minLength: 0,// 최소 글자수
	        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
//	        classes: {    //잘 모르겠음
//	            "ui-autocomplete": "highlight"
//	        },
	        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//	        disabled: true, //자동완성 기능 끄기
//	        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
	        close : function(event){    //자동완성창 닫아질때 호출
	            console.log(event);
	        }  
	      	    
	    });
	   
	}); 

	//select 바 선택
	 $("#depRegionCode").on("change", function(){
			$("#departure").val("");
			$("#arrRegionCode").html("<option value=''>선택해주세요</option>");	
			$("#arrival").val("");
			$("#arrival2").val("");	
			//console.log("arrArea.value>>>"+arrArea.value);
		}); 

		$("#arrRegionCode").on("click", function(){
			
			
			if($("#departure").val()!=""){
				var arrText = $("#arrText").val();
			    
		  	    $("#arrSearchBar").html("<input name='arr' type='text' class='form-control' id='arrival2' placeholder='도착지를 입력해주세요' required='required'>");
		     
		  	    $jb("#arrival2").autocomplete({
		  	        source : function( request, response ) {
		  	             $jb.ajax({
		  	                    type: 'POST',
		  	                    url: "/flight/getDistinctArrByDep2",
		  	                    dataType: "json",
		  	                    //data: JSON.stringify({depName : $("#departure").val(),searchValue: $("#arrival").val()}),
		  	                    data: {depName : $("#departure").val(),searchValue: $("#arrival2").val(), arrRegionCode: $("#arrRegionCode").val()},
		  	                    //contentType : "application/json; charset=utf-8", 
		  	                    success: function(data) {
		  	                    	console.log(data);
		  	                    	var json = JSON.stringify(data);
		  	                    	console.log(json);
		  	                        //서버에서 json 데이터 response 후 목록에 추가
		  	                        response(
		  	                            $jb.map(data, function(item) {    //json[i] 번째 에 있는게 item 임.
		  	                                return {
		  	                                	label: item+"",    //UI 에서 보여지는 글자, 실제 검색어랑 비교 대상
		  	                                    value: item,    //그냥 사용자 설정값
		  	                                }
		  	                            })
		  	                        );
		  	                    }
		  	               });
		  	            },    // source 는 자동 완성 대상
		  	         select : function(event, ui) {    //아이템 선택시
		  	            console.log(ui);//사용자가 오토컴플릿이 만들어준 목록에서 선택을 하면 반환되는 객체
		  	            console.log(ui.item.label);    
		  	            console.log(ui.item.value);    
		  	            
		  	        },
		  	        focus : function(event, ui) {    //포커스 가면
		  	            return false;//한글 에러 잡기용도로 사용됨
		  	        },
		  	        minLength: 0,// 최소 글자수
		  	        autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
//		  	        classes: {    //잘 모르겠음
//		  	            "ui-autocomplete": "highlight"
//		  	        },
		  	        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//		  	        disabled: true, //자동완성 기능 끄기
//		  	        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
		  	        close : function(event){    //자동완성창 닫아질때 호출
		  	            console.log(event);
		  	        }  
		  	      	    
		  	    });
			}   
		});	
	
	
	//출발지부터 입력하도록.
	$("#arrival").on("click",function(e){
		 if($("#departure").val()==""){
			 alert("출발지를 입력해주세요");
		 }
	})
	
//select 그리기sampleArrCode
$jb(function(){
	console.log("셀렉트 시작");
	var sampleArrCode = $("#sampleArrCode").val();
	
	$.ajax({
        type: 'get',
        url: "/flight/getDistinctArrRegionCode",
        dataType: "json",
        data: {depName : $("#departure").val()},
        //contentType : "application/json; charset=utf-8", 
        success: function(data) {
			 console.log(data);
			 str = "";
			 str += "<option value=''>선택해주세요</option>";
			 if(data.includes('1')){
			 str+="<option value='1'>한국</option>";
			 } 
			 if(data.includes('2')){
			 str+="<option value='2'>동북아시아</option>";
			 } 
			 if(data.includes('3')){
			str+= "<option value='3'>동남아시아/서남아시아</option>";
			 } 
			 if(data.includes('4')){
			 str+="<option value='4'>몽골/중앙아시아</option>";
			 } 
			 if(data.includes('5')){
			 str+="<option value='5'>유럽</option>";
			 } 
			 if(data.includes('6')){
			 str+="<option value='6'>미주(미국,캐나다)</option>";
			 } 
			 if(data.includes('7')){
			 str+="<option value='7'>대양주/사이판</option>";
			 } 
			 
			 $("#arrRegionCode").html(str);	
     	   
     		 $('#arrRegionCode option[value= '+ sampleArrCode +']').prop("selected", true);

        }
	
	});
});
</script>