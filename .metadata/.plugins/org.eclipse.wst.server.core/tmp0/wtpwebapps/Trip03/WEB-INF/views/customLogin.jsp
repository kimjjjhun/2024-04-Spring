<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/login.css">
<%@include file="includes/header1.jsp"%>
</head>
<body>
	<div class="login-page">
		<div class="form" id="customLogin">
			<form class="register-form" action="/member/register" method="post">
			<label id="label1"></label>
				<input type="text" name="member_email" id="id"
					placeholder="이메일을 입력해주세요" />
				<button type="button" class="emailBtn" id="mail-Check-Btn">본인인증</button>
				<div class="mail-check-box">
					<input class="form-control mail-check-input"
						placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
					<span id="mail-check-warn"></span>
				</div>
				<input type="text" name="name" placeholder="이름을 입력해주세요">
				<input type="password" name="pwd" placeholder="비밀번호를 입력해주세요" /> 
				<input type="password" name="pwd-repeat" placeholder="비밀번호를 재입력해주세요" /> <input
					type="text" name="phone" placeholder="전화번호를 입력해주세요" />
				<div class="checkboxDiv">
					<div>
						<input type="checkbox" name="agree_all" id="agree_all"> <label
							for="agree_all">모두 동의합니다</label>
					</div>
					<div class="striped">
						<span class="striped-line"></span> 
						<span class="striped-line"></span>
					</div>
					<div>
						<input type="checkbox" name="agree" value="1" id="check_1">
						<label for="agree"> 이용약관 동의<strong>(필수)</strong>
						</label>
					</div>
					<div>
						<label for="agree">개인정보 수집, 이용 동의<strong>(필수)</strong></label> 
					 	<input type="checkbox" name="agree" value="2" id="check_2">
					</div>
					
					<div>
						<input type="checkbox" name="agree" value="3" id="check_3"> 
						<label for="agree">
						 	<span>개인정보 이용 동의<strong>(필수)</strong></span>
						</label> 
					</div>
					
					<div>
						 <input type="checkbox" name="agree" value="4"> 
						<label for="agree">이벤트, 혜택정보 수신동의<strong class="select_disable">(선택)</strong></label>
					</div>
				</div>
				<button id="registerBtn">회원가입</button>
				<p class="message">
					이미 회원이신가요? <a href="#">로그인 </a>
				</p>
			</form>
			<form class="login-form" action="/login" method="post">
			<div class="error">
			${error}
		</div>
				<input type="text" name="username" placeholder="이메일을 입력해주세요" /> <input
					type="password" name="password" placeholder="비밀번호를 입력해주세요" />
				<p class="info">
					<a href="/member/findid" class="id">아이디,</a><a
						href="/member/findpwd">비밀번호를 잊으셨나요?</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</p>
				
				<div class="checkboxDiv2">
				자동 로그인
				<input type="checkbox" checked="checked" name="remember-me">
				</div>
				<button id="loginBtn" style="margin-top:15px;">로그인</button>
				<p class="message">
					아직 회원이 아니세요? <a href="#">이메일 회원 가입</a>
				</p>
				<div class="striped">
					<span class="striped-line"></span> <span class="striped-text">or</span>
					<span class="striped-line"></span>
				</div>
				<h4 class="text-xs text-center text-gray-500">SNS 간편 로그인</h4>
				<a
					href="https://kauth.kakao.com/oauth/authorize?client_id=3334abd3f2359d5a2d50f1d20357c04f&redirect_uri=http://localhost:8181/login/kakao&response_type=code">
					<img src="/resources/images/카카오로그인.jpg" alt="카카오톡" class="image">
				</a>
				<button type="button" onclick="location.href='https://kauth.kakao.com/oauth/logout?client_id=3334abd3f2359d5a2d50f1d20357c04f&logout_redirect_uri=http://localhost:8181/login/kakaoLogout'">카카오 로그아웃</button>
			</form>
		</div>
	</div>
	<form id="form-kakao-login" method="post" action="kakao-login">
		<input type="hidden" name="member_email" /> <input type="hidden"
			name="name" /> <input type="hidden" name="profile" />
	</form>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
      $(document).ready(function(){
         
         $('.message a').click(function(){
        	   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
        	});
         $("#loginBtn").on("click",function(){
				
				if($("input[name='username']").val()===""){
					alert("이메일을 입력하세요");
					return false;
				}
				else if($("input[name='password']").val()===""){
					alert("비밀번호를 입력하세요");
					return false;
				}
				return;
				
			})
			
			$("#registerBtn").on("click",function(){    
	             if($("#check_1").is(":checked") == false){
	                 alert("모든 필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다");
	                 return;
	             }if($("#check_2").is(":checked") == false){
	                 alert("모든 필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다");
	                 return;
	             }if($("#check_3").is(":checked") == false){
	                 alert("모든 필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
	                 return;
	             }else{
	                 window.location.href = '/member/register';
	             }
	         });    
	 
	    	
	    	const agreeChkAll = document.querySelector('input[name=agree_all]');
	        agreeChkAll.addEventListener('change', (e) => {
	        let agreeChk = document.querySelectorAll('input[name=agree]');
	        for(let i = 0; i < agreeChk.length; i++){
	          agreeChk[i].checked = e.target.checked;
	        }
	    });
	        
	        
	        $("#registerBtn").on("click",function(){
				var joinForm = $(".register-form");
				
				
				if(!joinForm.find("input[name='member_email']").val()){
					alert("이메일을 입력하세요");
					return false;
				}
				 
				 if(!joinForm.find("#emailCheckBtn")){
						alert("이메일을 입력하세요");
						return false;
					}
				if(!joinForm.find("input[name='pwd']").val()){
						alert("비밀번호를 입력하세요");
						return false;
					}
				if(joinForm.find("input[name='pwd']").val().length < 8){
					alert("비밀번호는 8자리 이상으로 설정해야 합니다")
					return false;
				}
				if(joinForm.find("input[name='pwd']").val() != joinForm.find("input[name='pwd-repeat']").val()){
					alert("비밀번호가 일치하지 않습니다")
					return false;
				}
				if(joinForm.find("input[name='name']").val()===""){
					alert("이름을 입력해주세요")
					return false;
				}
				if(joinForm.find("input[name='phone']").val()===""){
					alert("휴대폰 번호를 입력해주세요")
					return false;
				}
				if($(".mail-check-input").val()===""){
					alert("이메일 인증을 먼저 진행해주세요!")
					return false;
				}
				alert("회원가입이 완료되었습니다!");
				return;
				
			})
			
	$("#id").on("focusout", function() {
	    		
	    		var id = $("#id").val();
	    		
	    		if(id === ''|| id.length === 0) {
	    			$("#label1").css("color", "red").text("공백은 ID로 사용할 수 없습니다.");
	    			return false;
	    		}
	    		
	    		function email_check(id) {
	    			var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	    			return reg.test(id);
	    		}
	    		
				if(!email_check(id)){
					$("#label1").css("color", "red").text("이메일 형식이 올바르지 않습니다.");
					return false;
				}
				
	    		
	        	//Ajax로 전송
	        	$.ajax({
	        		url : '/ConfirmId',
	        		data : {
	        			id : id
	        		},
	        		type : 'post',
	        		dataType : 'json',
	        		success : function(result) {
	        			if (result === true) {
	        				$("#label1").css("color", "green").text("사용 가능한 ID 입니다.");
	        			} else{
	        				$("#label1").css("color", "red").text("이미 존재하는 ID 입니다.");
	        				$("#id").val('');
	        			}
	        		}
	        	}); //End Ajax
	    	});
			
			$('#mail-Check-Btn').on("click",function() {
				var email = $('#id').val(); // 이메일 주소값 얻어오기!
				console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
				var checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
				
				$.ajax({
					type : 'post',
					url : '/mailCheck', // GET방식이라 Url 뒤에 email을 뭍힐수있다.,
					data :{ email : email},
					dataType : 'json',
					success : function (result) {
						console.log("result : " +  result);
						checkInput.attr('disabled',false);
						code =result;
						if(email !== ""){
						alert('인증번호가 전송되었습니다.')
						}else{
							alert('이메일을 입력해주세요')
							return false
						}
					}			
				}); // end ajax
			}); // end send eamil
			
			$(".mail-check-input").on("focusout", function() {
		    	var inputCode = $(".mail-check-input").val(); //인증번호 입력 칸에 작성한 내용 가져오기
		    	
		    	console.log("입력코드 : " + inputCode);
		    	console.log("인증코드 : " + code);
		    		
		    	if(Number(inputCode) === code){
		        	$("#mail-check-warn").html('인증번호가 일치합니다.');
		        	$("#mail-check-warn").css('color', 'green');
		    		$('#mail-Check-Btn').attr('disabled', true);
		    		$('#id').attr('readonly', true);
		    		$(".signupbtn").attr("disabled", false);
		    	}else{
		        	$("#mail-check-warn").html('인증번호가 불일치 합니다. 다시 확인해주세요!');
		        	$("#mail-check-warn").css('color', 'red');
		        	$(".signupbtn").attr("disabled", true);
		    	}
		    });
         
      })   
      
   
   </script>
</html>