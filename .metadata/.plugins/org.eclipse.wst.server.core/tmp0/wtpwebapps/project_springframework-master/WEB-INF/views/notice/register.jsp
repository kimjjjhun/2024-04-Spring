<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../includes/header2.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0"><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="/resources/slick/slick-theme.css" />

<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- <link rel="stylesheet" href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">  -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<link rel="stylesheet" href="/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/css/searchbar.css">
 
<!-- Summernote 스타일 및 스크립트 --> 
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> 
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
<script type="text/javascript" src="/resources/js/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/css/summernote-lite.css">
<script type="text/javascript" src="/resources/js/summernote-lite.js"></script>
<link rel="stylesheet" href="/resources/css/templatemo-style.css">
<title>게시판</title>
<style>

body {
	/* width: 1400px;
	margin: 0 auto;
	margin-top : 180px;
	background-color:#EFEFEF; */
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
</style>
</head>
<body style=" margin-top : 180px;">

	<div class="p-5 tm-container-outer tm-bg-gray">
		<h2>공지사항 등록</h2>
		<hr class="hr1" noshade>
		<form action="/notice/register" method="post" name="frm" >

			<div
				class="">
				<div>
					<div class="form-group">

						<div class="">
							<span class="text-sm">제목</span> 
							<input type="text"	name="boardsubject"
								class="form-control">
						</div>
					
						
						<div class="">
							<span class="text-sm">작성자</span> 
							<input type="text"  value="${loginUser.userNick }"
								class="form-control" readonly="readonly">
							<input type="hidden" name="boardwriter" value="${loginUser.userId }">
						</div>
						
						<div class="">
							<span class="text-sm">내용</span>
								<textarea class="summernote" name="boardcontent"></textarea>
						</div>



						<div class="mt-3 text-right">
						<select name="emergency">
							<option value="3">----</option>
							<option value="0">일반</option>
							<option value="1">긴급</option>
							<option value="2">팝업공지</option>
						</select> 
						
							<button class="gradient" id="listBtn" type="submit">목록</button>
							<button
								class="gradient"
								type="reset" >다시 작성</button>
							<button
								class="gradient" id="regBtn" type="submit"
								onclick= "return boardnoticeCheck()">등록</button>
						</div>
 

					</div>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript">
	$('.summernote').summernote({
		  // 에디터 높이
		  height:400,
		  // 에디터 한글 설정
		  lang: "ko-KR",
		  // 에디터에 커서 이동 (input창의 autofocus라고 생각하시면 됩니다.)
		  focus : true,
		  toolbar: [
			    // 글꼴 설정
			    ['fontname', ['fontname']],
			    // 글자 크기 설정
			    ['fontsize', ['fontsize']],
			    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    // 글자색
			    ['color', ['forecolor','color']],
			    // 표만들기
			    ['table', ['table']],
			    // 글머리 기호, 번호매기기, 문단정렬
			    ['para', ['ul', 'ol', 'paragraph']],
			    // 줄간격
			    ['height', ['height']],
			    // 그림첨부, 링크만들기, 동영상첨부
			    ['insert',['picture','link','video']],
			    // 코드보기, 확대해서보기, 도움말
			    ['view', ['codeview','fullscreen', 'help']]
			  ],
			  // 추가한 글꼴
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
			 // 추가한 폰트사이즈
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
		});
	
	
		function boardnoticeCheck() {
			if (document.frm.boardsubject.value.trim() == "") {
				alert("제목을 입력해주세요."); 
				return false;
			}
			
			if(document.frm.emergency.value.trim() == 3){
				alert("일반, 긴급, 팝업공지를 선택해주세요.")
				return false;
			}
			return true;
		} 
		
		
		
		var listForm = $("#listBtn");
		
		listForm.click(function(e){
			e.preventDefault();
			 self.location = "/notice/list"; 
		});
		
		
		
		
	</script>

	<%@ include file="../includes/footer.jsp"%>
</body>
</html>