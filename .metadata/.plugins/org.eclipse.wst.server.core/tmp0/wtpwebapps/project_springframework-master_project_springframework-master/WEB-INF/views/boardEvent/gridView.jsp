<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../includes/header2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../resources/summernote/summernote-lite.js"></script>
<script src="../resources/summernote/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="../resources/summernote/summernote-lite.css">
<title>Insert title here</title>
<!-- <link rel="stylesheet" type="text/css" href="../resources/css/shopping.css">-->
<script type="text/javascript" src="../resources/script/boardDiary.js"></script>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" type="text/css" href="../resources/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="../resources/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="../resources/slick/slick-theme.css" />
<link rel="stylesheet" href="../resources/css/templatemo-style.css">
<style>
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
	
	.container {
	max-width: 1400px;
	margin: 0 auto;
	}

</style>
</head>
<body style=" margin-top: 180px;">
	
	<input type="hidden" id="boardNum" name="boardNum" value="${board.boardNum}" readonly="readonly">
	<input type="hidden" id="userId" name="userId" value="${loginUser.userId}" readonly="readonly">
	<div class="p-5 tm-container-outer tm-bg-gray">
		<h2>이벤트 상세보기</h2>
		<hr class="hr1" noshade>
			<form action="/boardEvent/gridDelete" method="post" name="frm">
			<input type="hidden" id="boardNum" name="boardNum" value="${board.boardNum}" readonly="readonly">
			<input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum}">
			<input type="hidden" id="keyword" name="keyword" value="${cri.keyword}">
			<input type="hidden" id="type" name="type" value="${cri.type}">
			<input type="hidden" id="order" name="order" value="${cri.order}">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			
			<div class="form-group">
				<label for="boardTitle">제목</label> 
				<input type="text" class="form-control" id="boardTitle" name="boardTitle" value="${board.boardTitle}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="startDate">시작일</label> 
				<input type="text" class="form-control" id="startDate" name="startDate" value="${board.startDate}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="endDate">종료일</label> 
				<input type="text" class="form-control" id="endDate" name="endDate" value="${board.endDate}" readonly="readonly">
			</div>
			
			<div class="form-group">
				<label for="readCount">조회수</label> 
				<input type="text" class="form-control" id="readCount" name="readCount" value="${board.readCount}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="regiDate">등록일/수정일</label> 
				<c:choose>
					<c:when test="${board.regiDate>=board.modifyDate}">
						 : ${board.regiDate}					
					</c:when>
					<c:when test="${board.regiDate<board.modifyDate}">
						 : ${board.modifyDate}
					</c:when>
				</c:choose>
			</div>
	
			
			<!-- 이미지 출력 -->
			<div class="row">
			    <div class="col-lg-12">
			        <div class="panel panel-default">
			        
				        <div class="panel-heading"></div>
				        <div class="panel-body">
					        <div class="uploadResult">
					        	<ul id="uploadList">
					        	</ul>
					        </div>
				        </div>
					</div>
			    </div>
			</div>
			
			<div class="form-group">
				<label for="boardContent"><!-- 내용 --></label><br>
				${board.boardContent}
			</div>
			
			<div id="bottom"></div>
			<div class="mt-3 text-right">
			<c:choose>
				<c:when test="${loginUser.admin==1}">
					<button type="button" class="gradient" onclick="location.href='/boardEvent/gridList?pageNum=${cri.pageNum}&keyword=${cri.keyword}&type=${cri.type}'" style="width: 100px">목록</button>
					<button type="button" class="gradient" onclick="del()">삭제</button>&nbsp;
					<button type="button" class="gradient" onclick="location.href='/boardEvent/gridUpdate?boardNum=${board.boardNum}&pageNum=${cri.pageNum}&keyword=${cri.keyword}&type=${cri.type}'">수정</button>	
					<button type="button" class="gradient" onclick="location.href='/boardEvent/gridWrite'" id="write">글쓰기</button>
				</c:when>
				<c:otherwise>
					<button type="button" class="gradient" onclick="location.href='/boardEvent/gridList?pageNum=${cri.pageNum}&keyword=${cri.keyword}&type=${cri.type}'" style="width: 100px">목록</button>
				</c:otherwise>
			</c:choose>
			</div>
			<br><br>
			<!-- <div style="position: fixed; bottom: 5px; right: 5px;">
				<a href="#">
				<img src="./img/upArrow.png" width="100px" height="100px" title="위로">
				</a><br>
				<a href="#bottom">
				<img src="./img/downArrow.png" width="100px" height="100px" title="아래로">
				</a>
			</div> -->	
			
		</form>
	</div>



<script>
$(document).ready(function(){
	(function(){
		var boardNum = '<c:out value="${board.boardNum}"/>';
		$.getJSON("/boardEvent/getAttachList", {boardNum : boardNum}, function(arr) {
			console.log(arr);
			
			var str = "";
			
			$(arr).each(function(i, attach) {
				// image type
				if (attach.fileType) {
					//var fileCallPath = encodeURIComponent(attach.uploadPath + "/s_" + attach.uuid + "_" + attach.fileName);
					var fileCallPath = encodeURIComponent(attach.uploadPath + "/" + attach.uuid + "_" + attach.fileName);
					
					//str += "<li data-path='" + attach.uploadPath + "' data-uuid='" + attach.uuid + "' data-filename='" + attach.fileName + "' data-type='" + attach.fileType + "' data-fileOrder='" + attach.fileOrder>"'";
					str += "<li data-path='" + attach.uploadPath + "' data-uuid='" + attach.uuid + "' data-filename='" + attach.fileName + "' data-type='" + attach.fileType + "' data-fileOrder='" + attach.fileOrder +"'>";
					str += "<div>";
					str += "	<img src='/display?fileName=" + fileCallPath + "' style='max-width: 100%; height: auto;'>";
					str += "</div>";
					str += "</li>";
					
				} else {
					str += "<li data-path='" + attach.uploadPath + "' data-uuid='" + attach.uuid + "' data-filename='" + attach.fileName + "' data-type='" + attach.fileType + "'  data-fileOrder='" + attach.fileOrder+"'>";
					str += "	<div>";
					str += "		<span> " + attach.fileName + "</span><br/>";
					str += "		<img src='..resources/upload/noimage.png'></a>";
					str += "	</div>";
					str += "</li>";
				}
				
			});
			
			$(".uploadResult ul").html(str);
			
			$("#uploadList").each(function(){
			    $(this).html($(this).children('li').sort(function(a, b){
			        return ($(b).data('fileorder')) < ($(a).data('fileorder')) ? 1 : -1;
			    }));
			});
			
		});
		
	})();//end function
	
});
</script>

	<%@ include file="../includes/footer.jsp"%>
</body>
</html>