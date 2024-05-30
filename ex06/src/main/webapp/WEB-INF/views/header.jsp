<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#wrap {
	min-height: 100%;
	position: relative;
}
</style>

<!-- Required meta tags -->

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

 <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<title>trip.go?</title>
</head>
<body>
	<header>
		<!-- Nav Bar 오른쪽 정렬 -->
		<nav class="navbar navbar-expand-lg bg-light navbar-light">
			<div class="container-fluid">
				<a class="navbar-brand" href="/"> <img
					src="../resources/main/logo.png" alt="" width="60" height="60"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="collapsibleNavbar">
					<ul class="navbar-nav">
						<li class="nav-item" style="margin-right: 40;"><a class="nav-link" href="/"
							><strong>여행지</strong></a></li>
						<li class="nav-item" style="margin-right: 40;"><a class="nav-link" href="/"
							><strong>결제하기</strong></a></li>
						<li class="nav-item" style="margin-right: 40;"><a class="nav-link" href="/board/list"
							><strong>게시판</strong></a></li>
						<li class="nav-item" style="margin-right: 40;"><a class="nav-link" href="/help"
							><strong>문의하기</strong></a></li>
						<li class="nav-item" style="margin-right: 40;">님 어서오세요</li>
						<sec:authorize access="isAnonymous()">
						<button type="button" class="btn btn-light"
							style="background-color: black; color: white;"
							onclick="window.location.href = '/customLogin'">로그인</button>
						</sec:authorize>
						 
						<sec:authorize access="isAuthenticated()">
						<button type="button" class="btn btn-light"
							style="background-color: black; color: white;"
							onclick="window.location.href = '/customLogout'">로그아웃</button>
						</sec:authorize>

					</ul>
				</div>
			</div>
		</nav>
		
		<div class="offcanvas offcanvas-start" tabindex="-1"
			id="offcanvasWithBackdrop"
			aria-labelledby="offcanvasWithBackdropLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasWithBackdropLabel">이 용
					방 법</h5>
				<button type="button" class="btn-close text-reset"
					data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<p>첫번째</p>
			</div>
		</div>

		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
			integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
			integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
			crossorigin="anonymous"></script>

	</header>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>        
</body>
</html>