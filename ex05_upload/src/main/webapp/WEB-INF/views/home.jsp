<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>trip.go?</title>
<%@include file="header.jsp"%>
</head>
<body>
	<div class="container flex flex-row justify-between mx-auto ">
		<div class="flex flex-col justify-center w-1/2 text-left lg:py-12">
			<div class="ml-4">
				<h1
					class="mb-8 text-2xl font-bold md:text-3xl lg:text-5xl 2xl:text-6xl break-keep ">
					기존에 경험하지 못한<br>새로운 여행 플래너
				</h1>
				<p
					class="mb-8 leading-relaxed text-gray-200 md:text-xs xl:text-base break-keep ">
					고민만 하던 여행 계획을 <b>Tripgo?</b>를 통해 몇 분 만에 스케줄링 해보세요.
				</p>
			</div>
			<div class="relative flex w-full pl-4 group h-[80px] mt-2">
				<div
					class="w-auto py-4 px-12 text-white duration-500 z-[1] flex justify-center items-center text-lg bg-black cursor-pointer hover:bg-lightScheme-primary">마이로
					시작하기</div>
			</div>
		</div>
		<div
			class="w-1/2 h-auto px-4 overflow-hidden shadow-xl md:my-4 lg:my-12 xl:my-4 rounded-2xl">
			<div class="relative flex items-center justify-center w-full h-full">
				<video
					class="absolute top-0 bottom-0 left-0 right-0 object-center w-full h-full brightness-100"
					loop="" autoplay="">
					<source src="/assets/images/main_video2.mp4" type="video/mp4"
						class="">
				</video>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>