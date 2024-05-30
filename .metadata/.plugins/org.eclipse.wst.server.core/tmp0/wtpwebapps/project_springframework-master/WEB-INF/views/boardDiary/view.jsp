<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../includes/header2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../resources/summernote/summernote-lite.js"></script>
<script src="../resources/summernote/summernote-ko-KR.js"></script>
<link rel="stylesheet"
	href="../resources/summernote/summernote-lite.css">
<title>Insert title here</title>
<!-- <link rel="stylesheet" type="text/css" href="../resources/css/shopping.css"> -->
<script type="text/javascript" src="../resources/script/boardDiary.js"></script>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" type="text/css"
	href="../resources/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="../resources/slick/slick-theme.css" />
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

.modal-backdrop {
	z-index: 10;
}

.container {
	max-width: 1400px;
	margin: 0 auto;
}
</style>
</head>
<body style=" margin-top: 180px;">

	<input type="hidden" id="boardNum" name="boardNum"
		value="${board.boardNum}" readonly="readonly">
	<input type="hidden" id="userId" name="userId"
		value="${loginUser.userId}" readonly="readonly">
	<div class="p-5 tm-container-outer tm-bg-gray">
		<h2>게시글 상세보기</h2>
		<hr class="hr1" noshade>
		<form action="/boardDiary/delete" method="post" name="frm">
			<input type="hidden" id="userId" name="userId" value="${loginUser.userId}" readonly="readonly"> 
			<input type="hidden" id="boardNum" name="boardNum" value="${board.boardNum}" readonly="readonly">
			<input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum}">
			<input type="hidden" id="keyword" name="keyword" value="${cri.keyword}">
			<input type="hidden" id="type" name="type" value="${cri.type}">
			<input type="hidden" id="order" name="order" value="${cri.order}">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			<div class="form-group">
				<label for="boardTitle">제목</label> <input type="text"
					class="form-control" id="boardTitle" name="boardTitle"
					value="${board.boardTitle}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="boardWriter">작성자</label> <input type="text"
					class="form-control" id="boardWriter" name="boardWriter"
					value="${board.boardWriter}" readonly="readonly">
			</div>
			
			<div class="form-group">
				<label for="boardWriter">작성일</label> 
				<input type="text" class="form-control" id="regiDate" name="regiDate" value="${board.regiDate}" readonly="readonly">
			</div>
			
			<c:if test="${board.regiDate<board.modifyDate}">
				<div class="form-group">
					<label for="boardWriter">수정일</label> 
				<input type="text" class="form-control" id="regiDate" name="modifyDate" value="${board.modifyDate}" readonly="readonly">
			</div>
			</c:if>

			<label for="boardContent">내용</label>
			<div class="form-group"
				style="border-top: 1px solid; border-bottom: 1px solid;">
				<%-- <textarea id="summernote" class="summernote" name="boardContent"><c:out value="${board.boardContent}"/></textarea> --%>
				<br> ${board.boardContent} <br>
				<br>
			</div>

			<div class="mt-3 text-right">
				<c:choose>
					<c:when test="${loginUser.admin==1}">
						<button type="button" class="gradient"
							onclick="location.href='/boardDiary/list?pageNum=${cri.pageNum}&keyword=${cri.keyword}&type=${cri.type}&order=${cri.order}'">목록</button>&nbsp;	
					<button type="button" class="gradient"
							onclick="location.href='/boardDiary/update?boardNum=${board.boardNum}&pageNum=${cri.pageNum}&keyword=${cri.keyword}&type=${cri.type}&order=${cri.order}'">수정</button>&nbsp;	
					<button type="button" class="gradient"
							onclick="location.href='/boardDiary/write'">글쓰기</button>&nbsp;
					<button type="button" class="gradient" onclick="del()">삭제</button>&nbsp;
				</c:when>
					<c:when test="${loginUser.userNick==board.boardWriter}">
						<button type="button" class="gradient"
							onclick="location.href='/boardDiary/list?pageNum=${cri.pageNum}&keyword=${cri.keyword}&type=${cri.type}&order=${cri.order}'">목록</button>&nbsp; 
					<button type="button" class="gradient"
							onclick="location.href='/boardDiary/update?boardNum=${board.boardNum}&pageNum=${cri.pageNum}&keyword=${cri.keyword}&type=${cri.type}&order=${cri.order}'">수정</button>&nbsp;	
					<button type="button" class="gradient"
							onclick="location.href='/boardDiary/write'">글쓰기</button>&nbsp;
					<button type="reset" class="gradient" onclick="del()">삭제</button>&nbsp;
				</c:when>
					<c:when test="${!empty loginUser.admin}">
						<button type="button" class="gradient"
							onclick="location.href='/boardDiary/list?pageNum=${cri.pageNum}&keyword=${cri.keyword}&type=${cri.type}&order=${cri.order}'">목록</button>&nbsp;
					<button type="button" class="gradient"
							onclick="location.href='/boardDiary/write'">글쓰기</button>&nbsp;
				</c:when>
					<c:otherwise>
						<button type="button" class="gradient"
							onclick="location.href='/boardDiary/list?pageNum=${cri.pageNum}&keyword=${cri.keyword}&type=${cri.type}&order=${cri.order}'">목록</button>&nbsp; <br>
						<br>
					</c:otherwise>
				</c:choose>
			</div>
			<br>

			<!-- <div style="position: fixed; bottom: 5px; right: 5px;">
				<a href="#">
				<img src="./img/upArrow.png" width="100px" height="100px" title="위로">
				</a><br>
				<a href="#allReply">
				<img src="./img/downArrow.png" width="100px" height="100px" title="아래로">
				</a>
			</div>
			 -->
			<br>
			<br>
			<br>
		</form>
	</div>

	<div class="container" style="margin: auto; width: 220px;">
		<input type="hidden" id="test111" value="추천 ${likeCount}개">						
		
		<div class="likeArea">
		</div>
	</div>

	<div class="container">
		<div class="panel-heading">
			<i class="fa fa-comments fa-fw"></i>Reply

		</div>
		<div class="panel-body">
			<ul class="chat">
				<li class="left clearfix" data-replyNum='12'>
					<div>
						<div class="header">
							<strong class="primary-font">user00</strong> <small
								class="pull-right text-muted">2023-11-16 11:20</small>
						</div>
						<p>good job</p>
					</div>
				</li>
			</ul>
		</div>
		<div class="panel-footer"></div>
	</div>
	<div class="container">
		<br>
		<br>

		<!-- 	<button type="button" class="btn btn-success float-right" onclick="location.href='boardDiaryList.do'">목록</button>&nbsp; <br> <br>	 -->
		<c:if test="${!empty loginUser}">
			<div class="wrap">
				<h2>댓글쓰기</h2>
				<form action="/boardDiary/reples/new" method="post">
					<input type="hidden" id="boardNum" name="boardNum"
						value="${board.boardNum}"> <input type="hidden"
						id="boardWriter" name="boardWriter" value="${board.boardWriter}">
					<input type="hidden" id="userId" name="userId"
						value="${loginUser.userId}">
					<div>
						<div>
							작성자 : <input type="text" class="form-control" id="replyWriter"
								name="replyWriter" value="${loginUser.userNick}"
								readonly="readonly">
						</div>
					</div>
					<div>
						<textarea style="width: 100%;" rows="10" id="replyContent"
							name="replyContent"></textarea>
					</div>
					<div class="mt-3 text-right">
						<button type="submit" id="replybtn" class="gradient" >등록</button>
					</div>
				</form>
			</div>
		</c:if>
		<c:if test="${empty loginUser}">
			<h2>댓글쓰기</h2>
			<h4>로그인 후 댓글을 작성할 수 있습니다.</h4>
		</c:if>
	</div>
	<br>
	<br>

	<!-- 모달창 -->
	<div class="modal" id="myModal" style="position: fixed; z-index: 9999;">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title" id="myModalLabel">댓글</h4>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-group">
						<label>댓글 내용</label> <input class="form-control"
							name="replyContent" value="New Reply" />
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name="replyWriter"
							id="replyWriter" value="ReplyWriter" />
					</div>
					<div class="form-group">
						<label>작성일</label> <input class="form-control" name="modifyDate"
							value="" />
					</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<!-- <button id="modalRegisterBtn" type="button" class="btn btn-primary">Register</button> -->
					<button id="modalModBtn" type="button" class="btn btn-warning">수정</button>
					<button id="modalRemoveBtn" type="button" class="btn btn-danger">삭제</button>
					<button id="modalCloseBtn" type="button" class="btn btn-info"
						data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>
	<!-- /모달창 -->

<script type="text/javascript" src="../resources/script/reply.js"></script>

<script>
	$('#summernote').summernote('disable');
	
	var bnoValue = '${board.boardNum}';
	var userId = '${loginUser.userId}';
	var replyUL = $(".chat");
	
	console.log("userId : " + userId);
	console.log('bnoValue : ' + bnoValue);

	showList(1);

	//reply
	function showList(page) { //아니면 1을 대입
		replyService
				.getList(
						{
							boardNum : bnoValue,
							page : page || 1
						},
						function(replyCount, list) {
							
							if(page==-1){					//아래의 다른 함수에서 page=-1을 호출, paging 처리가 새로 시작됨
								pageNum = Math.ceil(replyCount/10.0);		//댓글 갯수가 10개를 넘어가면 다음 페이지로 이동함
								showList(pageNum);
								return;
							}
							
							var str = "";
							if (list == null || list.length == 0) {
								replyUL.html("<br>등록된 댓글이 없습니다");
								return;
							}
							for (var i = 0, len = list.length || 0; i < len; i++) {
								str += "<li class='left clearfix' data-replyNum='" + list[i].replyNum + "'>"; //안쪽에 작은 따옴표로 바꾸기. rno값 주의.
								str += "<div><div class='header'>";
								str += "<strong class='primary-font'>" + list[i].replyWriter + "</strong>";
								if(userId==list[i].userId){
									str += "&nbsp;&nbsp;&nbsp;<i class='fa fa-gear' style='color: gray; font-size: 17px;'></i>";
								}
								str += "<small class='pull-right text-muted'>" + replyService.displayTime(list[i].modifyDate) + "</small>";
								str += "</div><p>" + list[i].replyContent + "</p>";
								 
								str += "</div></li><br>";
							}
							replyUL.html("<br>"+str);
							
							showReplyPage(replyCount);
						}); //end function

	} //end showList
	
	var modal = $(".modal");
	var modalInputReply = modal.find("input[name='replyContent']");
	var modalInputReplyer = modal.find("input[name='replyWriter']");
	var modalInputReplyDate = modal.find("input[name='modifyDate']");
	
	var modalRegisterBtn = $("#modalRegisterBtn");	
	var modalModBtn = $("#modalModBtn");
	var modalRemoveBtn = $("#modalRemoveBtn");
	var modalCloseBtn = $("#modalCloseBtn");	
	
	var userId = null;
	userId = '${loginUser.userId}';
	/* <sec:authorize access = "isAuthenticated()">
		userId = '<sec:authentication property="principal.username"/>';
	</sec:authorize> */
	
	var replyWriter = '${loginUser.userNick}';
	var replyContent = $("#replyContent");
	
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	
	
	//Ajax spring security header
	$(document).ajaxSend(function(e, xhr, options){
		xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
	});
	
	//유효성 검사
	function replyCheck(){
		console.log("유효성 검사중");
		console.log(replyContent.val());
	    if(replyContent.val()==""||replyContent.val().trim()==""){
	        alert("내용을 입력해주세요");
	        return false;
	    }
	    
	    return true;
	}
	
	//댓글 등록
	$("#replybtn").on("click", function(e){

		if(replyCheck()==true){
	
			e.preventDefault();
			
			
			var reply = {
					boardNum : bnoValue,
					replyContent : replyContent.val(),
					replyWriter : replyWriter,
					userId : userId
			}
			const textarea = document.getElementById('replyContent');
			textarea.value = '';
			
			replyService.add(reply, function(result){
				alert("댓글이 등록되었습니다");
				
				showList(-1);			//댓글 내용 새로 고침(댓글 1페이지 호출) -> -1페이지 호출, getList()에서 paging을 새로 작동
			});
		} else{
			e.preventDefault();
		}
	});
	
	//댓글 조회 클릭 이벤트 처리
	$(".chat").on("click", "li", function(e){
		var replyNum = $(this).data("replynum");
		console.log("replyNum : " + replyNum);
		
		replyService.get(replyNum, function(reply){
			if(userId!=reply.userId){
				modalInputReply.val(reply.replyContent).attr("readonly", "readonly");
				modalInputReplyer.val(reply.replyWriter).attr("readonly", "readonly") ;
				modalInputReplyDate.val(replyService.displayTime(reply.modifyDate)).attr("readonly", "readonly"); //읽기전용 변경
				modal.data("replyNum", reply.replyNum);	
				
				modal.find("button[id != 'modalCloseBtn']").hide();
			} else {
				modalInputReply.val(reply.replyContent);
				modalInputReplyer.val(reply.replyWriter).attr("readonly", "readonly") ;
				modalInputReplyDate.val(replyService.displayTime(reply.modifyDate)).attr("readonly", "readonly"); //읽기전용 변경
				modal.data("replyNum", reply.replyNum);	
				
				modal.find("button[id != 'modalCloseBtn']").hide();
				modalModBtn.show();
				modalRemoveBtn.show();
			}
			
			$(".modal").modal("show");
		});
	});
	
	//댓글 수정
	modalModBtn.on("click", function(e){
		
		var originalReplyer = modalInputReplyer.val();
		
		var reply = {
			replyNum : modal.data("replyNum"),
			replyContent : modalInputReply.val(),
			replyWriter: originalReplyer
		};
		
		replyService.update(reply, function(result){
			alert("댓글이 수정되었습니다");
			
			$('#myModal').modal("hide");
			console.log("Modify => " + pageNum)
			showList(pageNum);
		});
	});

	//댓글 삭제
	modalRemoveBtn.on("click", function(e){
		var replyNum = modal.data("replyNum");				
		
		var originalReplyer = modalInputReplyer.val();
	
		replyService.remove(replyNum, originalReplyer, function(result){
			alert("댓글이 삭제되었습니다.");
			$('#myModal').modal("hide");
			console.log("Delete => " + pageNum)
			showList(pageNum);
		});
	});
	
	//페이징 처리
	var pageNum = 1;
	var replyPageFooter = $(".panel-footer");
	
	function showReplyPage(replyCount){
		var endNum = Math.ceil(pageNum/10.0)*10;
		var startNum = endNum - 9;
		
		var prev = startNum !=1;
		var next = false;
		
		if(endNum*10>=replyCount){
			endNum = Math.ceil(replyCount/10.0);
		}
		
		if(endNum*10<replyCount){
			next=true;
		}
		
		var str = "<ul class='pagination pull-right'>";
		if(prev){
			str += "<li class = 'page-item'><a class='page-link' href='"+ (startNum-1) +"'>Previous</a></li>";
		}
		
		for(var i=startNum; i<=endNum; i++){
			var active = pageNum == i ? "active" : "";
			
			str += "<li class='page-item "+ active + "'> <a class='page-link' href='" + i + "'>" + i + "</a></li>";
		}
		
		if(next){
			str += "<li class = 'page-item'><a class='page-link' href='"+ (endNum+1) +"'>Next</a></li>";
		}
		
		str += "</ul>";
		console.log("str >>> " + str);
		
		replyPageFooter.html(str);
	}
	
	//댓글 페이지 이벤트 처리
	replyPageFooter.on("click", "li a", function(e){		// li>a 내부의 href를 꺼내기 위해서.
		e.preventDefault();
		
		var targetPageNum = $(this).attr("href");
		console.log("targetPageNum : " + targetPageNum);
		pageNum=targetPageNum;
		showList(pageNum);
	});
	
//추천 부분
var boardNum = ${board.boardNum};

const handleRefresh = () => {
	  setRefresh(refresh * -1);
	}

function updateLike(){ 
	console.log(boardNum);
	console.log(userId);
	
	 $.ajax({
            type : "POST",  
            url : "/boardDiary/like/" + boardNum + "/" + userId,       
            dataType : "json", 
            error : function(){
               alert("통신 에러");
            },
            success : function(data) {
                console.log(data);
                console.log("dto>>"+data.checkLike);
                console.log("dto>>"+data.message);
                    if(data.checkLike == 0){
                    	alert("추천이 완료되었습니다");
                    	/* location.reload(); */
                    	/* $("#test111").value = "추천" + data.likeCount +"개" */;
                    	
                    	const likecnt = document.getElementById('test111');
                    	
                    	var cnt = parseInt(data.likeCount) + 1;
                    	likecnt.value = "추천 " + cnt +"개";
                		
                    	var str="";
						str += "<i id='heart' class='fa fa-heart' style='color: red; font-size: 80px;' onclick='updateLike(); return false;'></i><br>"
						str += "&nbsp;&nbsp;&nbsp;&nbsp;<b>추천 "+ cnt + "개</b>";
						$(".likeArea").html(str);
                    	
                    	handleRefresh();
                    }
                    else if(data.checkLike == 1) {
	                    alert("추천이 취소되었습니다");
	                     
	                    const likecnt = document.getElementById('test111');
	                   
	                    var cnt = parseInt(data.likeCount) - 1;
                    	likecnt.value = "추천 " + cnt +"개";
	                    
                    	var str="";
						str += "<i id='heart' class='fa fa-heart-o' style='color: red; font-size: 80px;' onclick='updateLike(); return false;'></i><br>"
						str += "&nbsp;&nbsp;&nbsp;&nbsp;<b>추천 "+ cnt + "개</b>";
						$(".likeArea").html(str);
                    	
	                    handleRefresh();
                }
            }
        });
 	}
	
	

	$(document).ready(function(){
			
		console.log("check 시작");
		console.log(boardNum);
		console.log("userId>>"+userId);
		console.log("/boardDiary/like/check/" + boardNum + "/" + userId);
		
		var userId = '${loginUser.userId}'
		
		if(userId!=''){
			$.ajax({
		        type : "POST",  
		        url : "/boardDiary/like/check/" + boardNum,       
		        dataType : "json", 
				data : JSON.stringify({boardNum:boardNum, userId:userId}),
		        contentType : "application/json; charset=utf-8",
		
		        error : function(error){
		            alert("통신 에러222");
		            console.log(error);
		        },
		        success : function(data) {
		        	console.log("check 통과");
		        	console.log(data);
		        	
		        	if(data== 1){
		            console.log("이미 추천한 상태");
			            var str="";
						str += "<i id='heart' class='fa fa-heart' style='color: red; font-size: 80px;' onclick='updateLike(); return false;'></i><br>"
						str += "&nbsp;&nbsp;&nbsp;&nbsp;<b>추천 "+ ${likeCount} + "개</b>";
						$(".likeArea").html(str);
		           	}
		        	
		            else if(data== 0) {
		            console.log("아직 추천하지 않음");
			            var str="";
						str += "<i id='heart' class='fa fa-heart-o' style='color: red; font-size: 80px;' onclick='updateLike(); return false;'></i><br>"
						str += "&nbsp;&nbsp;&nbsp;&nbsp;<b>추천 "+ ${likeCount} + "개</b>";
						$(".likeArea").html(str);
		            
		           }
		        }
		    });
		} else if(userId==''){
			console.log("비로그인 유저");
			
			var str="";
			str += "<i id='heart' class='fa fa-heart' style='color: red; font-size: 80px;' onclick='message();'></i><br>"
			str += "&nbsp;&nbsp;&nbsp;&nbsp;<b>추천 "+ ${likeCount} + "개</b>";
			$(".likeArea").html(str);
		}
	});
	
	function message(){
		alert("로그인 후 추천이 가능합니다");
	}
	
	
	
</script>


	<%@ include file="../includes/footer.jsp"%>
</body>
</html>