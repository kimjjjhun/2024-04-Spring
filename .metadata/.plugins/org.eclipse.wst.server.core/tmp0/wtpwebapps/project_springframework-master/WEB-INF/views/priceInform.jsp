<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="includes/header2.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/slick/slick-theme.css" />
<link rel="stylesheet" href="/resources/css/templatemo-style.css">
<!-- <link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/css/searchbar.css">

<script>
	$(document).ready(function() {

		$("#priceInform").on("click", function(e) {
			e.preventDefault();
			$(".priceInform").show();
			$(".discountPolicy").hide();
		});

		$("#discountPolicy").on("click", function(e) {
			e.preventDefault();
			$(".priceInform").hide();
			$(".discountPolicy").show();
		});
	});
</script>

<title>게시판</title>
<style>
h2 {
	font-weight: border;
}

.hr1 {
	border: 0;
	height: 2px;
	background: #d3d3d3;
}

.grey {
	color: #727272;
}

#strong {
	font-weight: 900;
}

table {
	width: 100%;
	border: none;
	border-collapse: collapse;
}

th {
	background-color: #FFC107;
	border-top: 3px solid #727272;
}

th, td {
	border-bottom: 1px solid #d3d3d3;
	padding: 10px;
	text-align : center;
}

tr:hover {
	background-color: #F5F5F5;
}

body {
	width: 1400px;
	margin: 0 auto;
	margin-top: 200px;
	/* background-color: #EFEFEF; */
}

.greylist {
	width: 50px;
	height: 30px;
	font-weight: 900;
	color: white;
	text-align: center;
	background: grey;
	border: solid 2px white;
	border-radius: 5px;
}

.gradient {
	width: 80px;
	height: 30px;
	font-weight: 900;
	color: white;
	text-align: center;
	background: #FFC107;
	border: solid 2px white;
	border-radius: 5px;
}

.left {
	text-align: left;
}

.right {
	float: right;
}

.center {
	text-align: center;
}

a {
	color: black;
	text-decoration-line: none;
}




/* 미디어 쿼리를 사용하여 반응형 디자인 적용 */
@media only screen and (max-width: 768px) {
	body {
		width: 90%;
	}
}

hr {
	border-top: 5px solid #FFC107;
	padding-top: 30px;
	margin-top: -2px;
}

.button {
	border: none;
	border-left: 5px solid #FFC107;
	border-top: 5px solid #FFC107;
	border-right: 5px solid #FFC107;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom: 5px solid #FFC107;
	border-bottom-width: 100%;
	background-color: #FFC107;
}

.button:hover {
	box-shadow: 0 0 50px rgba(0, 0, 0, 0.3);
	transition: box-shadow 0.3s ease-in-out;
}
</style>
</head>
<body>
<div class="p-5 tm-container-outer tm-bg-gray" style="max-width: 1400px; margin: 0 auto; ">

	<button type="button" class="button" id="priceInform"
		name="priceInform">항공 운임 정책</button>
	<button type="button" class="button" id="discountPolicy"
		name="discountPolicy">항공 할인 정책</button>
	<hr>

<div class="priceInform">
<h2 style="text-align:center;">항공 운임 정책</h2><br><br>
항공권 가격<br>
<label for="depname">출발지:</label>
<select id="depname" onchange="updateDestinationOptions()">
  <option value="---">---</option>
  <option value="인천">인천</option>
  <option value="제주">제주</option>
  <option value="광주">광주</option>
  <option value="김포">김포</option>
  <option value="대구">대구</option>
  <option value="여수">여수</option>
  <option value="나고야">나고야</option>
  <option value="난징">난징</option>
  <option value="뉴욕">뉴욕</option>
  <option value="다낭">다낭</option>
  <option value="델리">델리</option>
  <option value="도쿄/나리타">도쿄/나리타</option>
  <option value="런던히드로">런던히드로</option>
  <option value="로마">로마</option>
  <option value="마닐라">마닐라</option>
  <option value="미야자키">미야자키</option>
  <option value="바르셀로나">바르셀로나</option>
  <option value="방콕">방콕</option>
  <option value="베이징">베이징</option>
  <option value="삿포로">삿포로</option>
  <option value="시드니">시드니</option>
  <option value="싱가포르">싱가포르</option>
  <option value="알마티">알마티</option>
  <option value="옌지">옌지</option>
  <option value="오사카">오사카</option>
  <option value="오키나와">오키나와</option>
 
</select>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<label for="arrname">도착지:</label>
<select id="arrname">
</select>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<label for="price">이코노미석 가격:</label>
<input style="border:none; background:#EFEFEF; width: 80px; text-align:right;" type="text" id="price" readonly>원 <br>
*비즈니스석 : 이코노미석의 1.5배&nbsp;&nbsp;&nbsp;/일등석 : 이코노미석의 2배
<hr>

<div>
<h5>항공권변경</h5>
항공권의 변경은 구매 항공권의 운임 규정 및 구입처에 따라 적용 규정이 다를 수 있으므로 해당 구입처로 문의하여 주시기 바랍니다.<br>
해외발 항공권의 경우 판매 지역과의 운임계산 내역 확인이 필요하므로 2~3일의 소요기간(시차 감안)이 필요합니다.<br>
항공권의 변경이 가능한 경우에는 운임 규정에 따라 운임 차액 및 세금차액, 수수료가 발생될 수 있습니다. 정확한 안내를 위하여 해당 구입처로 문의하여 주시기 바랍니다.<br>
<hr>
<h5>항공권 환불/취소 안내</h5>
항공권 환불/취소는 구입처에 따라 규정이 다를 수 있으므로 구입하신 구입처로 문의하시기 바랍니다.<br>
국내선 환불 신청 기한은 항공권 유효기간 만료일 이내입니다. (2016년 8월 1일 발권분부터 적용)<br>
국제선 환불 신청 기한은 항공권 유효기간 만료일로부터 30일 이내입니다. (2016년 5월 20일 발권분부터 적용)<br>
환불 신청 시, 항공권 명의인이 신청해야 하며 대리인이 신청할 경우에는 추가 서류가 발생 할 수 있으니 구입하신 발행처로 문의하시기 바랍니다.<br>
한국발 국제선 전체미사용 항공권의 경우 환불 접수시점에 따라 환불 위약금이 차등 부과됩니다.<br>
<hr>

<h5>환불 위약금 안내</h5>
<table>
	<tr>
	<th>노선 구분</th>
	<th>~91 이전</th>
	<th>90~61일 이전</th>
	<th>60~41일 이전</th>
	<th>40~21일 이전</th>
	<th>20~11일 이전</th>
	<th>10일 이내~</th>
	<th>시점 무관</th>
	</tr>
	<tr>
		<td>단거리</td>
		<td>없음</td>
		<td>3만원</td>
		<td>3만원</td>
		<td>5만원</td>
		<td>7만원</td>
		<td>9만원</td>
		<td>5만원</td>
	</tr>
	<tr>
		<td>중거리</td>
		<td>없음</td>
		<td>3만원</td>
		<td>5만원</td>
		<td>8만원</td>
		<td>10만원</td>
		<td>13만원</td>
		<td>10만원</td>
	</tr>
	<tr>
		<td>장거리</td>
		<td>없음</td>
		<td>3만원</td>
		<td>11만원</td>
		<td>15만원</td>
		<td>18만원</td>
		<td>21만원</td>
		<td>15만원</td>
	</tr>
</table>
<span style="color:#FFC107">
※ 노선 구분 :<br>
<b>단거리</b> : 일본, 중국, 홍콩, 타이베이, 가오슝, 울란바타르<br>
<b>중거리</b> : 동남아(홍콩, 타이베이, 가오슝 제외), 알마티, 타슈켄트, 사이판, 팔라우<br>
<b>장거리</b> : 미주, 유럽, 대양주(시드니)<br>
</span> 
<hr>
출발 91일 이전에 접수되는 전체 미사용 항공권의 환불위약금 및 환불 서비스 수수료가 면제됩니다.<br>
출발 7일 이전 구매 후, 구매시점으로부터 24시간 이내 환불 접수된 항공권의 환불 위약금 및 환불 서비스 수수료가 면제 됩니다.<br>
(단, 당사 온라인플랫폼 직판 발권 분 한정)<br>
부분 사용한 항공권의 경우 사용 구간의 운임과 부분사용 환불 위약금이 공제됩니다.(부분환불 위약금 별도 확인)<br>
두 가지 이상의 운임종류가 결합된 항공권의 경우 적용된 항공운임 및 여정의 구성에 따라 상이한 환불 위약금이 적용될 수 있습니다.<br>
전체 미사용 항공권의 환불시는 환불 접수 시점 별 환불 위약금이 차등 적용되며, 항공권이 재발행된 경우는 최초 발행 항공권 및 재발행된 항공권의 부분환불 위약금 중 높은 위약금이 적용됩니다.<br>
유/소아 운임에 할인이 적용된 경우 환불 위약금에 동일한 할인율이 적용됩니다.<br>
보너스항공권, 단체 항공권, 특가항공권은 자체의 별도 규정이 적용됩니다.<br>
</div>
</div>


<div class="discountPolicy" style="display:none;" >
	<h2 style="text-align:center;">유/소아 동반고객</h2><br><br>
	
	<b>
	유/소아를 동반하실 때, 안심하고 여행할 수 있도록 안내 드립니다.<br>
	특히, 생후 7일 ~ 만 2세 미만 유아를 동반하는 항공 여행을 준비하실 때는 아래 내용을 확인해 주시기 바랍니다.<br>
	<br>
	</b>
	<hr>
	
	<h5>유아 항공 요금</h5>
	<b>유아 나이 기준 : 생후 7일 ~ 만 2세 미만</b><br>
	국내선은 <b>무료</b>이며, 국제선은 <b>성인 통상운임의 10%</b> 입니다.<br>
	유아는 별도의 좌석이 제공되지 않습니다. (단, 소아 운임을 지불하신 경우는 좌석이 제공됩니다)<br>
	승객 한 분이 2명의 유아를 동반하실 경우, 1명의 유아는 소아 항공권을 구매해야 하며, 소아운임이 적용된 유아에게는 좌석이 제공됩니다.<br>
	<hr>
	
	<h5>신생아(생후 1주 미만) 동반 고객</h5>
	건강하게 태어난 신생아일지라도 체온 조절이 불안정하고 폐 기능의 미성숙 등 신체발달이 아직 미흡하기 때문에 지상과는 다른 기내환경에 적응하기가 어렵습니다.<br>
	따라서 생후 1주일 미만의 신생아는 가급적 항공여행에 동반하지 않는 것이 좋으며, 부득이하게 여행을 해야 할 경우에는 당사의 사전 승인절차 (Medical Clearance)가 필요합니다.<br>
	<hr>
	
	<h5>사전 예약이 필요한 서비스</h5>
	<table>
		<tr>
			<th></th>
			<th>유아용 기내식</th>
		</tr>
		<tr>
			<td>서비스 내용</td>
			<td>연령 및 성장 정도에 맞는 아기의 기내식을 항공기 출발 24시간 전까지 신청 가능</td>
		</tr>
		<tr>
			<td>이용 대상</td>
			<td>만 2세 미만 유아 고객(국제선)</td>
		</tr>
		<tr>
			<td>유아식 종류	</td>
			<td>유아식(BABY MEAL), 이유식(TODDLER MEAL), 어린이기내식(CHILD MEAL)</td>
		</tr>
		<tr>
			<td>신청방법</td>
      
			<td>카카오항공 예약센터로 항공편 출발 24시간 전까지 신청<br>

			<b>* 이유식은 인천 출발편만 가능</b></td>
		</tr>
	</table>
	<br><br>
	
</div>
</div>

<script>
const flightOptions = [
  { depname: '---', arrname: '---', price: 0 },
  { depname: '광주', arrname: '김포', price: 80300 },
  { depname: '광주', arrname: '제주', price: 77300 },
  { depname: '김포', arrname: '광주', price: 104300 },
  { depname: '김포', arrname: '여수', price: 91300 },
  { depname: '김포', arrname: '오사카', price: 352300 },
  { depname: '김포', arrname: '제주', price: 107300 },
  { depname: '김포', arrname: '하네다', price: 410000 },
  { depname: '나고야', arrname: '인천', price: 363500 },
  { depname: '난징', arrname: '인천', price: 411600 },
  { depname: '뉴욕', arrname: '인천', price: 1931000 },
  { depname: '다낭', arrname: '인천', price: 539000 },
  { depname: '대구', arrname: '제주', price: 120300 },
  { depname: '델리', arrname: '인천', price: 874400 },
  { depname: '도쿄/나리타', arrname: '인천', price: 353900 },
  { depname: '런던히드로', arrname: '인천', price: 2093800 },
  { depname: '로마', arrname: '인천', price: 1741800 },
  { depname: '마닐라', arrname: '인천', price: 432900 },
  { depname: '미야자키', arrname: '인천', price: 311000 },
  { depname: '바르셀로나', arrname: '인천', price: 1537000 },
  { depname: '방콕', arrname: '인천', price: 739100 },
  { depname: '베이징', arrname: '인천', price: 358300 },
  { depname: '삿포로', arrname: '인천', price: 476300 },
  { depname: '시드니', arrname: '인천', price: 1238000 },
  { depname: '싱가포르', arrname: '인천', price: 784500 },
  { depname: '알마티', arrname: '인천', price: 819800 },
  { depname: '여수', arrname: '김포', price: 115300 },
  { depname: '여수', arrname: '제주', price: 99300 },
  { depname: '옌지', arrname: '인천', price: 328500 },
  { depname: '오사카', arrname: '김포', price: 360000 },
  { depname: '오사카', arrname: '인천', price: 360000 },
  { depname: '오키나와', arrname: '인천', price: 430000 },
  { depname: '울란바타르', arrname: '인천', price: 433400 },
  { depname: '이스탄불', arrname: '인천', price: 1195000 },
  { depname: '인천', arrname: '나고야', price: 377900 },
  { depname: '인천', arrname: '난징', price: 423400 },
  { depname: '인천', arrname: '뉴욕', price: 1968000 },
  { depname: '인천', arrname: '런던히드로', price: 1891800 },
  { depname: '인천', arrname: '로마', price: 1716800 },
  { depname: '인천', arrname: '델리', price: 724200 },
  { depname: '인천', arrname: '도쿄/나리타', price: 410100 },
  { depname: '인천', arrname: '로스앤젤레스', price: 1558000 },
  { depname: '인천', arrname: '마닐라', price: 448000 },
  { depname: '인천', arrname: '미야자키', price: 330000 },
  { depname: '인천', arrname: '방콕', price: 741300 },
  { depname: '인천', arrname: '베이징', price: 370100 },
  { depname: '인천', arrname: '삿포로', price: 426700 },
  { depname: '인천', arrname: '샌프란시스코', price: 1508000 },
  { depname: '인천', arrname: '시드니', price: 1215400 },
  { depname: '인천', arrname: '시애틀', price: 1509500 },
  { depname: '인천', arrname: '싱가포르', price: 764800 },
  { depname: '인천', arrname: '알마티', price: 838100 },
  { depname: '인천', arrname: '옌지', price: 340300 },
  { depname: '인천', arrname: '오사카', price: 352300 },
  { depname: '인천', arrname: '오키나와', price: 440600 },
  { depname: '인천', arrname: '울란바타르', price: 422900 },
  { depname: '인천', arrname: '자카르타', price: 696200 },
  { depname: '인천', arrname: '창춘', price: 462200 },
  { depname: '인천', arrname: '청두', price: 347800 },
  { depname: '인천', arrname: '제주', price: 99300 },
  { depname: '인천', arrname: '타슈켄트', price: 720200 },
  { depname: '인천', arrname: '파리', price: 1716800 },
  { depname: '인천', arrname: '상하이/푸동', price: 360100 },
  { depname: '인천', arrname: '프놈펜', price: 778500 },
  { depname: '인천', arrname: '프랑크푸르트', price: 1891800 },
  { depname: '인천', arrname: '하네다', price: 416500 },
  { depname: '인천', arrname: '하노이', price: 540500 },
  { depname: '인천', arrname: '하얼빈', price: 368300 },
  { depname: '인천', arrname: '상하이/푸동', price: 348300 },
  { depname: '인천', arrname: '항저우', price: 394100 },
  { depname: '인천', arrname: '호찌민', price: 545700 },
  { depname: '인천', arrname: '홍콩', price: 430500 },
  { depname: '인천', arrname: '후쿠오카', price: 267900 },
  { depname: '인천', arrname: '푸껫', price: 759000 },
  { depname: '푸껫', arrname: '인천', price: 735500 },
  { depname: '선전', arrname: '인천', price: 458400 },
  { depname: '인천', arrname: '선전', price: 433000 },
  { depname: '사이판', arrname: '인천', price: 415000 },
  { depname: '인천', arrname: '사이판', price: 389000 },
  { depname: '제주', arrname: '김포', price: 138300 },
  { depname: '제주', arrname: '대구', price: 92300 },
  { depname: '제주', arrname: '여수', price: 78300 },
  { depname: '제주', arrname: '청주', price: 94300 },
];

		document.getElementById('depname').addEventListener('change', updateDestinationOptions);
		document.getElementById('arrname').addEventListener('change', updatePrice);
		
		function updateDestinationOptions() {
		  const departureSelect = document.getElementById('depname');
		  const destinationSelect = document.getElementById('arrname');
		  const priceInput = document.getElementById('price');
		  const selectedDeparture = departureSelect.value;
		
		  while (destinationSelect.options.length > 0) {
		    destinationSelect.remove(0);
		  }
		
		  const destinations = flightOptions
		    .filter(option => option.depname === selectedDeparture)
		    .map(option => option.arrname);
		
		  destinations.forEach(destination => {
		    const option = document.createElement('option');
		    option.text = destination;
		    option.value = destination;
		    destinationSelect.add(option);
		  });
		
		  updatePrice();  // 출발지 또는 목적지가 변경될 때마다 가격 업데이트
		}
		
		function updatePrice() {
		  const departureSelect = document.getElementById('depname');
		  const destinationSelect = document.getElementById('arrname');
		  const priceInput = document.getElementById('price');
		  const selectedDeparture = departureSelect.value;
		  const selectedDestination = destinationSelect.value;
		
		  const selectedOption = flightOptions.find(option => option.depname === selectedDeparture && option.arrname === selectedDestination);
		  if (selectedOption) {
		    priceInput.value = selectedOption.price;
			
		  } else {
		    priceInput.value = '';
		  }
		}
		
		window.onload = function () {
		  updateDestinationOptions();
		};
</script>
	<%@ include file="includes/footer.jsp"%>

</body>
</html>