<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header2.jsp"%>
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

<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />


<script>
	var $jLatest = jQuery.noConflict();
</script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	var $jb = jQuery.noConflict();
</script>

<!-- Font Awesome 5 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<body style="background: #e6e6e6;">
<div class="tm-page-wrap mx-auto" style="margin-top: 180px;">
	<section class="p-5 tm-container-outer tm-bg-gray">

		<!-- .tm-container-outer -->
		<div class="row">
			<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
				<h2>비밀번호 찾기</h2>
				<br>
				<h6>
					회원가입 시 등록한 이메일 주소와 아이디를 입력해주시기 바랍니다. <br> 기입한 이메일 주소로 안내 메일을
					발송해 드립니다. <br> 이메일 발송에는 1~2분의 시간이 소요될 수 있습니다.
				</h6>
				<br>
				<hr>
				<br>

				<form name="signUpForm" method="post" id="signUpForm">
					<table style="margin-left: auto; margin-right: auto;">
						<tr>
							<th>아이디</th>
							<td style="padding-bottom: 6px"><input type="text"
								required="required" name="userId" id="userId" maxlength="30"
								class="form-control"></td>
						</tr>
						<tr>
							<th
								style="padding: 8px; border-top: none; text-align: center; vertical-align: middle; width: 150px">이메일</th>
							<td style="border-top: none; padding: 0"><input
								required="required" type="text" name="email" id="inputEmailForm"
								maxlength="30" class="form-control"
								style="display: inline; width: 250px"></td>
						</tr>



					</table>
					<br> <br> <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />

					<button id="emailAuthBtn" type="submit" class="btn btn-primary"
						style="display: inline;" name="findIdButton" onclick="formCheck()">인증 메일 보내기</button>
					<!-- <input class="spinner-border text-warning" type="hidden"
						name="spinner" id="spinner"> -->

					<div>
						<input type="hidden" id="joinMessage" name="joinMessage"
							value="${joinMessage}" />
						<!-- 이메일 정보가 없는 경우 controller의 model에서 message 받아옴 -->
					</div>
					<br> <br>
				</form>


			</div>
		</div>
	</section>
</div>



<%@ include file="../includes/footer.jsp"%>

<script type="text/javascript">
	var joinMessage = document.getElementById('joinMessage').value;
	console.log(joinMessage);
	if (joinMessage != "") {
		alert(joinMessage);
	};
	
	function formCheck() {
		var regId = /^[a-zA-Z0-9]{6,10}$/;
		var form = document.signUpForm;
		var submitButton = document
				.getElementById('emailAuthBtn');
		var spinner = document.getElementById('spinner');

		var emailPattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var email = form.email.value;


		if (document.signUpForm.userId.value.length == 0) {
			alert("아이디를 입력해주세요.");
			document.signUpForm.userId.focus;
			return false;
		} else if (!regId.test(document.signUpForm.userId.value)) { //아이디 영어 대소문자 확인
			alert("6~10자 영문 대소문자, 숫자만 입력해주세요.")
			userId.focus();
			return false;
		}
		if (!check(emailPattern, email, "유효하지 않은 이메일 주소입니다.")) {
		}
		//submitButton.style.display = 'none';
		//spinner.type = 'text';
		submitButton.disabled = 'disable';
		form.submit();

	}
	function check(pattern, taget, message) {
		if (pattern.test(taget)) {
			return true;
		}
		alert(message);
		taget.focus(); //타겟팅이 안됨
		return false;
		//정규식 검증이 필요한 다른 항목에서도 사용가능하도록 만들어 코드 재사용성을 높임
		//taget을 pattern으로 검사해 유효하면 ture 반환
		//taget이 pattern에 맞지 않는다면?
		//alert로 message를 띄워 사용자에게 알림
		//유요하지 않은 입력에 포커스를 줌 => 에러발생.. 
		//false 반환
	};

</script>

</body>
</html>
