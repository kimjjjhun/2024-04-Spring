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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<style>
span:before {
	font-family: bootstrap-icons;
}

.currIcon {
	font-size: 22ex;
	text-align: center;
	color: #ffc107;
}

.currTemp {
	text-align: center;
}

.city {
	text-align: center;
}
</style>

<div class="tm-page-wrap mx-auto" style="margin-top : 180px;">
	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row gx-6">
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
						<p>
						<h3 style="text-align: center;">
							<i class="bi bi-check-lg"></i><strong>오늘의 날씨</strong>
						</h3>
						</p>
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


	<!-- 회원정보 조회 -->
	<section class="p-5 tm-container-outer tm-bg-gray">

		<!-- .tm-container-outer -->
		<div class="container">
			<div class="row gx-6">
				<div class="col">
					<div class="p-3 border bg-light">
						<p>
						<h2 style="text-align: center;">전체 회원정보 조회</h2>
						</p>
						<table class="table table-hover">
							<thead>
								<tr>
									<th>아이디</th>
									<th>닉네임</th>
									<th>등급</th>
									<th>메일</th>
									<th>핸드폰</th>
									<th>관리자여부</th>
								</tr>
							</thead>
							<c:forEach items="${vo}" var="vo">
								<tbody>
									<tr>
										<td>${vo.userId}</td>
										<td>${vo.userNick}</td>
										<c:choose>
											<c:when test="${vo.gradeCode==0}">
												<td>제이지</td>
											</c:when>
											<c:when test="${vo.gradeCode==1}">
												<td>어피치</td>
											</c:when>
											<c:when test="${vo.gradeCode==2}">
												<td>라이언</td>
											</c:when>
											<c:otherwise>
												<td>춘식이</td>
											</c:otherwise>
										</c:choose>
										<td>${vo.mail}</td>
										<td>${vo.phone}</td>
										<c:choose>
											<c:when test="${vo.admin==1}">
												<td>관리자</td>
											</c:when>
											<c:otherwise>
												<td>일반회원</td>
											</c:otherwise>
										</c:choose>
									</tr>
								</tbody>
							</c:forEach>
						</table>
						<button type="button"
							class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/admin/userInfo'"><i class="bi bi-chevron-double-right"></i>&nbsp; 회원정보 관리
							</button>
					</div>
				</div>
			</div>

		</div>
	</section>

	<!-- 매출현황 조회 -->
	<section class="p-5 tm-container-outer tm-bg-gray">

		<!-- .tm-container-outer -->
		<div class="container">
			<div class="row gx-6">
				<div class="col">
					<div class="p-3 border bg-light">
						<p id="result">
						<h2 style="text-align: center;">항공권 취소요청</h2>
						</p>
						<p class="line-chart"></p>
						<table class="table table-hover">
			      		   <thead>
						      <tr>
						        <th>예약번호</th>
						        <th>요청일자</th>
						        <th>취소완료</th>
						      </tr>
						    </thead>
						    <c:forEach items="${cvo}" var="cvo">
						    <tbody>
						      <tr>
						      	<td>${cvo.resno}</td>
						        <td>${cvo.requestTime}</td>
								<c:choose>
									<c:when test="${cvo.cancelOk == 0}">
										<td>미처리</td>
									</c:when>	
									<c:otherwise>
										<td>완료</td>
									</c:otherwise>	
								</c:choose>
														
						      </tr>
						     </tbody>
						      </c:forEach>	      		
			      		</table> 
						<button type="button"
							class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/admin/cancelTicket'"><i class="bi bi-chevron-double-right"></i>&nbsp;항공권 취소 처리
							</button>
					</div>
				</div>
				<div class="col">
					<div class="p-3 border bg-light">
 						<c:forEach items="${pvo}" var="data" varStatus="loop">
							<input type="hidden" id="data_${loop.index}" class="data" value='<c:out value="${json}"/>'/>
						</c:forEach> </p>
						<h2 style="text-align: center;">매출현황</h2>
						<canvas id="sales_chart" width="400" height="180"></canvas>
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
						<h3 style="text-align: center;">전체 항공권 예약/구매 현황</h3>
						</p>
						<table class="table table-hover">
					    <thead>
					    	<th>아이디</th>
					    	<th>출발지</th>
					    	<th>도착지</th>
					    	<th>좌석등급</th>
					    	<th>구매일</th>
					    	<th>구매확정여부</th>
					    	<th>취소여부</th>
					    </thead>
					    <c:forEach items="${fvo}" var="fvo">
					    <tbody>
					      <tr>
					      	<td>${fvo.userid}</td>
					      	<td>${fvo.departure}</td>
					      	<td>${fvo.arrival}</td>
					        <td>${fvo.seatid}</td>
					        <%-- <td><fmt:formatDate value="${fvo.purchasetime}" pattern="yyyy-MM-dd HH:mm" /></td> --%>
					        <td>${fvo.purchasetime}</td>
					        <c:choose>
					        	<c:when test="${fvo.ispaid==0}">
					        		<td>true</td>
					        	</c:when>
					        	<c:otherwise>
					        		<td>false</td>
					        	</c:otherwise>
					        </c:choose>
					        <c:choose>
					        	<c:when test="${fvo.isCancel==0}">
					        		<td>false</td>
					        	</c:when>
					        	<c:otherwise>
					        		<td>true</td>
					        	</c:otherwise>
					        </c:choose>
					      </tr>
					     </tbody>
					      </c:forEach>	      		
	      			</table>
						<button type="button"
							class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/admin/buyTicket'"><i class="bi bi-chevron-double-right"></i>&nbsp;상세조회
							</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<!-- 항공 운항내역 조회/추가/수정/조회 -->
	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row gx-6">
				<div class="col">
					<div class="p-3 border bg-light">
						<p>
						<h3 style="text-align: center;">항공운항내역 조회 및 업데이트</h3>
						</p>
						<table class="table table-hover">
					    <thead>
					    	<th>항공기</th>
					    	<th>출발지</th>
					    	<th>출발시간</th>
					    	<th>도착지</th>
					    	<th>도착시간</th>
					    	<th>총 운항시간</th>
					    	<th>좌석 수</th>
					    </thead>
					    <c:forEach items="${avo}" var="avo">
					    <tbody>
					      <tr>
					      	<td>${avo.flightName}</td>
					      	<td>${avo.depName}</td>
					      	<td>${avo.fullDeptime}</td>
					        <td>${avo.arrName}</td>
					        <td>${avo.fullArrtime}</td>
					        <td>${avo.flightTime}</td>
					        <td>24</td>
      					</tr>
      					</tbody>
      					</c:forEach>
	      			</table>
						<button type="button"
							class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/admin/flightSchedule'"><i class="bi bi-chevron-double-right"></i>&nbsp;상세조회
							</button>
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
						<h3 style="text-align: center;">공지사항 작성 조회</h3>
						</p>
						<table class="table table-hover">
						    <thead>
						    	<th>제목</th>
						    	<th>작성일</th>
						    </thead>
						    <c:forEach items="${nvo}" var="nvo">
						    <tbody>
						      <tr>
						        <td>${nvo.boardsubject}</td>
						        <td>${nvo.regidate}</td>
						         <%-- <td><fmt:formatDate value="${nvo.regidate}"
													pattern="yyyy-MM-dd HH:mm" /></td> --%>
						      </tr>
						     </tbody>
						      </c:forEach>	      		
		      			</table>
						<button type="button"
							class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/admin/notice'"><i class="bi bi-chevron-double-right"></i>&nbsp;상세조회
							</button>
					</div>
				</div>

				<div class="col">
					<div class="p-3 border bg-light">
						<p>
						<h3 style="text-align: center;">이벤트 게시판 작성 조회</h3>
						</p>
						<table class="table table-hover">
					    <thead>
					    	<th>번호</th>
					    	<th>제목</th>
					    	<th>시작일</th>
					    	<th>종료일</th>
					    </thead>
					    <c:forEach items="${evo}" var="evo">
					    <tbody>
					      <tr>
					        <td>${evo.boardNum}</td>
					        <td>${evo.boardTitle}</td>
					        <td>${evo.startDate}</td>
					        <td>${evo.endDate}</td>
  					       <%--  <td><fmt:parseDate var = "datePase" value="${evo.regiDate}" pattern="yyyy-MM-dd HH:mm"/><fmt:formatDate value="${datePase}" pattern="yyyy-MM-dd HH:mm" /></td> --%>
					      </tr>
					     </tbody>
					      </c:forEach>	      		
	      				</table> 
						<button type="button"
							class="btn btn-primary btn-sm btn-block btn-custom" onclick="location.href='/admin/event'"><i class="bi bi-chevron-double-right"></i>&nbsp;상세조회
							</button>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- .tm-container-outer -->
<!-- 날씨아이콘 임포트 -->

<script defer src="https://use.fontawesome.com/releases/v5.15.2/js/all.js" integrity="sha384-vuFJ2JiSdUpXLKGK+tDteQZBqNlMwAjhZ3TvPaDfN9QmbPb7Q8qUpbSNapQev3YF" crossorigin="anonymous"></script>

<script type="text/javascript">
$(document).ready(function() {
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
				dataType : "json",
				type : "GET",
				async : "false",
				success : function(resp) {
					console.log(resp);
					console.log("현재 온도 : "+ (resp.main.temp));
					console.log("현재 습도 : "+ (resp.main.humidity));
					console.log("날씨 : "+ (resp.weather[0].main));
					console.log("상세날씨설명 : "+ (resp.weather[0].description));
					console.log("날씨 이미지 : "+ (resp.weather[0].icon));
					console.log("바람 : "+ (resp.wind.speed));
					console.log("나라 : "+ (resp.sys.country));
					console.log("도시이름 : "+ (resp.name));
					console.log("구름 : "+ (resp.clouds.all));
					var $Icon = (resp.weather[0].icon).substr(0, 2);
					var $Temp = Math.floor(resp.main.temp)+ 'º';
					var $city = resp.name;
					$('.currIcon').append('<i class="' + weatherIcon[$Icon] +'"></i>');
					$('.currTemp').prepend($Temp);
					$('.city').append($city);

					$(".detail").append("<p>나라/도시: "+ resp.sys.country+ "/" + resp.name+ "</p>");
					$(".detail").append("<p>상세날씨설명: "+ resp.weather[0].description+ "</p>");
					$(".detail").append("<p>구름: " + resp.clouds.all+ "%</p>");
					$(".detail").append("<p>바람: " + resp.wind.speed+ " m/s</p>");
					$(".detail").append("<p>현재 온도: "+ (resp.main.temp)+ "℃</p>");

				}
			});

	 	console.log("start");
		var data = $(".data").val(); // JSTL을 사용하여 데이터를 가져옴
		//var data1 = $("#data_${loop.index}").val();
		console.log("data : "+data);
		//console.log("data1 : "+data1);
		var dataList = JSON.parse(data);
        //dataList.push(JSON.parse(jsonData_${loop.index}));			

	    var labels = dataList.map(item => new Date(item.getDate).toDateString());
	    var values = dataList.map(item => item.sum);
	    console.log(values)
	    var ctx = document.getElementById('sales_chart').getContext('2d');
	    var chart = new Chart(ctx, {
	        type: 'bar',
	        data: {
	            labels: labels,
	            datasets: [{
	                label: "매출(원)",//'Your Data',
	                data: values,
	                backgroundColor: 'rgba(255, 193, 7, 0.2)',
	                borderColor: 'rgba(255, 193, 7, 1)',
	                borderWidth: 1
	            }]
	        },
	        options: {
	        	scales: {
	                x: {
	                    type: 'time', // x축이 시간 데이터임을 명시
	                    time: {
	                        unit: 'day' // x축에 표시할 시간 단위
	                    }
	                },
	                y: {
	                    beginAtZero: true
	                }
	        	}
	        }
	    });

    });	
</script>

<%@ include file="includes/footer.jsp"%>