<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/resources/member/js/member.js"></script>
<link rel="stylesheet" href="/resources//member/css/default.css">
<link rel="stylesheet" href="/resources/member/css/member.css">
<title>filetable</title>
</head>
<body>
	<div id="container" class="container">
		<div class="content">
			<div class="join_wrap">
				<form id="join_frm" action="/member/signup" method="post">
					<div class="join_title">회원가입</div>
					<div class="join_box">
						<input type="text" placeholder="아이디" name="user_id" id="userid"	style="margin: 0;"> 
						<span id="id_ck" class="dpn">이미 사용중인 아이디입니다.</span> 
							<input type="text" placeholder="이름" name="user_name" 	id="username"> 
							<span id="name_ck" class="dpn">이미 사용중인 이름입니다.</span> 
							<input type="password" placeholder="비밀번호"	name="user_pwd" id="userpwd"> 
							<input type="password"	placeholder="비밀번호  확인" id="pwd_ck">
						<div class="email_auth">
							<input type="text" placeholder="이메일" name="email" id="email" class="email"> <br>
                        <button type="button" id="email_auth_btn" class="email_auth_btn">인증번호 받기</button> <br>
                        <input type="text" placeholder="인증번호 입력" id="email_auth_key"> <br>
					</div>
					<button type="submit" data-oper="signup" id="join" class="join_btn">가입하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- 이 문서를 다읽고 스크립트 실행 : 이메일인증번호 보내는 스크립트 -->
	 <script>
        $(document).ready(function() {
            $("#email_auth_btn").click(function() {
                var email = $("#email").val();

                $.ajax({
                    type: "GET",
                    url: "/sendMail.do",
                    success: function(response) {
                        alert("인증 이메일이 전송되었습니다.");
                    },
                    error: function(xhr, status, error) {
                        alert("Error: " + error);
                    }
                });
            });
        });
    </script>
</body>
</html>