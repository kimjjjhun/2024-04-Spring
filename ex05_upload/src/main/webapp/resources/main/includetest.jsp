<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<style>
#wrap{
	min-height: 100%;
	position: relative;
}
footer{
	width: 100%;
	bottom: -100px;
	position: absolute;
}
</style>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>trip.go?</title>
  </head>
  <header>
    <!-- Nav Bar 오른쪽 정렬 -->
<nav class="navbar navbar-expand-lg bg-light navbar-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">
		<img src="../resources/main/logo.png" alt="" width="60" height="60"></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end"
			id="collapsibleNavbar">
			<ul class="navbar-nav" style="margin-right: 20">
				<li class="nav-item"><a class="nav-link" href="#" style="margin-right: 40"><strong>여행계획만들기</strong></a></li>
				<li class="nav-item"><a class="nav-link" href="#" style="margin-right: 40"><strong>문의하기</strong></a></li>
				<li class="nav-item"><a class="nav-link" href="#" style="margin-right: 40"><strong>구독</strong></a></li>
				<li class="nav-item"><a class="nav-link" href="#" style="margin-right: 40"><strong>회원가입</strong></a></li>
				<button type="button" class="btn btn-light" style="background-color:black; color:white;">로그인</button>
			</ul>
		</div>
	</div>
</nav>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </header>
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
      </a>
      <span class="mb-3 mb-md-0 text-muted">© 2024 Tripgo? Company, Inc</span>
    </div>

    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex" style="margin-right: 20">
      <li class="ms-3"><a class="text-muted" href="#"><img src="../resources/main/Facebook.png" alt="" width="30" height="30"></a></li>
      <li class="ms-3"><a class="text-muted" href="#"><img src="../resources/main/instagram.png" alt="" width="30" height="30"></a></li>
      <li class="ms-3"><a class="text-muted" href="#"><img src="../resources/main/twiiter.png" alt="" width="30" height="30"></a></li>
      <li class="ms-3"><a class="text-muted" href="#"><img src="../resources/main/kakaotalk.png" alt="" width="30" height="30"></a></li>
    </ul>
  </footer>
</html>