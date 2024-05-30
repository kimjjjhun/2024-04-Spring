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

<div class="tm-page-wrap mx-auto" style="margin-top: 180px;">
	<section class="p-5 tm-container-outer tm-bg-gray">

		<!-- .tm-container-outer -->
		<div class="row" >
			<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
					<h2 class="text-uppercase mb-4">회원 약관동의</h2>
					<h6>약관 및 정보이용 안내에 동의해주시기 바랍니다.</h6>
					<br> <br>
				</div>
				<br>
				<form action="/join/joinTerms" method="post" name="frm"
					style="margin: auto; width: 80%;">
					<fieldset style="margin: 20px 20px 20px 20px; border: 0px">
						<hr>
						<input type="checkbox" name="selectall" id="agree_all"
							data-type="all_ck_item" onclick="selectAll(this)"> <label
							for="agree_all" class="fsz_23">카카오 클럽 일반규정, 약관 및 본인의 개인정보
							수집·이용, 국외 이전, 제 3자 제공에 모두 동의합니다.</label>
							
						<hr>
						<input type="checkbox" name="terms" value="selectall"
							id="agree_hompageUse" onclick="return checkSelectAll()">
						<label for="agree_hompageUse" class="fsz_23"> <span
							class="col_brown2">[필수]</span> ${terms1.termsTitle}
						</label> <br>
						${terms1.termsContents}

						<br><br>
						<input type="checkbox" name="terms" value="selectall"
							id="agree_personalCollection" onclick="return checkSelectAll()">
						<label for="agree_personalCollection" class="fsz_23"> <span
							class="col_brown2">[필수]</span> ${terms2.termsTitle}
						</label> <br>
						${terms2.termsContents}

						<br> <br> <input type="checkbox" name="terms"
							value="selectall" id="agree_personalTransferToAbroad"
							onclick="return checkSelectAll()"> <label
							for="agree_personalTransferToAbroad" class="fsz_23"> <span
							class="col_brown2">[필수]</span> ${terms3.termsTitle}
						</label> <br>
						${terms3.termsContents}
						

						<br> <br> <input type="checkbox" name="terms"
							value="terms4" id="agree_personalProvide"
							onclick="return checkSelectAll()"> <label
							for="agree_personalProvide" class="fsz_23"> <span
							class="col_brown2">[선택]</span> ${terms4.termsTitle}
						</label> <br>
						${terms4.termsContents}
						<br>


					</fieldset>

					<br>
					<hr>
					<br>
					<div align="center">
					<button type="button" class="btn btn-primary"
						onclick="location.href='/'">취소</button>
					<!-- 취소 누르는데 체크박스 리셋이 안먹힌다..... 메인으로 보냄 -->
					<button type="submit" class="btn btn-primary"
						onclick="return termsCheck()">동의</button>						<br>
						<br>
					</div>
				</form>
			</div>

		</section>
	</div>
	
		<%@ include file="../includes/footer.jsp"%>

	<script type="text/javascript">
function selectAll(selectAll)  { /*약관동의시 전체 선택*/
	  const checkboxes 
	       = document.getElementsByName('terms');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  })
	}

function checkSelectAll()  { /* 하나라도 체크되지 않으면 전체선택이 빠짐, 전부체크하면 전체선택이 체크 */
	  // 전체 체크박스
	  const checkboxes 
	    = document.querySelectorAll('input[name="terms"]');

	  const checked 
	    = document.querySelectorAll('input[name="terms"]:checked');
	  // select all 체크박스
	  const selectAll 
	    = document.querySelector('input[name="selectall"]');
	  
	  if((checkboxes.length) === checked.length)  {
	    selectAll.checked = true;
	  }else {
	    selectAll.checked = false;
	  }

	}

 function termsCheck(){
	if($('input:checkbox[id="agree_hompageUse"]').is(":checked") != true){
		alert("필수약관에 동의해주시기 바랍니다.");
		return false;
	}
	if($('input:checkbox[id="agree_personalCollection"]').is(":checked") != true){
		alert("필수약관에 동의해주시기 바랍니다.");
		return false;
	}
	if($('input:checkbox[id="agree_personalTransferToAbroad"]').is(":checked") != true){
		alert("필수약관에 동의해주시기 바랍니다.");
		return false;
	}
 }


	
</script>
</body>
</html>