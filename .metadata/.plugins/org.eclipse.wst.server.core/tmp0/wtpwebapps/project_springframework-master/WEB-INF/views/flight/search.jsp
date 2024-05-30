<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %> 
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

<script src="../resources/js/vendor/modernizr.custom.min.js"></script>
<link rel="stylesheet" href="../resources/css/normalize.css">

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

<!-- Font Awesome 5 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>

<style>
#depTable th {
    position: sticky;
    text-align: center;
    top: 0px;
    background-color: #FFC107 !important;
    z-index: 2;
}
#arrTable th {
    position: sticky;
    text-align: center;
    vertical-align: middle;
    top: 0px;
    background-color: #FFC107 !important;
}
td {
	font-size: 15px;
	text-align: center;
	vertical-align: middle;
}

.btn-root {text-align:center;}
p.btn.btn-default {
    font-size: 10px;
    padding: 12px;
    width: 90px;
    border-radius: 5px;
    margin: 15px -2px 15px -2px;
    display: inline-block;
    background: #efefef;
    border: 1px solid black;
    color:#333;
}


.seprator {
    width: 80px;
    height: 1px;
    background-color: black;
    margin: 0px auto;
    display: inline-block;
    vertical-align: middle;
    position:relative;

}
.seprator:first-child:before {			/* 타원 */
    content: '';
    position: absolute;
    width: 10px;
    height: 10px;
    background: black;
    left: 0;
    border-radius: 50%;
    top: -5px;
    
}
.seprator:last-child:before {		/* 화살표 */
    width: 0;
    height: 0;
    border-right: 10px solid transparent;
    content: '';
    position: absolute;
    top: -10px;
    right: 0;
    border-bottom: 10px solid black;
    
}
</style>

<div class="tm-page-wrap mx-auto" style="margin-top : 180px;">
	<section class="p-5 tm-container-outer tm-bg-gray">
	<h2>항공편 검색</h2>
		
		<div class="container">

			<form action="/flight/search" method="get" class="tm-search-form tm-section-pad-1">
				<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="oneWay" style="width: 100px;">편도</button> 
				<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" id="roundTrip">왕복</button>
				<br><br>
					<p>검색창에서 아래 방향키를 눌러, 취항지를 확인할 수 있습니다.</p>
				<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
					<label for="dep">출발지</label> 
				</div>
				<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
					<label for="arr">도착지</label> 
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
						<input name="dep" type="text" class="form-control" id="departure" placeholder="출발지를 입력해주세요" value = "${dep}" required="required">
					</div>
					<div class="form-group tm-form-group tm-form-group-pad tm-form-group-2" id="arrSearchBar">
						<input name="arr" type="text" class="form-control" id="arrival" placeholder="도착지를 입력해주세요" value = "${arr}" required="required">
					</div>
				</div>
				<br>
				<!-- form-row -->
				<div class="form-row tm-search-form-row">
					<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
						<label for="boardTitle">가는 날</label> 
						<input type="text" class="form-control" id="depDate" name="depDate" value = "${depDate}" >
					</div>
					
					<div class="form-group tm-form-group tm-form-group-pad tm-form-group-1" id="depDiv">
						<c:if test="${!empty arrDate}">
						<label for="boardTitle">오는 날</label> 
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
			</form>
			<br><br>
			</div>
	</section>
			
			<jsp:useBean id="now" class="java.util.Date" />
			<fmt:parseNumber value="${now.time}" integerOnly="true" var="nowfmtTime" scope="request"/>
			<input type="hidden" class="form-control" id="sampleArr" name="sampleArr" value = "${arrDate}" >
			<input type="hidden" class="form-control" id="arrText" name="arrText" value = "${arr}" >
			<input type="hidden" class="form-control" id="sampleArrCode" name="sampleArrCode" value = "${arrRegionCode}" >
		
				
			<c:if test="${empty depPrice}">
				<!-- <section class="p-5 tm-container-outer tm-bg-gray">
					<h3 style="text-align: center;">일치하는 노선이 없습니다. <i class='fa fa-plane'></i><br>
						다시 여정을 선택해주세요.</h3>
					<br>
				</section> -->
			</c:if>
		
			<c:if test="${!empty dep&&empty list}">
			<section class="p-5 tm-container-outer tm-bg-gray">
				<div class="container" >
				<div class="text-right">
					<c:if test="${empty arrDate}">
						<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?depRegionCode=${depRegionCode}&arrRegionCode=${arrRegionCode}&dep=${dep}&arr=${arr}&depDate=${prevDepDay}#1'">이전날</button>
						<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?depRegionCode=${depRegionCode}&arrRegionCode=${arrRegionCode}&dep=${dep}&arr=${arr}&depDate=${nextDepDay}#1'">다음날</button>
					</c:if>	
					<c:if test="${!empty arrDate}">
						<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?depRegionCode=${depRegionCode}&arrRegionCode=${arrRegionCode}&dep=${dep}&arr=${arr}&depDate=${prevDepDay}&arrDate=${arrDate}#1'">이전날</button>
						<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?depRegionCode=${depRegionCode}&arrRegionCode=${arrRegionCode}&dep=${dep}&arr=${arr}&depDate=${nextDepDay}&arrDate=${arrDate}#1'">다음날</button>
					</c:if>
				</div>
				<h2 style="text-align: center">${depDate} : ${dep} <i class='fa fa-arrow-right'></i> ${arr}</h2>
					<div class="container" style="overflow: auto; top: 50px; width: 100%; height: 450px;">
				<br><br><br><br><br>
				<h3 style="text-align: center;">예약가능한 항공편이 없습니다. <i class='fa fa-plane'></i><br>
					다시 여정을 선택해주세요.
				</h3><br>
				<c:if test="${!empty closestFlightPrev.depDay or closestFlightAfter.depDay}">
					<c:if test="${!empty closestFlightPrev.depDay and empty closestFlightAfter.depDay}">
						<h5 style="text-align: center;">
							가장 가까운 항공편은 ${fn:substring(closestFlightPrev.depDay, 0,10)} 입니다.					
						</h5>	
					</c:if>
					<c:if test="${!empty closestFlightPrev.depDay and !empty closestFlightAfter.depDay}">
						<h5 style="text-align: center;">
							가장 가까운 항공편은 ${fn:substring(closestFlightPrev.depDay, 0,10)}, ${fn:substring(closestFlightAfter.depDay, 0,10)} 입니다.					
						</h5>	
					</c:if>
					<c:if test="${empty closestFlightPrev.depDay and !empty closestFlightAfter.depDay}">
						<h5 style="text-align: center;">
							가장 가까운 항공편은 ${fn:substring(closestFlightAfter.depDay, 0,10)} 입니다.					
						</h5>	
					</c:if>
				</c:if>
				</div>
				</div>
			</section>
			</c:if>	 
			
			
			<c:if test="${!empty list}">
				<c:if test="${!empty depPrice}">
			<section class="p-5 tm-container-outer tm-bg-gray">
			<div class="container"  >
			
			<c:if test="${empty arrDate}">
				<div class="text-right">
					<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?depRegionCode=${depRegionCode}&arrRegionCode=${arrRegionCode}&dep=${dep}&arr=${arr}&depDate=${prevDepDay}#1'">이전날</button>
					<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?depRegionCode=${depRegionCode}&arrRegionCode=${arrRegionCode}&dep=${dep}&arr=${arr}&depDate=${nextDepDay}#1'">다음날</button>
				</div>
			</c:if>
			<c:if test="${!empty arrDate}">
				<div class="text-right">
					<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?depRegionCode=${depRegionCode}&arrRegionCode=${arrRegionCode}&dep=${dep}&arr=${arr}&depDate=${prevDepDay}&arrDate=${arrDate}#1'">이전날</button>
					<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?depRegionCode=${depRegionCode}&arrRegionCode=${arrRegionCode}&dep=${dep}&arr=${arr}&depDate=${nextDepDay}&arrDate=${arrDate}#1'">다음날</button>
				</div>
			</c:if>
			
			<h2 style="text-align: center">${depDate} : ${dep} <i class='fa fa-arrow-right'></i> ${arr}</h2>
			<p style="text-align: right;"> 예약 마감 시간은 출발 30분 전까지 입니다</p>
			<c:choose>
				<c:when test="${fn:length(list)<5}">
				<div class="container" style="overflow: auto; top: 50px; width: 100%; height: 400px;">
				</c:when>
				<c:otherwise>
				<div class="container" style="overflow: auto; top: 50px; width: 100%; height: 750px;">
				</c:otherwise>
			</c:choose>
			<!-- <div class="container" style="overflow: auto; top: 50px; width: 100%; height: 750px;"> -->
				<table class="table table-hover" id="depTable">
					<thead>
						<tr>	
							<th>항공편명</th>
							<th>출도착시간(비행시간)</th>
							<th>이코노미석 운임</th>							
							<th>비즈니스석 운임</th>							
							<th>일등석 운임</th>							
							<th>예약하기</th>
						</tr>
					</thead>
					<c:if test="${empty list}">
						<h3 style="text-align: center;">예약가능한 항공편이 없습니다. <i class='fa fa-plane'></i><br>
						다시 여정을 선택해주세요.</h3>
						<br>	
						<c:if test="${!empty closestFlightPrev.depDay or closestFlightAfter.depDay}">
							<c:if test="${!empty closestFlightPrev.depDay and empty closestFlightAfter.depDay}">
								<h5 style="text-align: center;">
									가장 가까운 항공편은 ${fn:substring(closestFlightPrev.depDay, 0,10)} 입니다.					
								</h5>	
							</c:if>
							<c:if test="${!empty closestFlightPrev.depDay and !empty closestFlightAfter.depDay}">
								<h5 style="text-align: center;">
									가장 가까운 항공편은 ${fn:substring(closestFlightPrev.depDay, 0,10)}, ${fn:substring(closestFlightAfter.depDay, 0,10)} 입니다.					
								</h5>	
							</c:if>
							<c:if test="${empty closestFlightPrev.depDay and !empty closestFlightAfter.depDay}">
								<h5 style="text-align: center;">
									가장 가까운 항공편은 ${fn:substring(closestFlightAfter.depDay, 0,10)} 입니다.					
								</h5>	
							</c:if>
						</c:if>
						
					</c:if>
					<c:forEach items="${list}" var="list">
						<tbody>
							<tr>
								<td style="vertical-align: middle;">${list.flightName}</td>
								<td style="vertical-align: middle;">
									<strong>${fn:substring(list.fullDeptime, 11,16)}</strong>
									<div class="seprator"></div>  
									  <p class="btn btn-default">
									  		<i class='far fa-clock'></i>&nbsp;<strong> <c:if test="${fn:split(list.flightTime,':')[0]!=0}">${fn:split(list.flightTime,':')[0]}시간 </c:if> ${fn:split(list.flightTime,':')[1]}분 </strong>
									  </p>
									   <div class="seprator"></div>
									<c:if test="${fn:substring(list.fullArrtime, 0,10)==fn:substring(list.fullDeptime, 0,10)}">
										<strong>${fn:substring(list.fullArrtime, 11,16)}</strong>
									</c:if>
									<c:if test="${fn:substring(list.fullArrtime, 0,10)!=fn:substring(list.fullDeptime, 0,10)}">
										<strong>다음날) ${fn:substring(list.fullArrtime, 11,16)}</strong>										
									</c:if>
								</td>
								<td style="vertical-align: middle;"><fmt:formatNumber value="${depPrice}" type="currency" currencySymbol="￦" minFractionDigits="0" /></td>
								<td style="vertical-align: middle;"><fmt:formatNumber value="${depPrice*1.5}" type="currency" currencySymbol="￦" minFractionDigits="0" /></td>
								<td style="vertical-align: middle;"><fmt:formatNumber value="${depPrice*2}" type="currency" currencySymbol="￦" minFractionDigits="0" /></td>
								
								<fmt:parseDate value = "${list.fullDeptime}" var = "parsedMyDate" pattern = "yyyy-MM-dd HH:mm:ss" />
								
								<c:if test="${parsedMyDate.time-nowfmtTime<0}">
									<td style="vertical-align: middle;">예약 불가</td>
								</c:if>
								<c:if test="${parsedMyDate.time-nowfmtTime<(1000*60*30)&&0<=parsedMyDate.time-nowfmtTime}">
									<td style="vertical-align: middle;">예약 마감</td>
								</c:if>
								<c:if test="${parsedMyDate.time-nowfmtTime>=(1000*60*30)}">
									<c:if test="${list.seatCount>0}">
										<td style="vertical-align: middle;"><button type="submit" class="btn btn-primary tm-btn tm-btn-search text-uppercase reserve-button" id="reserve" data-fno="${list.fno}">예약하기(${list.seatCount}석)</button></td>
									</c:if>
									<c:if test="${list.seatCount<=0}">
										<td style="vertical-align: middle;">좌석 없음</td>
									</c:if>
								</c:if>
							</tr>
						</tbody>
					</c:forEach>
				</table>
				<!-- 페이징 -->
		<%-- <ul class="pagination justify-content-center">
			<c:if test="${pageMaker.prev}">
				<li class="page-item"><a class="page-link"
					href="${pageMaker.startPage-1}">Previous</a></li>
			</c:if>
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="num">
				<li
					class="page-item  ${pageMaker.cri.pageNum == num ? 'active' : ''}">
					<a class="page-link" href="${num}">${num}</a>
				</li>
			</c:forEach>
			<c:if test="${pageMaker.next}">
				<li class="page-item"><a class="page-link"
					href="${pageMaker.endPage+1}">Next</a></li>
			</c:if>
		</ul> --%>
			</div>
			</div>
			</section>
				</c:if>	<!-- if : {!empty depPrice} -->
			</c:if>	<!-- if : {!empty list} -->
	
	
	<c:if test="${!empty arrDate and empty arrlist}">
	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container" id="2">
		<div class="text-right">
			<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?depRegionCode=${depRegionCode}&arrRegionCode=${arrRegionCode}&dep=${dep}&arr=${arr}&depDate=${depDate}&arrDate=${prevArrDay}#2'">이전날</button>
			<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?depRegionCode=${depRegionCode}&arrRegionCode=${arrRegionCode}&dep=${dep}&arr=${arr}&depDate=${depDate}&arrDate=${nextArrDay}#2'">다음날</button>
		</div>
		<h2 style="text-align: center">${arrDate} : ${arr} <i class='fa fa-arrow-right'></i> ${dep}</h2>
			<div class="container" style="overflow: auto; top: 50px; width: 100%; height: 450px;">
		<br><br><br><br><br>
		<h3 style="text-align: center;">예약가능한 항공편이 없습니다. <i class='fa fa-plane'></i><br>
			다시 여정을 선택해주세요.</h3>
		<br>	
		<c:if test="${!empty closestFlightPrev.depDay or closestFlightAfter.depDay}">
			<c:if test="${!empty closestFlightPrev.depDay and empty closestFlightAfter.depDay}">
				<h5 style="text-align: center;">
					가장 가까운 항공편은 ${fn:substring(closestFlightPrevArr.depDay, 0,10)} 입니다.					
				</h5>	
			</c:if>
			<c:if test="${!empty closestFlightPrev.depDay and !empty closestFlightAfter.depDay}">
				<h5 style="text-align: center;">
					가장 가까운 항공편은 ${fn:substring(closestFlightPrevArr.depDay, 0,10)}, ${fn:substring(closestFlightAfterArr.depDay, 0,10)} 입니다.					
				</h5>	
			</c:if>
			<c:if test="${empty closestFlightPrev.depDay and !empty closestFlightAfter.depDay}">
				<h5 style="text-align: center;">
					가장 가까운 항공편은 ${fn:substring(closestFlightAfterArr.depDay, 0,10)} 입니다.					
				</h5>	
			</c:if>
		</c:if>
		</div>
		</div>
	</section>
	</c:if>	
	
		<c:if test="${!empty arrlist}">
			<c:if test="${!empty arrPrice}">
			
		<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container" id="2">
		<div class="text-right">
			<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?dep=${dep}&arr=${arr}&depDate=${depDate}&arrDate=${prevArrDay}#2'">이전날</button>
			<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" style="width: 100px;" onclick="location.href='/flight/search?dep=${dep}&arr=${arr}&depDate=${depDate}&arrDate=${nextArrDay}#2'">다음날</button>
		</div>
		<h2 style="text-align: center">${arrDate} : ${arr} <i class='fa fa-arrow-right'></i> ${dep}</h2>
		<p style="text-align: right;"> 예약 마감 시간은 출발 30분 전까지 입니다</p>
			<c:choose>
				<c:when test="${fn:length(arrlist)<5}">
				<div class="container" style="overflow: auto; top: 50px; width: 100%; height: 400px;">
				</c:when>
				<c:otherwise>
				<div class="container" style="overflow: auto; top: 50px; width: 100%; height: 750px;">
				</c:otherwise>
			</c:choose>
			<!-- <div class="container" style="overflow: auto; top: 50px; width: 100%; height: 750px;"> -->
			
				<table class="table table-hover" id="arrTable">
					<thead>
						<tr>
							<th>항공편명</th>
							<th>출도착시간(비행시간)</th>
							<th>이코노미석 운임</th>							
							<th>비즈니스석 운임</th>							
							<th>일등석 운임</th>							
							<th>예약하기</th>
						</tr>
					</thead>
					<c:forEach items="${arrlist}" var="list">
						<tbody>
							<tr>
								<td style="vertical-align: middle;">${list.flightName}</td>
								<td style="vertical-align: middle;">
									<strong>${fn:substring(list.fullDeptime, 11,16)}</strong>
									<div class="seprator"></div>  
									  <p class="btn btn-default">
									  		<i class='far fa-clock'></i>&nbsp;<strong><c:if test="${fn:split(list.flightTime,':')[0]!=0}">${fn:split(list.flightTime,':')[0]}시간 </c:if> ${fn:split(list.flightTime,':')[1]}분 </strong>
									  </p>
									   <div class="seprator"></div>
									<c:if test="${fn:substring(list.fullArrtime, 0,10)==fn:substring(list.fullDeptime, 0,10)}">
										<strong>${fn:substring(list.fullArrtime, 11,16)}</strong>
									</c:if>
									<c:if test="${fn:substring(list.fullArrtime, 0,10)!=fn:substring(list.fullDeptime, 0,10)}">
										<strong>다음날) ${fn:substring(list.fullArrtime, 11,16)}</strong>										
									</c:if>
								</td>
								<td style="vertical-align: middle;"><fmt:formatNumber value="${arrPrice}" type="currency" currencySymbol="￦" minFractionDigits="0" /></td>
								<td style="vertical-align: middle;"><fmt:formatNumber value="${arrPrice*1.5}" type="currency" currencySymbol="￦" minFractionDigits="0" /></td>
								<td style="vertical-align: middle;"><fmt:formatNumber value="${arrPrice*2}" type="currency" currencySymbol="￦" minFractionDigits="0" /></td>
								
								<fmt:parseDate value = "${list.fullDeptime}" var = "parsedMyDate" pattern = "yyyy-MM-dd HH:mm:ss" />
								
								<c:if test="${parsedMyDate.time-nowfmtTime<0}">
									<td style="vertical-align: middle;">예약 불가</td>
								</c:if>
								<c:if test="${parsedMyDate.time-nowfmtTime<(1000*60*30)&&0<=parsedMyDate.time-nowfmtTime}">
									<td style="vertical-align: middle;">예약 마감</td>
								</c:if>
								<c:if test="${parsedMyDate.time-nowfmtTime>=(1000*60*30)}">
								<td style="vertical-align: middle;"><button type="submit"
										class="btn btn-primary tm-btn tm-btn-search text-uppercase reserve-button" id="reserve" data-fno="${list.fno}">예약하기(${list.seatCount}석)</button></td>
								</c:if>								
								
							</tr>
						</tbody>
					</c:forEach>
				</table>
				<!-- 페이징 -->
		<%-- <ul class="pagination justify-content-center">
			<c:if test="${pageMaker.prev}">
				<li class="page-item"><a class="page-link"
					href="${pageMaker.startPage-1}">Previous</a></li>
			</c:if>
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="num">
				<li
					class="page-item  ${pageMaker.cri.pageNum == num ? 'active' : ''}">
					<a class="page-link" href="${num}">${num}</a>
				</li>
			</c:forEach>
			<c:if test="${pageMaker.next}">
				<li class="page-item"><a class="page-link"
					href="${pageMaker.endPage+1}">Next</a></li>
			</c:if>
		</ul> --%>
			</div>
		</div>
	</section>
		</c:if>
	</c:if>
	
	<!-- 전달 폼 -->
	<form id="actionForm" action="/flight/search" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}" />
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}" />
		<input type="hidden" name="dep" value="${dep}" />
		<input type="hidden" name="arr" value="${arr}" />
		<input type="hidden" name="arrDate" value="${arrDate}" />
		<input type="hidden" name="depDate" value="${depDate}" />
		 						<%--<input type="hidden" name="type" value="${pageMaker.cri.type}"/>
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}"/> --%>
	</form>
	
	<!-- 예약페이지 이동 -->
	<form name="resForm" action="/flight/reservation" method="get">
		 <input type="hidden" name="fno" value="" /> 
	</form>

</div>
<!-- .tm-container-outer -->
<%@ include file="../includes/footer.jsp"%>
<script type="text/javascript">
	//페이지 버튼 클릭 이동
	var actionForm = $("#actionForm");
	$(".page-item a").on("click", function(e) {
		e.preventDefault();
		console.log("test--------------------------");
		actionForm.find("input[name='pageNum']").val($(this).attr("href")); 
		actionForm.submit();
	});
	
	$(".reserve-button").on("click",function(e){
		e.preventDefault();
		alert("예약 페이지로 이동합니다.")
		var fno = $(this).data("fno");
		console.log(fno);
		//$("resForm").append("<input type='hidden' name='fno' value='" + $(this).attr("href")+ "'>");
		$("input[name='fno']").val(fno);
		$("form[name='resForm']").submit();
	})
</script>

<script>

	$("#oneWay").on("click", function(){
		console.log("편도");
		str = "";
		$("#depDiv").html(str);
		
	});
		
	var sampleArr = $("#sampleArr").val();
	var depClick = $("#roundTrip").on("click", function(){
		console.log("왕복");
		console.log(sampleArr);
		
		str = "";
		str += "<label>오는 날</label>"; 
		
		str += "<input type='text' class='form-control' id='arrDate' name='arrDate' value='"+sampleArr+"'>";
		
		
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
	
	$jLatest('input[id="dates"]').daterangepicker();
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
//        classes: {    //잘 모르겠음
//            "ui-autocomplete": "highlight"
//        },
        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//        disabled: true, //자동완성 기능 끄기
//        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
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
//        classes: {    //잘 모르겠음
//            "ui-autocomplete": "highlight"
//        },
        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//        disabled: true, //자동완성 기능 끄기
//        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
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
//        classes: {    //잘 모르겠음
//            "ui-autocomplete": "highlight"
//        },
        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//        disabled: true, //자동완성 기능 끄기
//        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
        close : function(event){    //자동완성창 닫아질때 호출
            console.log(event);
        }  
      	    
    });
   
}); 

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
//  	        classes: {    //잘 모르겠음
//  	            "ui-autocomplete": "highlight"
//  	        },
  	        delay: 200,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//  	        disabled: true, //자동완성 기능 끄기
//  	        position: { my : "right top", at: "right bottom" },    //잘 모르겠음
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
});

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