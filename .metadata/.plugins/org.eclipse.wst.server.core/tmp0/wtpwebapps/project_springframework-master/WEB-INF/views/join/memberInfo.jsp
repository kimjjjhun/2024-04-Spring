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
<style>
.id_ok {
	font-size: small;
	color: #008000;
	display: none;
}

.id_already {
	font-size: small;
	color: rgb(201, 0, 0);
	display: none;
}

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

<body style="background: #e6e6e6;">
	<div class="tm-page-wrap mx-auto" style="margin-top: 180px;">
		<section class="p-5 tm-container-outer tm-bg-gray">

			<!-- .tm-container-outer -->
			<div class="row">
				<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
					<h2 class="text-uppercase mb-4">회원 정보 입력</h2>
					<h6>회원님의 개인정보를 입력해주시기 바랍니다.</h6>
					<br> <br>
				</div>
			</div>



			<form action="/join/memberInfo" name="frm" method="post"
				style="margin: auto;">
				<!-- class="tm-contact-form" -->

				<table
					style="margin: auto; width: 800px; border-top: 0.1px solid rgb(220, 220, 220); border-bottom: 0.1px solid rgb(220, 220, 220);">


					<tbody>
						<tr>
							<th scope="row" style="padding: 16px 8px 8px 8px; width: 150px"><label
								for="userNameK">한글명<span class="icon_require"
									style="color: red; font-size: x-small;"> *</span></label></th>
							<td style="padding: 8px">${userInfo.userNameK}</td>
						</tr>
						<tr>
							<th scope="row" style="padding: 8px;"><label for="userNameE">
									영문명<span class="icon_require"
									style="color: red; font-size: x-small;"> *</span>
							</label></th>
							<td style="padding: 8px">${userInfo.userNameE}</td>
						</tr>

						<tr>
							<th scope="row" style="padding: 8px;"><label for="gender">성별<span
									class="icon_require" style="color: red; font-size: x-small;">
										*</span></label></th>
							<td style="padding: 8px">${userInfo.gender}</td>
						</tr>

						<tr>
							<th scope="row" style="padding: 8px;"><label
								for="userReginumFirst">생년월일<span class="icon_require"
									style="color: red; font-size: x-small;"> *</span></label></th>
							<td style="padding: 8px">
								<%-- 		<% 
								int userReginumFirst = model.getAttribute("userInfo");
								String userYear = Integer.toString(userReginumFirst).substring(0, 2);
								String userMonth = Integer.toString(userReginumFirst).substring(2, 4);
								String userDate = Integer.toString(userReginumFirst).substring(4, 6);
								%>
							19<%= userYear %>년&nbsp;&nbsp<%= userMonth %>월&nbsp;&nbsp;<%= userDate %>일
 --%> ${userInfo.userReginumFirst}
							</td>
						</tr>


						<tr>
							<th scope="row" style="padding: 8px;"><label for="userId">아이디
									<span class="icon_require"
									style="color: red; font-size: x-small;"> *</span>
							</label></th>
							<td style="padding: 8px"><input type="text" id="userId"
								name="userId" placeholder="영문+숫자 6~10자" title="영문+숫자 6~10자"
								style="width: 200px; display: inline;" maxlength="10"
								class="input_id; form-control" oninput="return checkId();"
								required="required"> <!-- oninput="checkId()"으로 값을 입력할 때마다 바로바로 데이터 확인시킴, style로 색을 지정하고 none;으로 숨겨둔 상태 -->
								<!-- id ajax 중복체크 --> <span class="id_ok">&nbsp;&nbsp;사용
									가능한 아이디입니다.</span> <span class="id_already">&nbsp;&nbsp;사용 불가능한
									아이디입니다.</span>

								<p style="color: gray; margin-top: 10px; font-size: 0.8em;">
									6 ~ 10자리 영문(대소문자 구별), 숫자 조합 입력 가능 <br>(단 한글, 공백, 특수문자 입력
									불가) >
								</p> <!-- 								<button type="button" class="btn btn-primary" id="btn_idCheck"
									onclick="joinInformUseridCheck();" style="display: inline;">중복확인</button> 아이디 중복 체크 여부
								<input type="hidden" name="idDuplication" value="idUncheck" />
								<p style="color: gray; margin-top: 10px; font-size: 0.8em;">
									6 ~ 10자리 영문(대소문자 구별), 숫자 조합 입력 가능 <br>(단 한글, 공백,
									특수문자 입력 불가)
									>
								</p> --></td>
						</tr>

						<tr>
							<th scope="row" style="padding: 8px;"><label for="userNick">닉네임
									<span class="icon_require"
									style="color: red; font-size: x-small;"> *</span>
							</label></th>
							<td style="padding: 8px"><input type="text" id="userNick"
								name="userNick" placeholder="한글/영문 2~10자" title="한글/영문 2~10자"
								style="width: 200px; display: inline;" maxlength="10"
								class="input_Nick; form-control" oninput="return checkNick()"
								required="required"> <!-- oninput="checkId()"으로 값을 입력할 때마다 바로바로 데이터 확인시킴, style로 색을 지정하고 none;으로 숨겨둔 상태 -->
								<!-- id ajax 중복체크 --> <span class="userNick_ok">&nbsp;&nbsp;사용
									가능한 닉네임입니다.</span> <span class="userNick_already">&nbsp;&nbsp;사용
									불가능한 닉네임입니다.</span>

								<p style="color: gray; margin-top: 10px; font-size: 0.8em;">
									2 ~ 10자리 한글, 영문(대소문자 구별), 숫자 조합 입력 가능 <br>(단 공백, 특수문자 입력
									불가) >
								</p></td>
						</tr>


						<tr>
							<th scope="row" style="padding: 8px;"><label for="pwd">비밀번호<span
									class="icon_require" style="color: red; font-size: x-small;">
										*</span></label></th>
							<td style="padding: 8px"><input type="password" id="pwd"
								autocomplete="off" name="pwd" placeholder="영문+숫자+특수문자 6~10자리"
								maxlength="10" title="영문+숫자+특수문자 6~10자리" style="width: 200px;"
								oninput="return checkPwd()" class="form-control"
								required="required"></td>
						</tr>
						<tr>
							<th scope="row" style="padding: 8px;"><label for="pwd_check">비밀번호
									확인<span class="icon_require"
									style="color: red; font-size: x-small;"> *</span>
							</label></th>
							<td style="padding: 8px"><input type="password"
								id="pwd_check" autocomplete="off"
								placeholder="영문+숫자+특수문자 6~10자리" title="영문+숫자+특수문자 6~10자리"
								maxlength="10" style="width: 200px; display: inline"
								oninput="return checkPwd()" class="form-control"
								required="required"> <!-- id ajax 중복체크 --> <span
								class="userPwd_ok">&nbsp;&nbsp;비밀번호 확인이 완료되었습니다.</span> <span
								class="userPwd_already">&nbsp;&nbsp;비밀번호를 다시 확인해주시기 바랍니다.</span>


								<!-- <button onclick="joinInformPwdCheck()" id="btn_pwdCheck"
									type="button" class="btn btn-primary" style="display: inline;">확인</button> <input
								type="hidden" name="pwdDuplication" value="pwdUncheck" /> -->
						</tr>
						<tr>
							<th scope="row" style="padding: 8px;"><label
								for="phone_first">휴대전화<span class="icon_require"
									style="color: red; font-size: x-small; display: inline;">
										*</span></label></th>
							<td style="padding: 8px" id="korea_phone"><select
								id="phone_first" name="phone_first"
								style="width: 150px; display: inline;" title="휴대전화 번호 앞자리"
								class="form-control" required="required">
									<option value="">선택</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select> <input type="text" id="phone_middle" name="phone_middle"
								placeholder="중간번호" title="휴대전화 번호 가운데 자리" maxlength="4"
								style="width: 150px; display: inline;" class="form-control"
								oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')"
								required="required"> <input type="text" id="phone_last"
								name="phone_last" placeholder="끝 번호" title="휴대전화번호 끝자리"
								maxlength="4" style="width: 150px; display: inline;"
								class="form-control"
								oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')"
								required="required">
								<p class="txt_error_Msg" id="error_koreaPhone"
									style="display: none;"></p></td>
						</tr>


						<tr>
							<th scope="row" style="padding: 8px;"><label
								for="input_emailID">이메일<span class="icon_require"
									style="color: red; font-size: x-small"> *</span></label></th>
							<td style="padding: 8px"><input type="text"
								id="input_emailID" name="email" placeholder="이메일 입력"
								title="이메일 아이디 입력" style="width: 130px; display: inline;"
								class="form-control" required="required"> @ &nbsp; <select
								id="select_emailDomain" title="이메일 도메인 선택" name="mail_Domain"
								style="width: 148px; display: inline;" onchange="display()"
								class="form-control" required="required">

									<option value="naver.com" onclick="return display()">naver.com</option>

									<option value="hanmail.net" onclick="return display()">hanmail.net</option>

									<option value="gmail.com" onclick="return display()">gmail.com</option>

									<option value="yahoo.co.kr" onclick="return display()">yahoo.co.kr</option>

									<option value="hotmail.com" onclick="return display()">hotmail.com</option>

									<option value="nate.com" onclick="return display()">nate.com</option>

									<option value="yahoo.com" onclick="return display()">yahoo.com</option>

									<option value="hotmail.co.kr" onclick="return display()">hotmail.co.kr</option>

									<option value="" id="option_directInput"
										onclick="return display()">직접입력</option>
							</select> <input type="text" id="input_emailDomain" placeholder="직접입력"
								name="mail_Domain" title="직접입력"
								style="width: 150px; display: inline;" disabled="disabled"
								class="form-control"></td>
						</tr>


						<tr>
							<th scope="row" style="padding: 8px;"><label
								for="input_address">주소<span class="icon_require"
									style="color: red; font-size: x-small;"> *</span>
							</label></th>
							<td style="padding: 8px" id="korea_address"><input
								type="text" id="sample6_postcode" name="postCode"
								placeholder="우편번호" class="form-control"
								oninput="handleOnInput(this, 6); this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
								style="width: 200px; display: inline;"> <input
								type="button" onclick="sample6_execDaumPostcode()"
								id="input_address" value="우편번호 찾기" class="btn btn-primary"
								style="display: inline;"><br> <br> <input
								type="text" name="addressDefault" id="sample6_address"
								placeholder="주소" class="form-control" style="width: 250px"><br>
								<input type="text" id="sample6_detailAddress" placeholder="상세주소"
								class="form-control" name="addressDetail"
								style="display: inline; width: 250px; display: inline;">
								<input type="text" id="sample6_extraAddress" placeholder="참고항목"
								style="width: 250px; display: inline;" class="form-control">


								<p style="color: gray; margin-top: 10px; font-size: 0.8em;">제공해주신
									주소는 이벤트 또는 우수회원 승급 서비스 제공을 위해 이용됩니다.</p>

								<p class="txt_error_Msg" id="error_koreaAddress"
									style="display: none;"></p></td>
							<td id="usa_address" style="display: none;">
								<p>
									<input type="text" id="input_usDefaultAddress"
										placeholder="기본 주소" title="기본 주소" style="width: 400px;">
									<input type="text" id="input_usDetailAddress"
										placeholder="상세 주소" title="상세 주소" style="width: 400px;">
								</p>
								<p class="mar_to15">
									<input type="text" id="input_usCity" placeholder="도시(City)"
										title="도시(City)" style="width: 257px;"> <input
										type="text" id="input_usState" placeholder="주(State)"
										title="주(State)" style="width: 257px;"> <input
										type="text" id="input_usZipCode" placeholder="우편번호(Zip Code)"
										title="우편번호(Zip Code)" style="width: 257px;">
								</p>
								<ul class="list_type3 fsz_14 mar_to10">
									<li>제공해주신 주소는 이벤트 또는 우수회원 승급 서비스 제공을 위해 이용됩니다.</li>

								</ul>
								<p class="txt_error_Msg" id="error_usAddress"
									style="display: none;"></p>
							</td>

						</tr>

					</tbody>
				</table>



				<br> <br>
				<div align="center">
					<button type="button" class="btn btn-primary" id="submitButton"
						onclick="return formCheck()">확인</button>
					<br>
					<br>
					<!-- <input class="spinner-border text-warning" type="hidden"
									name="spinner" id="spinner"> -->
				</div>
				<input type="hidden" name="userNameK" value="${userInfo.userNameK}">
				<input type="hidden" name="userNameE" value="${userInfo.userNameE}">
				<input type="hidden" name="gender" value="${userInfo.gender}">
				<input type="hidden" name="userReginumFirst"
					value="${userInfo.userReginumFirst}"> <input type="hidden"
					name="userReginumLast" value="${userInfo.userReginumLast}">
				<input type="hidden" name="termsAgree" value="${termsAgree}">

				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <br>
				<br>
				<br>

			</form>

		</section>
	</div>

	<%@ include file="../includes/footer.jsp"%>

	<script type="text/javascript">
		function handleOnInput(el, maxlength) {
			if (el.value.length > maxlength) {
				el.value = el.value.substr(0, maxlength);
			}
		}

		function checkId() {
			var userId = $('#userId').val();
			var checkIdResult = "";
			$.ajax({
				url : '/join/userIdDuplicateCheck', //controller에서 요청받을 주소
				type : 'post', //post방식으로 전달
				data : {
					userId : userId
				}, //데이터
				dataType : 'json',
				async : false,
				success : function(userIdCnt) { //controller에서 넘어온 cnt값을 받음
					if (userIdCnt == 0) { //0이면 사용가능 1이면 중복
						$('.id_ok').css("display", "inline-block");
						$('.id_already').css("display", "none");
						checkIdResult = true;
					} else { //!=0일때 (중복일때)
						$('.id_ok').css("display", "none");
						$('.id_already').css("display", "inline-block");
						checkIdResult = false;
						//$('#userId').val(''); 값을 지우는데 지우면 확인못할것같아서 주석처리함
					}
				},
				error : function() {
					alert("오류가 발생하였습니다.");
				}
			});
			return checkIdResult;
		};

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

		function checkPwd() {
			var pwd = $('#pwd').val();
			var pwd_check = $('#pwd_check').val();
			var checkPwdResult = "";
			$.ajax({
				url : '/join/userPwdCheck', //controller에서 요청받을 주소
				type : 'post', //post방식으로 전달
				data : {
					pwd : pwd,
					pwd_check : pwd_check
				}, //데이터
				dataType : 'json',
				async : false,
				success : function(userPwdCnt) { //controller에서 넘어온 cnt값을 받음
					if (userPwdCnt == 1) { //1이면 일치(확인됨)
						$('.userPwd_ok').css("display", "inline-block");
						$('.userPwd_already').css("display", "none");
						checkPwdResult = true;
					} else if (userPwdCnt == 0) { // 0 불일치
						$('.userPwd_ok').css("display", "none");
						$('.userPwd_already').css("display", "inline-block");
						//값을 지우면 확인못할것같아서 주석처리함
						checkPwdResult = false;
					} else { //-1 : controller에서 문제가 발생
						alert("오류가 발생하였습니다.");
					}
				},
				error : function() {
					alert("오류가 발생하였습니다.");
				}
			});
			return checkPwdResult;
		};

		function formCheck() {
			/*  if (document.frm.idDuplication.value == "idUncheck" ) {
			    alert("아이디 중복확인을 해주세요.");
			    document.frm.userid.focus;
			    return false;
			 }
			 else if (document.frm.pwdDuplication.value == "pwdUncheck" ) {
			    alert("비밀번호를 다시 확인해주세요.");
			    document.frm.pwd.focus;
			    return false;
			 }  */
			var regId = /^[a-zA-Z0-9]{6,10}$/;
			var regIdPw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,10}$/;
			var regNick = /^[a-zA-Z0-9가-힣]{2,10}$/;
			var form = document.frm;
			var submitButton = document.getElementById('submitButton');
			var spinner = document.getElementById('spinner');

			if (document.frm.userId.value.length == 0) {
				alert("아이디를 입력해주세요.");
				document.frm.userId.focus;
				return false;
			} else if (!regId.test(document.frm.userId.value)) { //아이디 영어 대소문자 확인
				alert("6~10자 영문 대소문자, 숫자만 입력해주세요.")
				userId.focus();
				return false;
			} else if (!checkId()) {
				alert("아이디를 다시 확인해주세요.");
				return false;
			}
			//닉네임
			else if (document.frm.userNick.value.length == 0) {
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

			//비밀번호 확인
			else if (document.frm.pwd.value.length == 0) {
				alert("비밀번호를 입력하세요.")
				pwd.focus();
				return false;
			} else if (!regIdPw.test(document.frm.pwd.value)) {
				alert("6~10자 영문 대소문자, 숫자, 특수문자를 입력해주세요.")
				pwd.focus();
				return false;
			} else if (document.frm.pwd.value == document.frm.userId.value) {
				alert("아이디와 동일한 비밀번호를 사용할 수 없습니다.")
				pwd.focus();
				return false;
			} else if (!checkPwd()) {
				alert("비밀번호를 다시 확인해주세요.");
				return false;
			}

			else if (document.frm.phone_first.value.length == 0) {
				alert("휴대전화번호를 다시 확인해주세요.")
				document.frm.phone_first.focus;
				return false;
			} else if (document.frm.phone_middle.value.length == 0
					|| document.frm.phone_middle.value.length < 4) {
				alert("휴대전화번호 가운데 자리를 다시 확인해주세요(4글자).")
				document.frm.phone_middle.focus;
				return false;
			} else if (document.frm.phone_last.value.length == 0
					|| document.frm.phone_last.value.length < 4) {
				alert("휴대전화번호 마지막 자리를 다시 확인해주세요(4글자).")
				document.frm.phone_last.focus;
				return false;
			}

			else if (document.frm.email.value.length == 0) {
				alert("이메일을 다시 확인해주세요.")
				document.frm.email.focus;
				return false;
			} else if (document.frm.email.value.includes('@')) {
				alert("이메일을 다시 확인해주세요.")
				document.frm.email.focus;
				return false;
			} else if (document.frm.postCode.value.length == 0) {
				alert("우편번호를 다시 확인해주세요.")
				document.frm.postCode.focus;
				return false;
			} else if (document.frm.addressDefault.value.length == 0) {
				alert("주소를 다시 확인해주세요.")
				document.frm.addressDefault.focus;
				return false;
			}
			//disabled="disabled"
			submitButton.disabled = 'disable';
			//spinner.type = 'text';

			form.submit();
		}

		//직접입력란.. 직접입력 선택해야만 직접입력input보이게....
		function display() {
			var select = document.getElementById("select_emailDomain");
			var option_directInput = document
					.getElementById("option_directInput");
			var input_emailDomain = document
					.getElementById("input_emailDomain");

			if (select.value === "") {
				input_emailDomain.disabled = false;
			} else {
				input_emailDomain.disabled = true;
			}

		}
	</script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}
	</script>


</body>
</html>
