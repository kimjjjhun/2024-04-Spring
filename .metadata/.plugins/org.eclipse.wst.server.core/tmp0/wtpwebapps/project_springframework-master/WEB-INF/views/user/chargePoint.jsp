<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header2.jsp"%>
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

<!-- import import -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>

<!-- 이미지로더 -->
<script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
<style>
img{
max-width: 100%;
}

</style>

<div class="tm-page-wrap mx-auto" style="margin-top : 180px;">
<!-- 	<section class="tm-banner">

		.tm-container-outer
		<div class="inner">
			<div class="slideshow">
				<img src="../resources/img/tm-img-01.jpg" alt="" width="1600"
					height="500"> 
			</div>
		</div>
	</section> -->

	 <section class="p-5 tm-container-outer tm-bg-gray"> 
		<div class="container">
			<div class="row">
				<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
					<h2 class="text-uppercase mb-4">
						<strong>kakao point 충전</strong>
					</h2>
					<p class="mb-2">카카오페이 포인트를 충전하고, 항공권 결제 시 사용할 수 있습니다.</p>
					<p class="mb-2">원하는 충전금액을 선택한 후 결제버튼을 클릭 해 주세요.</p>
					<!-- 					<a href="#" class="text-uppercase btn-primary tm-btn">Continue
						explore</a> -->
						<div class="card-body bg-white mt-0 shadow">
                <p style="font-weight: bold">카카오페이 현재 사용가능</p>
                <label class="box-radio-input"><input type="radio" name="cp_item" value="10000"><span>10,000원</span></label>
                <label class="box-radio-input"><input type="radio" name="cp_item" value="20000"><span>20,000원</span></label>
                <label class="box-radio-input"><input type="radio" name="cp_item" value="30000"><span>30,000원</span></label>
                <label class="box-radio-input"><input type="radio" name="cp_item" value="40000"><span>40,000원</span></label>
                <label class="box-radio-input"><input type="radio" name="cp_item" value="50000"><span>50,000원</span></label>
                <label class="box-radio-input"><input type="radio" name="cp_item" value="100000"><span>100,000원</span></label>
                <label class="box-radio-input"><input type="radio" name="cp_item" value="200000"><span>200,000원</span></label>
                <label class="box-radio-input"><input type="radio" name="cp_item" value="500000"><span>500,000원</span></label>
                <p  style="color: #ac2925; margin-top: 30px">카카오페이의 최소 충전금액은 10,000원이며 <br/>최대 충전금액은 500,000원 입니다.</p>
                <button type="button" class="btn btn-lg btn-primary btn-block  btn-custom" id="charge_kakao">충 전 하 기</button>
 </div>
				</div>
			</div>		
					
		</div>
	 </section>

</div>
<!-- .tm-container-outer -->
<%@ include file="../includes/footer.jsp"%>
<script type="text/javascript">
    $('#charge_kakao').click(function () {
        // getter
        var IMP = window.IMP;
        IMP.init('imp80062786');
        var money = $('input[name="cp_item"]:checked').val();
        console.log(money);
	
        IMP.request_pay({
            pg: 'kakaopay.TC0ONETIME',
            merchant_uid: 'merchant_' + new Date().getTime(),
            pay_method: 'card',
            name: '카카오 포인트 충전',
            amount: money,
            buyer_email: 'kbr7105@naver.com',
            buyer_name: '구매자이름',
            buyer_tel: '010-1234-5678',
            buyer_addr: '인천광역시 부평구',
            buyer_postcode: '12566'
        }, function (rsp) {
        	console.log("dddd");
            console.log(rsp);
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
                $.ajax({
                    type: "GET", 
                    url: "/user/chargePoint2", //충전 금액값을 보낼 url 설정
                    data: {
                        "amount" : money
                    },
                });
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
            document.location.href="/"; //alert창 확인 후 이동할 url 설정
        });
    });
</script>


<script type="text/javascript">
	$(function() {
		$('.slideshow').each(function() {
			// each : 앞에 선택된 내용의 개수만큼 반복하도록 하는 메서드
			let $slides = $(this).find("img");
			let slideCount = $slides.length;
			let currentIndex = 0;
			$slides.eq(currentIndex).fadeIn();
			// 첫 이미지를 나타나게 함

			// 다음이미지가 나타나게 끔->현재 이미지를 페이드아웃하고 다음이미지를 나타나게 하고 현재이미지값으로 변경시켜서 로테이션돌게 함
			let showNextSlide = function() {
				let nextIndex = (currentIndex + 1) % slideCount;
				// 다음이미지의 인덱스 값을 구하는데 이미지가 4개이므로 최대값이 3이되어야 함 따라서 나머지 연산자를 통해 반복하도록 함(1~4의 값을 4로 나누므로 0~3을 반복시킴-어차피 0은 위에서 표시되도록 했으니까.....?)
				$slides.eq(currentIndex).fadeOut();
				// 현재 이미지를 사라지게 하고
				$slides.eq(nextIndex).fadeIn();
				// 위에서 구한 다음 이미지를 나타나게 함
				currentIndex = nextIndex;
				// 다음 이미지의 값을 현재로 
			}

			let timer = setInterval(showNextSlide, 1000);
			$(this).on('mouseover', function() {
				//타이머 취소
				clearInterval(timer);
			}).on('mouseout', function() {
				//타이머 시작
				timer = setInterval(showNextSlide, 1000);
			})
		})
	});

	// Slick Carousel
	$('.tm-slideshow').slick({
		infinite : true,
		arrows : true,
		slidesToShow : 1,
		slidesToScroll : 1
	});
</script>