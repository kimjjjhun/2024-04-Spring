<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="includes/header2.jsp"%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet"
	href="../resources/font-awesome-4.7.0/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<!-- Bootstrap style -->
<!-- <link rel="stylesheet" type="text/css"
	href="../resources/css/datepicker.css" /> -->
<link rel="stylesheet" type="text/css"
	href="../resources/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/slick/slick-theme.css" />
<link rel="stylesheet" href="../resources/css/templatemo-style.css">

<!-- Templatemo style -->
<!-- 쿠키값으로 id정보 받아오기 -->
<%-- <%
String cookie = "";
Cookie[] cookies = request.getCookies(); //쿠키생성
if (cookies != null && cookies.length > 0)
	for (int i = 0; i < cookies.length; i++) {
		if (cookies[i].getName().equals("userid")) { // 내가 원하는 쿠키명 찾아서 값 저장
	cookie = cookies[i].getValue();
		}
	}
%> --%>

<div class="tm-page-wrap mx-auto" style="margin-top: 180px;">
	<div class="tm-container-outer tm-banner-bg">
		<div class="container">
			<!-- 원복=> 컨테이너 제거 -->
			<div class="row tm-banner-row tm-banner-row-header">
				<!-- <div class="tm-banner-header"> -->
				<div>
					<h1 class="text-uppercase tm-banner-title">로그인</h1>
				</div>
				<!-- 	<div>
					<h4 class="mb-4">아이디 및 패스워드를 입력 해 주세요.</h4>
				</div> -->

				<!-- </div> -->
			</div>
			<!-- 	<div class="row tm-banner-row tm-banner-row-header tm-about-text-wrap mx-auto text-center">	 -->
			<div class="row tm-banner-row mx-auto text-center">
				<form action="/login" role="form" method="post"
					class="tm-search-form tm-section-pad-4" name="frm" id="operForm"
					style="background-color: white; width: 670px; height: 180px;">
					<div class="form-group tm-container">
						<label for="userid">ID</label> <input type="text" id="userid"
							name="username" class="form-control" placeholder="id" required />

					</div>
					<div class="form-group tm-container">
						<label for="pwd">PASSWORD</label> <input type="password" id="pwd"
							name="password" class="form-control" placeholder="pwd" required />
					</div>

					<div class="form-group tm-container" style="text-align: left;">
						<label for="remember-userId">&nbsp;&nbsp;아이디 저장
							&nbsp;&nbsp;</label> <input type="checkbox" id="remember-userId"
							name="remember-userId" class="form-control"
							style="display: inline; width: auto;" />
						<!--자동로그인 name 속성값 remember-me-->
						<!-- <input type="checkbox" name="remember-me" class="form-control" /> -->
						<label for="remember-me">&nbsp;&nbsp;로그인 상태 유지&nbsp;&nbsp;</label>
						<input type="checkbox" id="remember-me" name="remember-me"
							class="form-control" style="display: inline; width: auto;" />
						&nbsp;&nbsp;&nbsp;&nbsp; <a style="margin-left: 285px"
							href="https://kauth.kakao.com/oauth/authorize?client_id=607caeca9f2a0089b46f99c667e0dee3&redirect_uri=http://192.168.0.19:8081/join/kakao&response_type=code&scope=account_email,name,gender,birthday,phone_number,profile_nickname&prompt=login">
							<img alt="kakao_login"
							src="../resources/img/kakao/kakao_login_small.png">
						</a>
					</div>

					<div
						class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
						<button type="submit"
							class="btn btn-primary tm-btn-primary tm-btn-send text-uppercase"
							id="login">로그인</button>
					</div>
					<div
						class="form-group tm-form-group tm-form-group-pad tm-form-group-1">

						<button type="button"
							class="btn btn-primary tm-btn-primary tm-btn-send text-uppercase"
							onclick="location.href='/join/joinTerms'">회원가입</button>
					</div>
					<div
						class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
						<button type="button"
							class="btn btn-primary tm-btn-primary tm-btn-send text-uppercase"
							onclick="location.href='/join/findId'">아이디 찾기</button>
					</div>
					<div
						class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
						<button type="button"
							class="btn btn-primary tm-btn-primary tm-btn-send text-uppercase"
							onclick="location.href='/join/findPwd'">비밀번호 찾기</button>
					</div>



					<br> <br>
					<!-- <div style="margin-top: 50px;">
						<a
							href="https://kauth.kakao.com/oauth/authorize?client_id=607caeca9f2a0089b46f99c667e0dee3&redirect_uri=http://localhost:8081/join/kakao&response_type=code&scope=account_email,name,gender,birthday,phone_number,profile_nickname&prompt=login">
							<img alt="kakao_login"
							src="../resources/img/kakao/kakao_login_small.png">
						</a>
					</div> -->
					<br> <br>
					<p style="color: red">${error}</p>
					<p id="token-result"></p>

					<div>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> <input type="hidden" id="joinMessage"
							name="joinMessage" value="${joinMessage}" /> <input
							type="hidden" id="logout" name="logout" value="${logout}" /> <input
							type="hidden" id="error" name="error" value="${error}" />

					</div>
				</form>



			</div>
		</div>
	</div>

</div>
<%@ include file="includes/footer.jsp"%>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js"/></script>
<script type="text/javascript">
	//쿠키값 저장 -> 확인함
	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays); //쿠키 저장기간(매개변수로 받은걸 set 시킴)
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}
	//쿠키값 가져오기 -> 확인함
	function getCookie(cookieName) {
		cookieName = cookieName + "=";
		var cookieData = document.cookie; //cookieName + "=" + cookieValue;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = "";

		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(";", start);
			if (end == -1) {
				end = cookieData.length;
			}
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}

	//쿠키값 지우는 이벤트 -> 확인함
	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}

	//로그인 페이지 로드 시 쿠키에 저장된 정보 조회하여 아이디 input에 보여주고, 쿠키가 있는 경우 체크박스 체크
	$(document).ready(function() {
		console.log("~~~~~~~~~~~~~~~~");
		var Id = getCookie("Cookie_userId");

		if (getCookie("Cookie_userId") != "") {
			//attr은 jQuery메소드라서 사용불가능..
			console.log("===================");
			$("#userid").val(Id);
			$("#remember-userId").prop("checked", true);
			//			document.getElementById("userid").value = getCookie("Cookie_userId");
			//			document.getElementById("remember-userId").checked = true;
		}
	});

	/* 	$("#login").on("click", function(e) {
	 e.preventDefault();
	 //alert("login");
	 */

	$("#login").on("click", function(e) {
		e.preventDefault();
		var userId = $("#userid").val();
		var pwd = $("#pwd").val();
		var idChk = $("#remember-userId").is(":checked"); //체크박스 체크 확인(true or false)

		console.log(idChk); //확인됨..
		console.log("========");
		console.log(getCookie("Cookie_userId")); //확인됨..
		console.log("========");

		if (userId == "") {
			alert("아이디를 입력해주세요.");
			$("#userid").focus();
			return false;
		} else if (pwd == "") {
			alert("비밀번호를 입력해주세요.");
			$("#pwd").focus();
			return false;
		} else if (idChk) { //체크가 되어 있으면 
			setCookie("Cookie_userId", userId, 7); //쿠키이름, 저장할 데이터, 지속기간(7일)
		} else {
			deleteCookie("Cookie_userId"); //쿠키이름으로 쿠키 삭제
		}
		$("form").submit();

	});

	var joinMessage = document.getElementById('joinMessage').value;
	if (joinMessage != "") {
		alert(joinMessage);
	};
</script>
</body>

</html>