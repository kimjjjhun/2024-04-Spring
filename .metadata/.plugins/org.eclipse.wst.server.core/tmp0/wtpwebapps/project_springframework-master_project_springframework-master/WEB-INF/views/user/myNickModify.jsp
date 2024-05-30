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
.userNick_ok {
	font-size: small;
	color: #008000;
	display: none;
}

.userNick_already {
	font-size: small;
	color: rgb(201, 0, 0);
	display: none;
}
</style>

<div class="tm-page-wrap mx-auto" style="margin-top: 180px;">
	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="tm-container-outer ">
			<div class="container">
				<!-- <div class="row tm-banner-row" id="tm-section-search"></div> -->
				<!-- row -->
			</div>
			<!-- .container -->
		</div>
		<!-- .tm-container-outer -->
	

		<div align="center">
			<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
							<h2>닉네임 변경</h2>
							<br>
							<h6>변경하려는 닉네임을 입력해주시기 바랍니다.</h6>
							<br>
							<hr>
							<br>

							<form name="frm" method="post">
								<table style="margin: auto; width: 700px">
									<tr>
										<th>기존 닉네임</th>
										<td style="padding: 8px"><input type="text" 
											style="width: 250px; " maxlength="10"
											class="input_Nick; form-control" readonly="readonly" value="${loginUser.userNick }"> <!-- oninput="checkId()"으로 값을 입력할 때마다 바로바로 데이터 확인시킴, style로 색을 지정하고 none;으로 숨겨둔 상태 -->
											<!-- id ajax 중복체크 --></td>
									</tr>	
									<tr>
										<th>새로운 닉네임</th>
										<td style="padding: 8px"><input type="text" id="userNick"
											name="userNick" placeholder="한글/영문 2~10자" title="한글/영문 2~10자"
											style="width: 250px; " maxlength="10"
											class="input_Nick; form-control" oninput="return checkNick()"
											required="required"> <!-- oninput="checkId()"으로 값을 입력할 때마다 바로바로 데이터 확인시킴, style로 색을 지정하고 none;으로 숨겨둔 상태 -->
											<!-- id ajax 중복체크 --></td>
									</tr>	
									
									<tr>
									<th></th>
									<td  style="padding-bottom: 6px; text-align: left;">
									<span class="userNick_ok">&nbsp;&nbsp;사용
								가능한 닉네임입니다.</span> <span class="userNick_already">&nbsp;&nbsp;사용
								불가능한 닉네임입니다.</span>
								</td>
								</tr>
									<tr>
									<th></th>
									<td  style="padding-bottom: 6px; text-align: left;">
									<p style="color: gray; margin-top: 10px; font-size: 0.8em; text-align: left;">
									2 ~ 10자리 한글, 영문(대소문자 구별), 숫자 조합 입력 가능 <br>(단 공백, 특수문자 입력
									불가) >
								</p>
								</td>
								</tr>



								
								</table>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="hidden" name="userId"
									value="${loginUser.userId}" /> <br>
							</form>
							<div>
								<button onclick="location.href='/user/myPage'" id="eamilAuthBtn"
									type="submit" class="btn btn-primary" style="display: inline;">취소</button>
								<button onclick="return formCheck()" id="eamilAuthBtn"
									type="submit" class="btn btn-primary" style="display: inline;">변경</button>
							</div>
						</div>
					</div>
			</section>
				</div>



			<div class="tm-container-outer tm-position-relative"
				id="tm-section-4">


				<%@ include file="../includes/footer.jsp"%>
			</div>
	<script type="text/javascript">
		function checkNick() {
			var userNick = $('#userNick').val();
			var checkNickResult = "";
			$.ajax({
				url : '/join/userNickDuplicateCheck', //controller에서 요청받을 주소
				type : 'post', //post방식으로 전달
				data : {
					userNick : userNick
				}, //데이터
				dataType : 'json',
				async : false,
				success : function(userNickCnt) { //controller에서 넘어온 cnt값을 받음
					if (userNickCnt == 0) { //0이면 사용가능 1이면 중복
						$('.userNick_ok').css("display", "inline-block");
						$('.userNick_already').css("display", "none");
						checkNickResult = true;
					} else { //!=0일때 (중복일때)
						$('.userNick_ok').css("display", "none");
						$('.userNick_already').css("display", "inline-block");
						//$('#userNick').val(''); 값을 지우는데 지우면 확인못할것같아서 주석처리함
						checkNickResult = false;
					}
				},
				error : function() {
					alert("오류가 발생하였습니다.");
				}
			});
			return checkNickResult;
		};

		function formCheck() {

			var regNick = /^[a-zA-Z0-9가-힣]{2,10}$/;
			var form = document.frm;

			if (document.frm.userNick.value.length == 0) {
				alert("닉네임을 입력해주세요.")
				document.frm.userNick.focus;
				return false;
			} else if (!regNick.test(document.frm.userNick.value)) {
				alert("2~10자리 한글, 영문(대소문자 구별), 숫자를 입력해주세요.")
				document.frm.userNick.focus;
				return false;
			} else if (!checkNick()) {
				alert("닉네임을 다시 확인해주세요.");
				return false;
			}

			alert("성공적으로 변경되었습니다");
			form.submit();
		}
	</script>

</body>
</html>
