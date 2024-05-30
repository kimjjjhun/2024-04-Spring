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
		 <form action="/member/findid" method="post">
			<div class="error">
			${error}
			<div>
			<h1 style="margin-bottom:25px; font-size:25px; font-weight:bold;">아이디 찾기</h1>
			</div>
		</div>
				<input type="text"  id="name" name="name" placeholder="이름을 입력해주세요" />
				<input type="text" id="phone" name="phone" placeholder="휴대폰 번호를 입력해주세요" />
				<button type="button" class="emailBtn" id="phone-Check-Btn">본인인증</button>
				<div class="mail-check-box">
					<input class="form-control mail-check-input" placeholder="인증번호 네 자리를 입력해주세요!" disabled="disabled" maxlength="4">
					<button type="button"class="emailBtn" id="phone2">인증하기</button>
					<span id="mail-check-warn"></span>
					</div> 
			
				<button type="submit" id="submitBtn" style="border-radius:5px; margin-top:15px;" >아이디 찾기</button>
				<p class="message">
					아직 회원이 아니세요? <a href="#">이메일 회원 가입</a>
				</p>
					<p class="info">
					<a href="/member/findpwd" class="id">비밀번호를 잊으셨나요?</a>
				</p>
			</form>
		</div>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#phone-Check-Btn").on("click",function(){
		    var phone = $("#phone").val();
		    var checkInput = $('.mail-check-input');
		    $.ajax({
		        type:"POST", // post 형식으로 발송
		        url:"/member/checkPhone", // controller 위치
		        data: {phone:phone, name : name}, // 전송할 ㅔ이터값
		        cache : false,
		        success:function(data){
		        	/* console.log("----------휴대폰------------------")
		        	console.log(data) */
		            if(data == "error"){ //실패시 
		                alert("휴대폰 번호가 올바르지 않습니다.")
		            }else{            //성공시        
		                alert("인증번호가 전송되었습니다.");
		                code2 = data; // 성공하면 데이터저장
		                checkInput.attr("disabled",false);
		            }
		        }
		        
		    });
		});
		
		$("#phone2").on("click",function(){
		      if($(".mail-check-input").val() == code2){ // 위에서 저장한값을 ㅣ교함
		           alert('인증성공')
		      }else{
		          alert('인증실패')
		      }
		  });
		
		$("#submitBtn").on("click",function(){
			console.log("----------진입 -----------------")
			
			if($(".mail-check-input").val()===""){
				alert("휴대폰 인증을 먼저 진행해주세요!");
				return false;				
			};
			return;
		})
	})
</script>
      
   
</html>