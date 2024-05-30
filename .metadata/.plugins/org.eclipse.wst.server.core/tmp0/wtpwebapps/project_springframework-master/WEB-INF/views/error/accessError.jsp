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

							<h2>죄송합니다</h2>
							<br>
							<h6>
								요청이 거절되었습니다. <br> 접근할 수 없는 페이지 입니다.
							</h6>
							<br>
							<hr>
							<br>

							<h4>Access Denied Page</h4>
							<h2>
								<c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage()}"></c:out>
							</h2>
							<h2>
								<c:out value="${msg}"></c:out>
							</h2>
<br><br>
<button type="button" class="btn btn-primary" id="submitButton"
					onclick="location.href='/'">확인</button>

						</div>
					</div>
			</section>
				</div>



			<div class="tm-container-outer tm-position-relative"
				id="tm-section-4">


				<%@ include file="../includes/footer.jsp"%>
			</div>
