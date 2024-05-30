<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">

<!-- import import -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>

<!-- 이미지로더 -->
<!-- <script src="http://mattstow.com/experiment/responsive-image-maps/jquery.rwdImageMaps.min.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.5.0/kakao.min.js" integrity="sha384-kYPsUbBPlktXsY6/oNHSUDZoTX6+YI51f63jCPEIPFP09ttByAdxd2mEjKuhdqn4" crossorigin="anonymous"></script>
 -->
<!-- <script src="https://t1.kakaocdn.net/kakao_js_sdk/2.5.0/kakao.min.js"
  integrity="sha384-kYPsUbBPlktXsY6/oNHSUDZoTX6+YI51f63jCPEIPFP09ttByAdxd2mEjKuhdqn4" crossorigin="anonymous"></script>	 -->
<!-- <script>
  Kakao.init('607caeca9f2a0089b46f99c667e0dee3'); // restapi
</script>  -->
<script>
  Kakao.init('2cc49f4ac1f17ec5d30cf1893fd98d05'); // js
</script>



<style>
img{
max-width: 100%;
}

</style>

<div class="tm-page-wrap mx-auto" style="margin-top: 180px">


	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 mx-auto tm-about-text-wrap text-center">
					<h2 class="text-uppercase mb-4">
						결제완료
					</h2>
					<p class="mb-2">${userid}님 의 결제가 완료되었습니다. </p>
					<!-- <p class="mb-2">결제하신 항공내역을 카카오톡으로 확인하시고 싶으시다면, 아래 <strong>'카카오톡 메세지 보내기'</strong> 버튼을 클릭하여 주세요.</p> -->
					<!-- 					<a href="#" class="text-uppercase btn-primary tm-btn">Continue
						explore</a> -->
						<div>
					
					<div class="form-row tm-search-form-row">
	                	<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<label for="userid">결제자</label> 
						</div>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<input name="userid" type="text" class="form-control" id="userid" value="${userid}" readonly="readonly">
						</div>
	                	<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<label for="userid">연락처(이메일)</label> 
						</div>
	                	<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<input name="email" type="text" class="form-control" id="email" value="${kvo.mail}" readonly="readonly">
						</div>
					</div>
					<div class="form-row tm-search-form-row"><label for="vo"></label> </div>
					<div class="form-row tm-search-form-row">
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<label for="vo">출발/도착</label> 
						</div>
							<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<input name="vo" type="text" class="form-control" id="vo" value="${vo.departure} &rarr;${vo.arrival}" readonly="readonly">
						</div>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<label for="depTime">출발시간</label> 
						</div>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<input name="depTime" type="text" class="form-control" id="depTime" value="${vo.deptime}" readonly="readonly">
						</div>
					</div>
					<div class="form-row tm-search-form-row"><label for="vo"></label> </div>
					<div class="form-row tm-search-form-row">
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<label for="seat">좌석정보</label> 
						</div>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<input name="seat" type="text" class="form-control" id="seat" value="${vo.seatid}" readonly="readonly">
						</div>
					
					
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<label for="total">총 금액</label> 
						</div>
						<div class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
							<input name="total" type="text" class="form-control" id="total" value=<fmt:formatNumber value="${point}" pattern="#,###" />원 readonly="readonly">
						</div>
					</div>
				

 					<div class="tm-search-form-row">
					<label for="total"></label> 
                		<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" id="send_kakao" onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=607caeca9f2a0089b46f99c667e0dee3&redirect_uri=http://192.168.0.19:8081/flight/oath&response_type=code&scope=talk_message'">카카오톡 메세지 보내기</button>
						<p id="token-result"></p>
					</div>	
					
					<div class="tm-search-form-row">
					<label for="total"></label> 
						<button type="button" class="btn btn-primary tm-btn tm-btn-search text-uppercase" onclick="location.href='/'">메인페이지</button>	
					</div>
				
						<p id="token-result"></p>
					</div>	
						</div>

				</div>
			</div>		
					
	</section>
		</div>

<!-- <script>
function sendToMe() {
	  console.log("dd");
    Kakao.API.request({
      url: '/v2/api/talk/memo/default/send',
      data: {
        template_object: {
          object_type: 'feed',
          content: {
            title: '딸기 치즈 케익',
            description: '#케익 #딸기 #삼평동 #카페 #분위기 #소개팅',
            image_url:
              'http://k.kakaocdn.net/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
            link: {
              // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
              mobile_web_url: 'http://192.168.0.19:8081/oath',
              web_url: 'http://192.168.0.19:8081/oath',
            },
          },
          social: {
            like_count: 286,
            comment_count: 45,
            shared_count: 845,
          },
          buttons: [
            {
              title: '웹으로 보기',
              link: {
                mobile_web_url: 'http://192.168.0.19:8081/oath',
                web_url: 'http://192.168.0.19:8081/oath',
              },
            },
            {
              title: '앱으로 보기',
              link: {
                mobile_web_url: 'http://192.168.0.19:8081/oath',
                web_url: 'http://192.168.0.19:8081/oath',
              },
            },
          ],
        },
      },
    })
      .then(function(res) {
        alert('success: ' + JSON.stringify(res));
      })
      .catch(function(err) {
        alert('error: ' + JSON.stringify(err));
      });
  }
$(document).ready(function(){
	console.log("ddd");

    	alert("dd");
  		
  		  function loginWithKakao() {
  		    Kakao.Auth.authorize({ //카카오 간편로그인 요청
  		      //redirectUri: https://developers.kakao.com/tool/demo/oauth',
  		      redirectUri: 'http://192.168.0.19:8081/oath',
  		      prompt: 'select_account',
  		      state: 'sendme_feed',
  		      scope: 'talk_message' // 앱 동의 항목 설정 및 사용자 동의 필요
  		    },success : function(authObj){
  		    	console.log(authObj);
  		    	Kakao.Auth.setAccessToken(authObj.access_tocken);
  		    },fail : function(err){
  		    	alert(err);
  		    })
  		  
  		  }

  		  function sendToMe() {
  			  console.log("dd");
  		    Kakao.API.request({
  		      url: '/v2/api/talk/memo/default/send',
  		      data: {
  		        template_object: {
  		          object_type: 'feed',
  		          content: {
  		            title: '딸기 치즈 케익',
  		            description: '#케익 #딸기 #삼평동 #카페 #분위기 #소개팅',
  		            image_url:
  		              'http://k.kakaocdn.net/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
  		            link: {
  		              // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
  		              mobile_web_url: 'http://192.168.0.19:8081/oath',
  		              web_url: 'http://192.168.0.19:8081/oath',
  		            },
  		          },
  		          social: {
  		            like_count: 286,
  		            comment_count: 45,
  		            shared_count: 845,
  		          },
  		          buttons: [
  		            {
  		              title: '웹으로 보기',
  		              link: {
  		                mobile_web_url: 'http://192.168.0.19:8081/oath',
  		                web_url: 'http://192.168.0.19:8081/oath',
  		              },
  		            },
  		            {
  		              title: '앱으로 보기',
  		              link: {
  		                mobile_web_url: 'http://192.168.0.19:8081/oath',
  		                web_url: 'http://192.168.0.19:8081/oath',
  		              },
  		            },
  		          ],
  		        },
  		      },
  		    })
  		      .then(function(res) {
  		        alert('success: ' + JSON.stringify(res));
  		      })
  		      .catch(function(err) {
  		        alert('error: ' + JSON.stringify(err));
  		      });
  		  }

  		  // 아래는 데모를 위한 UI 코드입니다.
  		  displayToken()
  		  function displayToken() {
  		    var token = getCookie('authorize-access-token');

  		    if(token) {
  		      Kakao.Auth.setAccessToken(token);
  		      document.querySelector('#token-result').innerText = 'login success, ready to send a message';
  		      document.querySelector('button.api-btn').style.visibility = 'visible';
  		    }
  		  }

  		  function getCookie(name) {
  		    var parts = document.cookie.split(name + '=');
  		    if (parts.length === 2) { return parts[1].split(';')[0]; }
  		  }
  		

        	

    });
</script> -->
<%@ include file="../includes/footer.jsp"%>