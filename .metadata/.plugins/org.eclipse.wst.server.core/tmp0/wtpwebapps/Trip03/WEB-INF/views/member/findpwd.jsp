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
		<form action="/member/findpwd" method="post" id="findpwdForm">
			<div class="error">
			${error}
			<div>
			<h1 style="margin-bottom:25px; font-size:25px; font-weight:bold;">비밀번호 찾기</h1>
			</div>
		</div>
				<input type="text" id="id" name="member_email" placeholder="이메일을 입력해주세요" />
				<button type="button" class="emailBtn" id="email-Check-Btn">본인인증</button>
				<div class="mail-check-box">
					<input class="form-control mail-check-input"
						placeholder="인증번호 6자리를 입력해주세요!" disabled="disabled" maxlength="6">
					<span id="mail-check-warn"></span>
					</div> 
			
				<button type="submit" id="submitBtn" style="border-radius:5px; margin-top:15px;" >비밀번호 변경하러 가기</button>
				<p class="message">
					아직 회원이 아니세요? <a href="#">이메일 회원 가입</a>
				</p>
					<p class="info">
					<a href="/member/findid" class="id">아이디를 잊으셨나요?</a>
				</p>
			</form>
		</div>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script>
$(document).ready(function(){
		
		$("#submitBtn").on("click",function(){
			var findPwdForm = $("#findPwdForm")
			if(findPwdForm.find("input[name='member_email']").val()===''){
				alert("이메일을 입력해주세요")
				return false;
			}
			if($(".mail-check-input").val()===""){
				alert("인증을 먼저 진행해주세요")
				return false;
			}
			return true;
		})
		
			$('#email-Check-Btn').on("click",function() {
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
	        	$("#mail-check-warn").html('인증번호가 불일치 합니다.');
	        	$("#mail-check-warn").css('color', 'red');
	        	$(".signupbtn").attr("disabled", true);
	    	}
	    });
		

	})
	
</script>
      
   
</html>