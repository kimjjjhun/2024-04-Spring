<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/login.css">
<%@include file="../includes/header1.jsp"%>
</head>
<body>
	<div class="login-page">
		<div class="form" id="customLogin">
			<form class="login-form" action="/login/kakao" method="post">
				<input type="text" name="member_email" id="id" placeholder="이메일을 입력해주세요" value="${email }" readonly="readonly"/>
				<input type="text" name="name" placeholder="이름을 입력해주세요" value="${name }" readonly="readonly">
				<input type="text" name="phone" placeholder="휴대폰 번호를 입력해주세요." />
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
		</div>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
      $(document).ready(function(){
         
    	  $("#registerBtn").on("click",function(){
  			var joinForm = $(".login-form");
  			
  			
  			if(joinForm.find("input[name='phone']").val()===""){
  				alert("휴대폰 번호를 입력해주세요")
  				return false;
  			}if($("#check_1").is(":checked") == false){
                 alert("모든 필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다");
                 return false;
             }if($("#check_2").is(":checked") == false){
                 alert("모든 필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다");
                 return false;
             }if($("#check_3").is(":checked") == false){
                 alert("모든 필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                 return false;
             }
  			alert("회원가입이 완료되었습니다!");
  			return;
	    });
  			
	    	const agreeChkAll = document.querySelector('input[name=agree_all]');
	        agreeChkAll.addEventListener('change', (e) => {
	        let agreeChk = document.querySelectorAll('input[name=agree]');
	        for(let i = 0; i < agreeChk.length; i++){
	          agreeChk[i].checked = e.target.checked;
	        }
	        })
      })
   </script>
</html>