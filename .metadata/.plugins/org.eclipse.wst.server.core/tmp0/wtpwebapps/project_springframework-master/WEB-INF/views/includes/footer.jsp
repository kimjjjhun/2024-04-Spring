<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<footer class="tm-container-outer">
	<p class="mb-0">
		주식회사 카카오에어라인&nbsp;
		 |&nbsp; 대표 : 플라잉 라이언 &nbsp;|&nbsp; 주소 : 제주특별자치도 제주시 첨단로 242(63309)
	</p>
	<p class="mb-0">
		 사업자등록번호 : 110-81-14794 &nbsp;| &nbsp;통신판매업신고 : 강서 제 16-3010 &nbsp;|&nbsp; 개인정보보호책임자 : 춘식이 카카오에어라인 부사장
	</p>
	<p class="mb-0">
		© 2023-2023 Kakao airline
	</p>

<!-- 	<p class="mb-0">
		Copyright © <span class="tm-current-year">2018</span> Your Company .
		Designed by <a rel="nofollow" href="http://www.google.com/+templatemo"
			target="_parent">Template Mo</a>
	</p> -->
</footer>
</div>
<!-- .main-content -->

<!-- load JS files -->
<script src="../resources/js/jquery-1.11.3.min.js"></script>
<!-- jQuery (https://jquery.com/download/) -->
<script src="../resources/js/popper.min.js"></script>
<!-- https://popper.js.org/ -->
<script src="../resources/js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script src="../resources/js/datepicker.min.js"></script>
<!-- https://github.com/qodesmith/datepicker -->
<script src="../resources/js/jquery.singlePageNav.min.js"></script>
<!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->
<script src="../resources/slick/slick.min.js"></script>
<!-- http://kenwheeler.github.io/slick/ -->
<script src="../resources/js/jquery.scrollTo.min.js"></script>
<!-- https://github.com/flesler/jquery.scrollTo -->


<!-- HEADER 부분 스크립트 -->
<!-- JS here -->
<script src="../resources/js/vendor/modernizr-3.5.0.min.js"></script>
<script src="../resources/js/vendor/jquery-1.12.4.min.js"></script>
<script src="../resources/js/popper.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/owl.carousel.min.js"></script>
<script src="../resources/js/isotope.pkgd.min.js"></script>
<script src="../resources/js/ajax-form.js"></script>
<script src="../resources/js/waypoints.min.js"></script>
<script src="../resources/js/jquery.counterup.min.js"></script>
<script src="../resources/js/imagesloaded.pkgd.min.js"></script>
<script src="../resources/js/scrollIt.js"></script>
<script src="../resources/js/jquery.scrollUp.min.js"></script>
<script src="../resources/js/wow.min.js"></script>
<script src="../resources/js/nice-select.min.js"></script>
<script src="../resources/js/jquery.slicknav.min.js"></script>
<script src="../resources/js/jquery.magnific-popup.min.js"></script>
<script src="../resources/js/plugins.js"></script>
<script src="../resources/js/gijgo.min.js"></script>

<!--contact js-->
<script src="../resources/js/contact.js"></script>
<script src="../resources/js/jquery.ajaxchimp.min.js"></script>
<script src="../resources/js/jquery.form.js




"></script>
<script src="../resources/js/jquery.validate.min.js"></script>
<script src="../resources/js/mail-script.js"></script>

<script src="../resources/js/main.js"></script>
<script>
	$('#datepicker').datepicker({
		iconsLibrary : 'fontawesome',
		icons : {
			rightIcon : '<span class="fa fa-caret-down"></span>'
		}
	});
	$('#datepicker2').datepicker({
		iconsLibrary : 'fontawesome',
		icons : {
			rightIcon : '<span class="fa fa-caret-down"></span>'
		}

	});
</script>




<script>
	/* Google Maps
	------------------------------------------------*/
	var map = '';
	var center;

	function initialize() {
		var mapOptions = {
			zoom : 16,
			center : new google.maps.LatLng(37.769725, -122.462154),
			scrollwheel : false
		};

		map = new google.maps.Map(document.getElementById('google-map'),
				mapOptions);

		google.maps.event.addDomListener(map, 'idle', function() {
			calculateCenter();
		});

		google.maps.event.addDomListener(window, 'resize', function() {
			map.setCenter(center);
		});
	}

	function calculateCenter() {
		center = map.getCenter();
	}

	function loadGoogleMap() {
		var script = document.createElement('script');
		script.type = 'text/javascript';
		script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDVWt4rJfibfsEDvcuaChUaZRS5NXey1Cs&v=3.exp&sensor=false&'
				+ 'callback=initialize';
		document.body.appendChild(script);
	}

	/* DOM is ready
	------------------------------------------------*/
	$(function() {

		// Change top navbar on scroll
		$(window).on("scroll", function() {
			if ($(window).scrollTop() > 100) {
				$(".tm-top-bar").addClass("active");
			} else {
				$(".tm-top-bar").removeClass("active");
			}
		});

		// Smooth scroll to search form
		$('.tm-down-arrow-link').click(function() {
			$.scrollTo('#tm-section-search', 300, {
				easing : 'linear'
			});
		});

		// Date Picker in Search form
		var pickerCheckIn = datepicker('#inputCheckIn');
		var pickerCheckOut = datepicker('#inputCheckOut');

		// Update nav links on scroll
		$('#tm-top-bar').singlePageNav({
			currentClass : 'active',
			offset : 60
		});

		// Close navbar after clicked
		$('.nav-link').click(function() {
			$('#mainNav').removeClass('show');
		});

		// Slick Carousel
		$('.tm-slideshow').slick({
			infinite : true,
			arrows : true,
			slidesToShow : 1,
			slidesToScroll : 1
		});

		loadGoogleMap(); // Google Map                
		$('.tm-current-year').text(new Date().getFullYear()); // Update year in copyright           
	});
</script>

</body>
</html>