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
				<h2 class="text-uppercase mb-4">My Page</h2>
			</div>
		</div>



		<form action="/join/memberInfo" name="frm" method="post"
			style="margin: auto;">
			<!-- class="tm-contact-form" -->

			<div align="right" style="margin: 0px auto 10px auto; width: 800px">
				<button type="button" class="btn btn-primary btn-sm"
					onclick="location.href='/user/myNickModify'">닉네임 변경</button>
				<button type="button" class="btn btn-primary btn-sm"
					onclick="location.href='/user/myPwdModify'">비밀번호 변경</button>
				<button type="button" class="btn btn-primary btn-sm"
					onclick="location.href='/user/myInfoModify'">수정</button>
			</div>
			<table
				style="margin: auto; width: 800px; border-top: 0.1px solid rgb(220, 220, 220); border-bottom: 0.1px solid rgb(220, 220, 220);">


				<tbody>
					<tr>
						<th scope="row" style="padding: 16px 8px 8px 8px; width: 150px"><label
							for="userNameK">한글명<span class="icon_require"
								style="color: red; font-size: x-small;"> *</span></label></th>
						<td style="padding: 8px">${userInfo.userNameK}
							<p class="txt_error_Msg" id="error_koreanName"
								style="display: none;"></p>
						</td>
					</tr>
					<tr>
						<th scope="row" style="padding: 8px;"><label
							for="userNameE">영문명<span
							class="icon_require" style="color: red; font-size: x-small;">
								*</span></label></th>
						<td style="padding: 8px">${userInfo.userNameE}</td>
					</tr>

					<tr>
						<th scope="row" style="padding: 8px;"><label
							for="gender">성별<span
							class="icon_require" style="color: red; font-size: x-small;">
								*</span></label></th>
						<td style="padding: 8px">${userInfo.gender}</td>
					</tr>

					<tr>
						<th scope="row" style="padding: 8px;"><label
							for="userReginumFirst">생년월일<span
							class="icon_require" style="color: red; font-size: x-small;">
								*</span></label></th>
						<td style="padding: 8px">${userInfo.userReginumFirst}</td>
					</tr>


					<tr>
						<th scope="row" style="padding: 8px;"><label for="userId">아이디
								<span class="icon_require"
								style="color: red; font-size: x-small;"> *</span>
						</label></th>
						<td style="padding: 8px">${userInfo.userId}</td>
					</tr>

					<tr>
						<th scope="row" style="padding: 8px;"><label for="userNick">닉네임
								<span class="icon_require"
								style="color: red; font-size: x-small;"> *</span>
						</label></th>
						<td style="padding: 8px">${userInfo.userNick}</td>
					</tr>
					<tr>
						<th scope="row" style="padding: 8px;"><label
							for="phone_first">휴대전화<span class="icon_require"
								style="color: red; font-size: x-small; display: inline;">
									*</span></label></th>
						<td style="padding: 8px">${userInfo.phone}</td>
					</tr>


					<tr>
						<th scope="row" style="padding: 8px;"><label
							for="input_emailID">이메일<span class="icon_require"
								style="color: red; font-size: x-small"> *</span></label></th>
						<td style="padding: 8px">${userInfo.mail}</td>
					</tr>


					<tr>
						<th scope="row" style="padding: 8px 8px 40px 8px;"><label
							for="input_address">주소<span class="icon_require"
								style="color: red; font-size: x-small;"> *</span>
						</label></th>
						<td style="padding: 8px; display: block;" id="korea_address">
							${userInfo.postCode}</td>

						<td style="padding: 8px; display: inline;">
							${userInfo.address}</td>
					</tr>

				</tbody>
			</table>

			<br> <br>
			<div align="center">
				<button type="button" class="btn btn-primary"
					onclick="location.href='/user'">확인</button>
			</div>

			<input type="hidden" name="userNameK" value="${userInfo.userNameK}">
			<input type="hidden" name="userNameE" value="${userInfo.userNameE}">
			<input type="hidden" name="gender" value="${userInfo.gender}">
			<input type="hidden" name="userReginumFirst"
				value="${userInfo.userReginumFirst}"> <input type="hidden"
				name="userReginumLast" value="${userInfo.userReginumLast}">
			<input type="hidden" name="termsAgree" value="${termsAgree}">

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />

		</form>


	</section>
</div>
<br>
		<%@ include file="../includes/footer.jsp"%>



</html>