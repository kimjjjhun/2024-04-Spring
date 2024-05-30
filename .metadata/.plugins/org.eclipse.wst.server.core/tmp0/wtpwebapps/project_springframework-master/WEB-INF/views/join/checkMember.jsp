<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header2.jsp"%>
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



<meta name="referrer" content="no-referrer-when-downgrade" />

<body>
<div class="tm-main-content" id="top">
	<div class="tm-page-wrap mx-auto" style="margin-top : 180px;">
		<section class="tm-banner">
			<div class="tm-container-outer ">
				<div class="container">
					<!-- <div class="row tm-banner-row" id="tm-section-search"></div> -->
					<!-- row -->
				</div>
				<!-- .container -->
			</div>
			<!-- .tm-container-outer -->
		</section>

		<section class="p-5 tm-container-outer tm-bg-gray">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
						<div align="center">
							<br> <br>
							<h2 class="text-uppercase mb-4">기존 회원 여부 확인</h2>
							<h6>기존 회원 여부를 확인해주시기 바랍니다.</h6>
							<br> <br>
						</div>
						<form action="/join/checkMember" name="frm" method="post"
							style="position: inherit; width: 570px;">
							<!-- class="tm-contact-form" -->
							<table class="table_form" style="margin: auto">

								<tbody>
									<tr>
										<hr>
										<br>
										<th scope="row" style="text-align: left;"><label
											for="userNameK">한글명</label></th>
										<td colspan="3"><input type="text" id="userNameK"
											placeholder="한글 명 입력 (예 : 홍길동)" maxlength="10"
											oninput="handleOnInputKor(this)" name="userNameK"
											class="form-control"></td>
									</tr>
									<tr>
										<th scope="row" width="120px" style="text-align: left;"><label
											for="userNameE">영문명</label></th>
										<td colspan="3"><input type="text" id="userNameE"
											placeholder="영문 명 입력 (예 : HONGGILDONG)" maxlength="16"
											style="text-transform: uppercase;"
											oninput="handleOnInputEng(this)" class="form-control"
											name="userNameE"></td>
									</tr>
									<tr>
										<th scope="row" style="text-align: left;"><label
											for="gender_man">성별</label></th>

										<td>
											<div class="form-control">
												<input type="radio" name="gender" id="gender_man" value=M
													checked="checked"> <label for="gender_man">남</label>
											</div>
										</td>
										<td>
											<div class="form-control">
												<input type="radio" name="gender" id="gender_woman" value=W>
												<label for="gender_woman">여</label>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row" style="text-align: left;"><label
											for="birth_date">주민등록번호</label></th>
										<td>
											<div>
												<input class="form-control" type="text"
													name="userReginumFirst"
													oninput="handleOnInput(this, 6); this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
											</div>
										</td>
										<td>
											<div>
												<input class="form-control" type="password"
													name="userReginumLast"
													oninput="handleOnInput(this, 7); this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
											</div>
										</td>
									</tr>
								</tbody>
							</table>

							<br>
							<hr>
							<input type="hidden" name="termsAgree" value="${termsAgree}"> <br>
								
							<button type="button" id="checkMemberBtn" class="btn btn-primary" onclick="return formCheck()">확인</button>
						</form>



					</div>
				</div>
			</div>
		</section>





		<div class="tm-container-outer tm-position-relative" id="tm-section-4">


			<%@ include file="../includes/footer.jsp"%>
		</div>
	</div>
</div>
<script type="text/javascript">
	//$("#checkMemberBtn").on("click", function(e){ //값이 비었는지 확인
	function formCheck() {
		//e.preventDefault();
		
		var regfirst = /^(?=.*[0-9]).{6,7}$/;
		var reglast = /^(?=.*[0-9]).{7,8}$/;
		var frm = document.frm;
		
		if (document.frm.userNameK.value.length == 0) {
			alert("한글 명을 입력해주세요.");
			return false;
		}
		if (document.frm.userNameE.value.length == 0) {
			alert("영문 명을 입력해주세요.");
			return false;
		}
		
		if (document.frm.userReginumFirst.value.length == 0||document.frm.userReginumFirst.value.length < 6) {
			alert("주민등록번호를 확인해주세요.");
			return false;
		}
		if (document.frm.userReginumLast.value.length == 0||document.frm.userReginumLast.value.length < 7) {
			alert("주민등록번호를 확인해주세요.");
			return false;
		}
		
		frm.submit();
	
	}
	//);

	function handleOnInput(el, maxlength) {
		if (el.value.length > maxlength) {
			el.value = el.value.substr(0, maxlength);
		}
	}
	function handleOnInputEng(e) {
		e.value = e.value.replace(/[^A-Za-z]/ig, '') //영문말고 다른 문자 입력시 제거
	}
	function handleOnInputKor(e) {
		e.value = e.value.replace(/[^ㄱ-힣]/ig, '') //한글말고 다른 문자 입력시 제거
	}


</script>
