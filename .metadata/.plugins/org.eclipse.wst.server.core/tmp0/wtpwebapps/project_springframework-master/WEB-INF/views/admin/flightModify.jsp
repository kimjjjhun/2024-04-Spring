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
.col-xs-12{
        width:300px;
        margin:auto;
    }
</style>

<%-- <div class="tm-page-wrap mx-auto"  >--%>


<section class="p-5 tm-container-outer tm-bg-gray" style="max-width: 1700px;">
<div class="container" style="max-width: 1800px;">
	<div class="row">
		<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
			<h2 class="text-uppercase mb-4">운항스케줄 수정</h2>
			<p class="mb-2">양식에 맞게 정확히 기입 해 주세요.</p>
		</div>
	</div>

	<div class="row">
		<div class="col-xs-6">
			<table class="table table-hover">
				<thead style="background: #ffc107">
					<tr>
						<th>번호</th>
						<th style="width: 10%">운항기</th>
						<th>출발지</th>
						<th>출발공항 코드</th>
					    <th>출발지역 코드</th>
						<th>출발시간</th>
					</tr>
				</thead>
				<tbody>
					<tr class="flight">
						<td><input type="text" id="fno" name="fno" value="${vo.fno}" readonly="readonly" style="border: 0; background-color: #efefef; width: 40px;"/></td>
								<td><input type="text" id="flightName" name="flightName" value="${vo.flightName}" readonly="readonly" style="border: 0; background-color: #efefef; width: 80px"/></td>
								<td><input type="text" id="depName" name="depName" value="${vo.depName}" readonly="readonly" style="border: 0; background-color: #efefef;width: 80px"/></td>
								<td><input type="text" id="depCode" name="depCode" value="${vo.depCode}" readonly="readonly" style="border: 0; background-color: #efefef;width: 80px;"/></td>
								<td><input type="text" id="dRCode" name="dRCode" value="${vo.depRegionCode}" readonly="readonly" style="border: 0; background-color: #efefef;width: 80px;"/></td>
								<td><input type="text" id="fullDepTime" name="fullDepTime" value="${vo.fullDeptime}" required="required" style="border: 0; background-color: #efefef;width: 160px"/></td>
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
						<th>도착지역 코드</th>
						<th>도착시간</th>
						<th>비행시간</th>
						<th>수정사유</th>
					</tr>
				</thead>
				<tbody>
					<tr class="flight">
						<td><input type="text" id="arrName" name="arrName" value="${vo.arrName}" readonly="readonly" style="border: 0; background-color: #efefef;width: 80px"/></td>
								<td><input type="text" id="aCode" name="aCode" value="${vo.arrCode}" readonly="readonly" style="border: 0; background-color: #efefef;width: 80px;"/></td>
								<td><input type="text" id="aRCode" name="aRCode" value="${vo.arrRegionCode}" readonly="readonly" style="border: 0; background-color: #efefef;width: 80px;"/></td>
								<td><input type="text" id="fullArrTime" name="fullArrTime" required="required" value="${vo.fullArrtime}"  style="border: 0; background-color: #efefef;width: 160px"/></td>
								<td><input type="text" id="flightTime" name="flightTime" required="required" value="${vo.flightTime}"  style="border: 0; background-color: #efefef;width: 80px"/></td>
								<td><input type="text" id="reason" name="reason" required="required" value="${vo.reason}"  style="border: 0; background-color: #efefef;width: 80px"/></td>
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
<%--</div> --%>
<!-- .tm-container-outer -->

<script type="text/javascript">
	console.log("dddd");
	function submit() {
		alert("작동확인..")
		check();
		$.ajax({
			url : "/admin/flightModify",
			type : "POST",
			//dataType : "json",
			async : true,
			contentType : "application/json",
			data : JSON.stringify({
				fno : $("#fno").val(),
				flightName : $("#flightName").val(),
				depName : $("#depName").val(),
				depCode : $("#depCode").val(),
				depRegionCode : $("#dRCode").val(),
				fullDeptime : $("#fullDepTime").val(),
				arrName : $("#arrName").val(),
				arrCode : $("#aCode").val(),
				arrRegionCode : $("#aRCode").val(),
				fullArrtime : $("#fullArrTime").val(),
				flightTime : $("#flightTime").val(),
				reason : $("#reason").val(),
				isDelete : 2

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
				alert("항공스케줄 수정에 실패했습니다!");
			}
		});

	}
	//유효성 체크
	function check() {

	}
</script>
