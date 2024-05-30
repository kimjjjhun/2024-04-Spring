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
.userPwd_ok {
	font-size: small;
	color: #008000;
	display: none;
}

.userPwd_already {
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
							<h2>비밀번호 변경</h2>
							<br>
							<h6>변경하려는 비밀번호를 입력해주시기 바랍니다.</h6>
							<br> 
							<hr>
							<br>

							<form name="frm" method="post">
								<table style="margin: auto; width: 700px">
									<tr>
										<th>새로운 비밀번호</th>
										<td style="padding-bottom: 6px"><input type="password"
											id="pwd" autocomplete="off" name="pwd"
											placeholder="영문+숫자+특수문자 6~10자리" maxlength="10"
											title="영문+숫자+특수문자 6~10자리" style="width: 250px;" oninput="pwdCheck()"  
											class="form-control" required="required"></td>
									</tr>
									<tr>
										<th>비밀번호&nbsp;확인</th>
										<td style="padding-bottom: 6px"><input type="password"
											id="pwd_check" autocomplete="off"
											placeholder="영문+숫자+특수문자 6~10자리" title="영문+숫자+특수문자 6~10자리"
											maxlength="10" style="width: 250px;" oninput="pwdCheck()" 
											class="form-control" required="required">
										<!-- <span class="userPwd_ok">&nbsp;&nbsp;비밀번호 확인이 완료되었습니다.</span>
										<span class="userPwd_already">&nbsp;&nbsp;비밀번호를 다시확인해주시기 바랍니다.</span> -->
										</td>
									</tr>
									<tr>
										<th></th>
										<td  style="padding-bottom: 6px; text-align: left;">
										<span class="userPwd_ok">&nbsp;&nbsp;비밀번호 확인이 완료되었습니다.</span>
										<span class="userPwd_already">&nbsp;&nbsp;비밀번호를 다시
											확인해주시기 바랍니다.</span>
										</td>
									</tr>

								</table>
								<input type="hidden"
									name="${_csrf.parameterName}" value="${_csrf.token}" />
								<input type="hidden"
									name="userId" value="${userInfo.userId}" />
								<br>
							</form>
							<div>
								<button onclick="location.href='/user/myPage'" id="eamilAuthBtn"
									type="submit" class="btn btn-primary" style="display: inline;">취소</button>
								<button onclick="return formCheck()" id="eamilAuthBtn" type="submit"
									class="btn btn-primary" style="display: inline;">변경</button>
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
		var message = document.getElementById('message').value; //${message}를 하는 경우 var message = ; 이렇게 표시됨 -> id주어서 수정함
		console.log(message);

		$(document).ready(function() {
			if (message !== null) {
				alert(message);
			}
			;
		});

		function pwdCheck() {
			var pwd = $('#pwd').val();
			var pwd_check = $('#pwd_check').val();
			$.ajax({
				url : '/join/userPwdCheck', //controller에서 요청받을 주소
				type : 'post', //post방식으로 전달
				data : {
					pwd : pwd,
					pwd_check : pwd_check
				}, //데이터
				dataType : 'json',
				success : function(userPwdCnt) { //controller에서 넘어온 cnt값을 받음
					if (userPwdCnt == 1) { //1이면 일치
						$('.userPwd_ok').css("display", "inline-block");
						$('.userPwd_already').css("display", "none");
					} else if (userPwdCnt == 0) { // 0 불일치
						$('.userPwd_ok').css("display", "none");
						$('.userPwd_already').css("display", "inline-block");
						//값을 지우면 확인못할것같아서 주석처리함
					} else { //-1 : controller에서 문제가 발생
						alert("오류가 발생하였습니다.");
					}
				},
				error : function() {
					alert("오류가 발생하였습니다.");
				}
			});
		};
		
		function formCheck() {
	        
			var regId = /^[a-zA-Z0-9]{6,10}$/;
			var regIdPw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,10}$/;
			var form = document.frm;

			if(document.frm.pwd.value.length == 0){
	            alert("비밀번호를 입력하세요.")
	            pwd.focus();
	            return false;
	        }
	        //비밀번호 영어 대소문자 확인
	        else if(!regIdPw.test(document.frm.pwd.value)){
	            alert("6~10자 영문 대소문자, 숫자, 특수문자를 입력해주세요.")
	            pwd.focus();
	            return false;
	        }
	        //비밀번호와 아이디 비교
	        else if(document.frm.pwd.value == document.frm.userId.value){
	            alert("아이디와 동일한 비밀번호를 사용할 수 없습니다.")
	            pwd.focus();
	            return false;
	        }
	        else if(document.frm.pwd.value !== document.frm.pwd_check.value){
	            alert("비밀번호를 다시 확인해주세요.")
	            pwd_check.focus();
	            return false;
	        }
		    alert("성공적으로 변경되었습니다");
			form.submit();
	      }
		
	</script>

</body>
</html>
