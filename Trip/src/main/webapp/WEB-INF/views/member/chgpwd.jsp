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
		<form action="/member/chgpwd" method="post" id="pwdForm">
			<div class="error">
			${error}
		</div>
		<div>
			<h1 style="margin-bottom:25px; font-size:25px; font-weight:bold;">비밀번호 재설정</h1>
			<input type="hidden" name="member_email" value="${member_email}">
			</div>
				<input type="password" name="pwd" placeholder="비밀번호를 입력해주세요" />
				<input type="password" name="pwd-repeat" placeholder="비밀번호를 재입력해주세요" />
			
				<button type="submit" id="submitBtn" style="border-radius:5px; margin-top:15px;" >비밀번호 변경</button>
				<p class="message">
			</form>
		</div>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#submitBtn").on("click",function(){
			var pwdForm = $("#pwdForm");
			if(pwdForm.find("input[name='pwd']").val()===""){
				alert("변경할 비밀번호를 입력해주세요")
				return false;
			}
			if(pwdForm.find("input[name='pwd-repeat']").val()===""){
				alert("비밀번호를 재입력해주세요")
				return false
			}
			if(pwdForm.find("input[name='pwd']").val().length<8){
				alert("비밀번호는 8자리 이상이어야 합니다.")
				return false;
			}
			if(pwdForm.find("input[name='pwd']").val()!=pwdForm.find("input[name='pwd-repeat']").val()){
				alert("비밀번호가 일치하지 않습니다")
				return false
			}
			alert("비밀번호가 변경되었습니다")
			return true;
		})
	})
</script>
      
   
</html>