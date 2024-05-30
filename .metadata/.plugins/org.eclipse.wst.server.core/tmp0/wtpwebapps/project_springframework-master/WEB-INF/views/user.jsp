<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="../resources/js/vendor/modernizr.custom.min.js"></script>
<link rel="stylesheet" href="../resources/css/normalize.css">
<style>
span:before {
	font-family: bootstrap-icons;
}

.currIcon{
   font-size: 22ex;
   text-align: center; 
   color: #ffc107;
}

.currTemp{
	text-align: center; 
}
.city{
 	text-align: center; 
}

</style>

<div class="tm-page-wrap mx-auto" style="margin-top : 180px;">
	<%-- <section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row gx-6">
				<div class="col">
					<div class="p-3 border bg-light">
						<img src="../resources/img/kakao/flyinglion.png" alt="background img for userPage" width="1000" height="335"/>
					</div>
				</div>
			</div>
		</div>
	</section>
	 --%>
	
	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row gx-6">
<!-- 				<div class="col">
					<div class="p-3 bg-light" style="float: left; width: 33%;">
						<div class="weather">
							<div class="currIcon"></div>
							<div class="currTemp"></div>
							<div class="city"></div>
						</div>
					</div>
				</div> -->
				<div class="col" style="width: 33%;">
					<div class="p-3 bg-light">
						<div class="weather">
							<div class="currIcon"></div>
							<div class="currTemp"></div>
							<div class="city"></div>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="p-3 bg-light">
					<p ><h3 style="text-align: center;"><i class="bi bi-check-lg"></i><strong>오늘의 날씨</strong></h3></p>
						<div class="detail">
							<div class=""></div>
							<div class=""></div>
							<div class=""></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="p-5 tm-container-outer tm-bg-gray">

		<!-- .tm-container-outer -->
		<div class="container">
			<div class="row gx-6">
				<div class="col">
					<div class="p-3 border bg-light">
						<p><h3>
							<strong>${vo.userNameK}(${vo.userNameE})</strong>님
							<c:if test="${grade == '춘식이'}">
								<img src="../resources/img/kakao/등급_춘식이.png" alt="춘식이" style="width: 35px; height: 35px;"/></p>
							</c:if>
							<c:if test="${grade == '제이지'}">
								<img src="../resources/img/kakao/등급_제이지.png" alt="제이지" style="width: 35px; height: 35px;"/></p>
							</c:if>
							<c:if test="${grade == '라이언'}">
								<img src="../resources/img/kakao/등급_라이언.png" alt="라이언" style="width: 35px; height: 35px;"/></p>
							</c:if>
							<c:if test="${grade == '어피치'}">
								<img src="../resources/img/kakao/등급_어피치.png" alt="어피치" style="width: 35px; height: 35px;"/></p>
							</c:if>
							<button type="button" class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/user/searchGrade'"><i class="bi bi-chevron-double-right"></i>&nbsp;등&nbsp;급&nbsp;조 회</button>
						</h3>
						</p>
 					<button type="button"
							class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/user/myPage'"><i class="bi bi-chevron-double-right"></i>&nbsp;내 정 보 조 회</button>
					<p>
						<h3 style="text-align: center;">
							<strong>알림</strong>&nbsp;&nbsp;<i class="bi bi-bell"></i>
							
						</h3>
						</p>
					<hr>
					<p>
							<i class="bi bi-check2-circle"></i>결항사항 체크 완료</p>
					<p>
							<i class="bi bi-check-lg"></i>별도 공지사항</p>
		    	 </div>
		    </div>

	        <div class="col">
	      		<div class="p-3 border bg-light">
	      		<p>
						<h3>마일리지 <i class="bi bi-caret-right-fill"></i><strong><fmt:formatNumber
									value="${sumP}" pattern="#,###" /></strong>
						</h3>
						</p>
	      		<table class="table table-hover">
	      		   <thead>
				      <tr>
				        <th>일시</th>
				        <th>적립/사용마일리지</th>
				      </tr>
				    </thead>
				    <c:forEach items="${pvo3}" var="list">
				    <tbody>
				      <tr>
				        <td>${list.getDate}</td>
				        <td><fmt:formatNumber
									value="${list.mileage}" pattern="#,###" /></td>
				      </tr>
				     </tbody>
				      </c:forEach>	      		
	      		</table>
	      		<button type="button"
							class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/user/mileage'"><i class="bi bi-chevron-double-right"></i>&nbsp;상 세 조 회</button>
	      		</div>
	   		 </div>
	   		 
	   		  <div class="col">
				<div class="p-3 border bg-light">
	      		<p>
						<h3>카카오페이 <i class="bi bi-caret-right-fill"></i><strong><fmt:formatNumber
									value="${sumK}" pattern="###,###,###,###" /></strong>
						</h3>
						</p>
	      		<table class="table table-hover">
	      		   <thead>
				      <tr>
				        <th>일시</th>
				        <th>적립/사용 카카오페이</th>
				      </tr>
				    </thead>
				    <c:forEach items="${kvo3}" var="kvo">
				    <tbody>
				      <tr>
				        <td>${kvo.buyDate}</td>
				        <td><fmt:formatNumber
									value="${kvo.amount}" pattern="###,###,###" /></td>
				      </tr>
				     </tbody>
				      </c:forEach>	      		
	      		</table>
	      		
		      		<button type="button" class="btn btn-primary btn-sm " onclick="location.href='/user/chargePoint'" style="width: 49%"><i class="bi bi-chevron-double-right"></i>&nbsp;충&nbsp;전</button>
		      		<button type="button" class="btn btn-primary btn-sm " onclick="location.href='/user/kakaoDetail'" style="width: 49%"><i class="bi bi-chevron-double-right"></i>&nbsp;상 세 조 회</button>
	      		
	      		</div>
		    </div>
 		 </div>
		
		</div>
	</section>
	
	<!-- 항공권 예약/조회내역 -->
	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row gx-6">
			    <div class="col">
			    	 <div class="p-3 border bg-light">
			    	 <p>
						<h3 style="text-align: center;">
							<strong>${vo.userNameK} 님</strong> 항공권 예약 현황 </h3>
						</p>
			    	 	<table class="table table-hover">
					    <thead>
					    	<th>예약번호</th>
					    	<th>출발지</th>
					    	<th>출발일자</th>
					    	<th>도착지</th>
					    	<th>도착일자</th>
					    </thead>
					    <c:forEach items="${rvo3}" var="list">
					    <tbody>
					      <tr>
					      	<td>${list.resno}</td>
					      	<td>${list.departure}</td>
					        <td>${list.deptime}</td>
					        <td>${list.arrival}</td>
					        <td>${list.arrtime}</td>
					      </tr>
					     </tbody>
					      </c:forEach>	      		
	      			</table>
	      			<button type="button" class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/user/userResDetail'"><i class="bi bi-chevron-double-right"></i>&nbsp;상 세 조 회</button>
			    	 </div>
			   	 </div>
	    	 </div>
    	 </div>
   	 </section>
   	 
   	 	<!-- 게시글 작성내역 -->
	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row gx-6">
			    <div class="col">
			    	 <div class="p-3 border bg-light">
			    	 <p>
						<h3 style="text-align: center;">
							<strong>${vo.userNameK} 님</strong> 문의게시글 작성 현황 </h3>
						</p>
			    	 	<table class="table table-hover">
					    <thead>
					    	<th>제목</th>
					    	<th>작성일</th>
					    	<th>답변여부</th>
					    </thead>
					    <c:forEach items="${qvo}" var="qvo">
					    <tbody>
					      <tr>

					        <td>${qvo.boardsubject}</td>
					        <td>${qvo.regidate}</td>
					        <c:choose>
					        	<c:when test="${qvo.repadmin >0}">
					        		<td>완료</td>
					      		</c:when>
					      		<c:otherwise>
					      			<td>대기중</td>
					      		</c:otherwise>
					      	</c:choose>
					      </tr>
					     </tbody>
					      </c:forEach>	      		
	      			</table>
	      			<button type="button"
							class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/user/qna'"><i class="bi bi-chevron-double-right"></i>&nbsp;상 세 조 회</button>
			    	 </div>
			   	 </div>
			   	 
   	 		    <div class="col">
			    	 <div class="p-3 border bg-light">
			    	 <p>
						<h3 style="text-align: center;">
							<strong>${vo.userNameK} 님</strong> 여행일기작성 현황 </h3>
						</p>
			    	 	<table class="table table-hover">
					    <thead>
					    	<th>제목</th>
					    	<th>내용</th>
					    	<th>댓글</th>
					    	<th>좋아요</th>
					    </thead>
					    <c:forEach items="${dvo}" var="dvo">
					    <tbody>
					      <tr>
					        <td>${dvo.boardTitle}</td>
  					        <td><fmt:parseDate var = "datePase" value="${dvo.regiDate}" pattern="yyyy-MM-dd HH:mm"/><fmt:formatDate value="${datePase}" pattern="yyyy-MM-dd HH:mm" /></td>
					      	<td>${dvo.replyCount}</td>
					      	<td>${dvo.likeCount}</td>
					      </tr>
					     </tbody>
					      </c:forEach>	      		
	      			</table>
	      			<button type="button"
							class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/user/diary'"><i class="bi bi-chevron-double-right"></i>&nbsp;상 세 조 회</button>
			    	 </div>
			   	 </div>
	    	 </div>
    	 </div>
   	 </section>
	    	 

	<!-- .tm-container-outer -->
<script defer src="https://use.fontawesome.com/releases/v5.15.2/js/all.js" integrity="sha384-vuFJ2JiSdUpXLKGK+tDteQZBqNlMwAjhZ3TvPaDfN9QmbPb7Q8qUpbSNapQev3YF" crossorigin="anonymous"></script>
<script type="text/javascript">
$(document).ready(function(){
	const API_KEY = '7b8ae9e52a7e1bb3db6bfbe353ec511d';
	var apiUrl = "https://api.openweathermap.org/data/2.5/weather?q=Seoul&appid="+API_KEY+"&units=metric";
	let weatherIcon = {        
			'01' : 'fas fa-sun',
			'02' : 'fas fa-cloud-sun',
			'03' : 'fas fa-cloud',
			'04' : 'fas fa-cloud-meatball',
			'09' : 'fas fa-cloud-sun-rain',
			'10' : 'fas fa-cloud-showers-heavy',
			'11' : 'fas fa-poo-storm',
			'13' : 'far fa-snowflake',
			'50' : 'fas fa-smog'      
	};
	  
	
	$.ajax({
		url : apiUrl,
		dataType: "json",
		type : "GET",
		async : "false",
		success : function(resp){
			console.log(resp);
			console.log("현재 온도 : "+(resp.main.temp));
			console.log("현재 습도 : "+(resp.main.humidity));
			console.log("날씨 : "+(resp.weather[0].main));
			console.log("상세날씨설명 : "+(resp.weather[0].description));
			console.log("날씨 이미지 : "+(resp.weather[0].icon));
			console.log("바람 : "+(resp.wind.speed));
			console.log("나라 : "+(resp.sys.country));
			console.log("도시이름 : "+(resp.name));
			console.log("구름 : "+(resp.clouds.all));
/* 			$(".weather").append("<p>현재 온도: " + (resp.main.temp) + "℃</p>");
			$(".weather").append("<p>현재 습도: " + resp.main.humidity + "%</p>");
			$(".weather").append("<p>날씨: " + resp.weather[0].main + "</p>");
			$(".weather").append("<p>상세날씨설명: " + resp.weather[0].description + "</p>");
			$(".weather").append("<p>바람: " + resp.wind.speed + " m/s</p>");
			$(".weather").append("<p>나라: " + resp.sys.country + "</p>");
			$(".weather").append("<p>도시이름: " + resp.name + "</p>");
			$(".weather").append("<p>구름: " + resp.clouds.all + "%</p>"); */
			//var weatherIcon = '<img src="http://openweathermap.org/img/wn/'+resp.weather[0].icon+'png" alt="'+resp.weather[0].description+'"/>'
			//$(".weather").html(weatherIcon);
			var $Icon = (resp.weather[0].icon).substr(0,2);      
			var $Temp = Math.floor(resp.main.temp) + 'º';      
			var $city = resp.name;
			  $('.currIcon').append('<i class="' + weatherIcon[$Icon] +'"></i>');      
			  $('.currTemp').prepend($Temp);      
			  $('.city').append($city);
			  
			  $(".detail").append("<p>나라/도시: " + resp.sys.country+"/" +resp.name +"</p>");
			  $(".detail").append("<p>상세날씨설명: " + resp.weather[0].description + "</p>");
			  $(".detail").append("<p>구름: " + resp.clouds.all + "%</p>"); 
			  $(".detail").append("<p>바람: " + resp.wind.speed + " m/s</p>");
			  $(".detail").append("<p>현재 온도: " + (resp.main.temp) + "℃</p>");
			 

		}
	});
	});
</script>
	<%@ include file="includes/footer.jsp"%>