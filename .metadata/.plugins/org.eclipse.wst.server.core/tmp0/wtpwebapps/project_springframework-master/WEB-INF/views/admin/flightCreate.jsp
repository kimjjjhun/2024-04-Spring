<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
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

<script src="../resources/js/jquery-1.11.3.min.js"></script>
<style>
.col-xs-12 {
	width: 300px;
	margin: auto;
}
</style>

<!-- <div class="tm-page-wrap mx-auto"> -->


<section class="p-5 tm-container-outer tm-bg-gray" style="max-width: 1600px;">
	<div class="container" style="max-width: 1600px;">
		<div class="row">
			<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
				<h2 class="text-uppercase mb-4">운항스케줄 등록</h2>
				<p class="mb-2">양식에 맞게 정확히 기입 해 주세요.</p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-6">
				<table class="table table-hover">
					<thead style="background: #ffc107">
						<tr>
							<th style="width: 10%">운항기</th>
							<th>출발지</th>
							<th>출발공항 코드</th>
							<!-- <th>출발지역 코드</th> -->
							<th>출발시간</th>
						</tr>
					</thead>
					<tbody>
						<tr class="flight">
							<td><input type="text" id="flightName" name="flightName"
								placeholder="OZ1155" value="" required="required"
								style="border: 0; background-color: #efefef; width: 80px" /></td>
							<td><input type="text" id="depName" name="depName"
								placeholder="인천" value="" required="required"
								style="border: 0; background-color: #efefef; width: 80px" /></td>
							<td><select name="depCode" id="depCode"
								style="border: 0; background-color: #efefef; width: 80px">
									<c:forEach items="${depCode}" var="dCode">
										<option value="${dCode}">${dCode}</option>
									</c:forEach>
							</select></td>
<%-- 							<td><select name="dRCode" id="dRCode"
								style="border: 0; background-color: #efefef; width: 80px">
									<c:forEach items="${dRCode}" var="drCode">
										<option value="${drCode}">${drCode}</option>
									</c:forEach>
							</select></td> --%>
							<td><input type="text" id="fullDepTime" name="fullDepTime"
								placeholder="2024-02-28 10:11:00" value="" required="required"
								style="border: 0; background-color: #efefef; width: 160px" /></td>
						</tr>

					</tbody>

				</table>
			</div>
			

			
			<div class="col-xs-6">
				<table class="table table-hover">
					<thead style="background: #ffc107">
						<tr>
							<th>도착지</th>
							<th>도착공항 코드</th>
							<!-- <th>도착지역 코드</th> -->
							<th>도착시간</th>
							<th>비행시간</th>
						</tr>
					</thead>
					<tbody>
						<tr class="flight">
							<td><input type="text" id="arrName" name="arrName"
								placeholder="도쿄" value="" required="required"
								style="border: 0; background-color: #efefef; width: 80px" /></td>
							<!-- 								<td><input type="text" id="arrCode"/></td> -->
							<td><select id="aCode" name="aCode"
								style="border: 0; background-color: #efefef;">
									<c:forEach items="${arrCode}" var="aCode">
										<option value="${aCode}">${aCode}</option>
									</c:forEach>
							</select></td>
							<!-- <td><input type="text" id="arrRegionCode"/></td> -->
<%-- 							<td><select id="aRCode" name="aRCode"
								style="border: 0; background-color: #efefef; width: 80px">
									<c:forEach items="${aRCode}" var="aRCode">
										<option value="${aRCode}">${aRCode}</option>
									</c:forEach>
							</select></td> --%>
							<td><input type="text" id="fullArrTime" name="fullArrTime"
								placeholder="2024-02-28 10:11:00" value="" required="required"
								style="border: 0; background-color: #efefef; width: 160px" /></td>
							<td><input type="text" id="flightTime" name="flightTime"
								placeholder="1:05:00" value="" required="required"
								style="border: 0; background-color: #efefef; width: 80px" /></td>
						</tr>

					</tbody>

				</table>
			</div>
			</div>

				<div class="row">
					<div class="col-xs-12">
						<button type="button" class="btn btn-primary btn-sm btn-custom"
							onclick="submit()" style="width: 100%">
							<i class="bi bi-chevron-double-right"></i>&nbsp;등록
						</button>
					</div>
				</div>
			</div>
</section>

<!-- </div> -->
<!-- .tm-container-outer -->

<script type="text/javascript">
	console.log("dddd");
	//유효성 체크
	function check() {
		  	var flightName = $("#flightName").val();
		    var depName = $("#depName").val();
		    var fullDepTime = $("#fullDepTime").val();
		    var arrName = $("#arrName").val();
		    var fullArrTime = $("#fullArrTime").val();
		    var flightTime = $("#flightTime").val();

		    if (flightName.length < 1) {
		        alert("비행기 이름을 1자리 이상 입력하여 주십시오");
		        return false;
		    }
		    if (depName.length < 1) {
		        alert("출발지 이름을 1자리 이상 입력하여 주십시오");
		        return false;
		    }
		    if (fullDepTime.length < 1) {
		        alert("출발시간을 1자리 이상 입력하여 주십시오");
		        return false;
		    }
		    if (arrName.length < 1) {
		        alert("도착지 이름을 1자리 이상 입력하여 주십시오");
		        return false;
		    }
		    if (fullArrTime.length < 1) {
		        alert("도착시간을 1자리 이상 입력하여 주십시오");
		        return false;
		    }
		    if (flightTime.length < 1) {
		        alert("비행시간을 1자리 이상 입력하여 주십시오");
		        return false;
		    }

		    return true; 
	}
	
	
	function submit() {
		alert("등록중..")
		check();
		$.ajax({
			url : "/admin/flightCreate",
			type : "POST",
			//dataType : "json",
			async : true,
			contentType : "application/json",
			data : JSON.stringify({
				/* fno : $("#fno").val(), */
				flightName : $("#flightName").val(),
				depName : $("#depName").val(),
				depCode : $("#depCode").val(),
				//depRegionCode : $("#dRCode").val(),
				fullDeptime : $("#fullDepTime").val(),
				arrName : $("#arrName").val(),
				arrCode : $("#aCode").val(),
				//arrRegionCode : $("#aRCode").val(),
				fullArrtime : $("#fullArrTime").val(),
				flightTime : $("#flightTime").val()

			}),
			success : function(data) {
				console.log(data);
				window.close();
				/* 			location.href="admin/flightSchedule"; */
			},
			error : function(err) {
				console.log(err);
				/* 			console.log(err.responseText); // 서버에서 전송한 오류 메시지
				 console.log(err.status);  */
				alert("항공스케줄 업로드에 실패했습니다!");
			}
		});

	}

</script>
