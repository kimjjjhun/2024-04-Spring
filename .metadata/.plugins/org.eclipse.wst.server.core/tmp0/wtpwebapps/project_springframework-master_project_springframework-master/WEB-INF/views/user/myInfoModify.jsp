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
						<h2 class="text-uppercase mb-4">회원 정보 수정</h2>
						<h6>수정할 정보를 입력해주시기 바랍니다.</h6>
						<br> <br>
					</div>
				</div>
			


			<form action="/user/myInfoModify" name="frm" method="post"
				style="margin: auto;">
				<!-- class="tm-contact-form" -->

				<table style="margin: auto; width: 800px; border-top: 0.1px solid rgb(220, 220, 220); border-bottom: 0.1px solid rgb(220, 220, 220);">
				

					<tbody>
						<tr>
							<th scope="row" style="padding: 16px 8px 8px 8px; width: 150px"><label for="userNameK">한글명<span
									class="icon_require" style="color: red; font-size: x-small;">
										*</span></label></th>
							<td style="padding: 8px"><input type="text" id="userNameK" name="userNameK" oninput="handleOnInputKor(this)"
								placeholder="한글 명 입력 (예 : 홍길동)" title="한글 명 입력 (예 : 홍길동)"
								style="width: 200px; display: inline;" maxlength="10"
								class="form-control" required="required" value="${userInfo.userNameK }">
								
							</td>
						</tr>
						<tr>
							<th scope="row" style="padding: 8px;"><label
							for="userNameE">영문명<span class="icon_require"
								style="color: red; font-size: x-small;"> *</span></label></th>
							<td style="padding: 8px">
							<input type="text" id="userNameE" name="userNameE" oninput="handleOnInputEng(this)"
								placeholder="영문 명 입력 (예 : HONGGILDONG)" title="영문 명 입력 (예 : HONGGILDONG)"
								style="width: 200px; display: inline; text-transform: uppercase;" maxlength="16"
								class="form-control" required="required" value="${userInfo.userNameE}">
							</td>
						</tr>



						<tr>
							<th scope="row" style="padding: 8px;"><label for="phone_first">휴대전화<span
									class="icon_require" style="color: red; font-size: x-small; display: inline;">
										*</span></label></th>
							<td style="padding: 8px" id="korea_phone"><select id="phone_first"
								name="phone_first" style="width: 150px; display: inline;" title="휴대전화 번호 앞자리"
								class="form-control" required="required">
									<option selected="selected">${phone_first}</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select> <input type="text" id="phone_middle" name="phone_middle" value="${phone_middle}"
								placeholder="${phone_middle}" title="휴대전화 번호 가운데 자리" maxlength="4"
								style="width: 150px; display: inline;" class="form-control"
								oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')" required="required">
								<input type="text" id="phone_last" name="phone_last" value="${phone_last}"
								placeholder="${phone_last}" title="휴대전화번호 끝자리" maxlength="4"
								style="width: 150px; display: inline;" class="form-control"
								oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1')" required="required">
								</td>
						</tr>

						<tr>
							<th scope="row" style="padding: 8px;"><label for="input_address">주소<span
									class="icon_require" style="color: red; font-size: x-small;">
										*</span>
							</label></th>
							<td style="padding: 8px" id="korea_address"><input type="text"
								id="sample6_postcode" name="postCode" placeholder="${userInfo.postCode }" value="${userInfo.postCode }"
								class="form-control" style="width: 200px; display: inline;"> <input type="button"
								onclick="sample6_execDaumPostcode()" id="input_address"
								value="우편번호 찾기" class="btn btn-primary" style="display: inline;"><br><br> <input
								type="text" name="addressDefault" id="sample6_address"
								placeholder="${userInfo.address }" class="form-control" style="width: 250px" value="${userInfo.address }"><br> <input
								type="text" id="sample6_detailAddress" placeholder="상세주소"
								class="form-control" name="addressDetail" style="display: inline; width: 250px; display: inline;"> <input
								type="text" id="sample6_extraAddress" placeholder="참고항목" style="width: 250px; display: inline;"
								class="form-control">


								<p style="color: gray; margin-top: 10px; font-size: 0.8em;">제공해주신 주소는 이벤트 또는 우수회원 승급 서비스 제공을 위해 이용됩니다.</p>

								<p class="txt_error_Msg" id="error_koreaAddress"
									style="display: none;"></p></td>
							<td  id="usa_address" style="display: none;">
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



				<br>
				<br>
				<div align="center">
					<button type="button" class="btn btn-primary"
						onclick="location.href='/user/myPage'">취소</button>
					<button type="button" class="btn btn-primary"
						onclick="return formCheck()">확인</button>
				</div>
				
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="hidden" name="userId" value="${userInfo.userId}"/>
				
			</form>


		</section>
		</div>
<br>

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
		async: false,
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

			var regId = /^[a-zA-Z0-9]{6,10}$/;
			var regIdPw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,10}$/;
			var regNick = /^[a-zA-Z0-9가-힣]{2,10}$/;
			var form = document.frm;
	
if(document.frm.phone_first.value.length == 0){
	            alert("휴대전화번호를 다시 확인해주세요.")
	            document.frm.phone_first.focus;
	            return false;
	         } 
	         else if(document.frm.phone_middle.value.length == 0){
	            alert("휴대전화번호를 다시 확인해주세요.")
	            document.frm.phone_middle.focus;
	            return false;
	         } 
	         else if(document.frm.postCode.value.length == 0){
	            alert("우편번호를 다시 확인해주세요.")
	            document.frm.postcode.focus;
	            return false;
	         } 
	         else if(document.frm.addressDefault.value.length == 0){
	            alert("주소를 다시 확인해주세요.")
	            document.frm.addressDefault.focus;
	            return false;
	         }
			
			form.submit();
	      }
		
//직접입력란.. 직접입력 선택해야만 직접입력input보이게....
		function display(){
	          var select = document.getElementById("select_emailDomain");
	             var option_directInput = document.getElementById("option_directInput");
	             var input_emailDomain = document.getElementById("input_emailDomain");

	             if (select.value === "") {
	                 input_emailDomain.disabled = false;
	             } else {
	                 input_emailDomain.disabled = true;
	             }

		}
		
		function handleOnInput(el, maxlength) {
			if (el.value.length > maxlength) {
				el.value = el.value.substr(0, maxlength);
			}
		}
		function handleOnInputEng(e) {
			e.value = e.value.replace(/[^A-Za-z]/ig, '')
		}
		function handleOnInputKor(e) {
			e.value = e.value.replace(/[^ㄱ-힣]/ig, '')
		}

		</script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
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
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
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
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</body>
</html>