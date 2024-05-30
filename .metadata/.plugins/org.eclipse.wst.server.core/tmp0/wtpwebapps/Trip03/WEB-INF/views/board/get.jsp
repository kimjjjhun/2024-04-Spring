<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/list.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/d41dbe5e59.js" crossorigin="anonymous"></script>
</head>

<%@include file="../includes/header1.jsp"%>

<body>

<div  class="page-title">
 <h3>HEADER</h3>
</div>

   <div class="page-title">
        <div class="container" style="margin-top: 150px">
            <h3>B O A R D</h3>
        </div>
    </div>
   
  <!-- board list area -->
    <div id="board-list">
        <div class="container">
				<div class="form-group">
					<label><strong>글쓴이</strong></label>
					<input class="form-control"	name="member_email" 
					value="${board.member_email}" style="background-color: white; border: none;" readonly="readonly">
					<label><strong>제목</strong></label>
					<input class="form-control" name="title" value="${board.title}" style="background-color: white; margin-bottom: 50px;  border: none;" readonly="readonly">
					<textarea rows="3" class="form-control" name="content" readonly="readonly" style="resize: none; background-color: white; width:1290px; height: 600px;"> ${board.content}</textarea>
				</div>
				
				
				
				<sec:authentication property="principal" var="pinfo"></sec:authentication>
				<sec:authorize access="isAuthenticated()">
					<c:if test="${pinfo.username eq board.member_email}">
				<button data-oper='modify' class="btn btn-primary" style="margin-top: 20px;">수정하기</button>
					</c:if>
				</sec:authorize>
				<button data-oper='list' class="btn btn-dark"  style="margin-top: 20px; margin-right: 20px; float: right;">돌아가기</button>
				
<c:choose>
    <c:when test="${isLiked}">
            <button id="likeButton" class="btn btn-light"  style="margin-top: 20px; margin-right: 480px; float: right;"><img alt="" src="/resources/image/unlikeboard.png"></button>
    </c:when>
    <c:otherwise>
            <button id="likeButton" class="btn btn-light"  style="margin-top: 20px; margin-right: 480px; float: right;"><img alt="" src="/resources/image/likeboard.png"></button>
    </c:otherwise>
</c:choose>
				
				<form id="operForm" action="/board/modify" method="get">
					<input type="hidden" id="board_id" name="board_id" value='${board.board_id}'> 
					<input type="hidden"	name="pageNum" value='${cri.pageNum}'> 
					<input type="hidden" name="amount" value='${cri.amount}'> 
					<input type="hidden" name="type" value=${cri.type}> 
					<input type="hidden" name="keyword" value=${cri.keyword}>
				</form>
				
        </div>
        
        	<form id="actionForm" action="/board/list" method="get">
		<input type="hidden" name="pageNum" value=${pageMaker.cri.pageNum}>
		<input type="hidden" name="amount" value=${pageMaker.cri.amount}>
		<input type="hidden" name="type" value=${pageMaker.cri.type}>
		<input type="hidden" name="keyword" value=${pageMaker.cri.keyword}>
	</form>
	
	
<div class="container" style="margin-top: 100px">
<div class="card mb-2">
	<div class="card-header bg-light">
	        <img alt="" src="/resources/image/reply.png"><strong>REPLY</strong>
	        
	<sec:authorize access="isAuthenticated()">
	        <button id="addReplyBtn" class="btn btn-white" style="float: right;"><img alt="" src="/resources/image/newreply.png"></button> 
	 </sec:authorize>
	 </div>
	 
	<div class="panel-body">
		<ul class="chat">
					<li class="left clearfix" data-rno='12'>
						<div>
							<div class="header">
								<strong class="primary-font"></strong>
			<small class="pull-right text-muted"></small>
							</div>
						</div>
						<p></p>
					</li>
				</ul>
			</div>
		</div>
			
				
		<!-- 페이징 처리 -->
			<div class="panel-footer" style="float: right; margin-right: 20px;"></div>
		<!-- End 페이징 처리 -->
			
			    
    	<!-- The Modal -->
	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">R E P L Y</h4>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-group">
						<label>이름</label> 
						<input class="form-control"	name="member_email" value="New member_email......." readonly="readonly">
					</div>
					
					<div class="form-group">
						<label>댓글내용</label> 
						<input class="form-control" name="reply" value="New Reply.......">
					</div>

					<div class="form-group">
						<label>댓글작성일자</label> 
						<input class="form-control" name="replyDate" value="">
					</div>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button id="modalRegisterBtn" type="button" class="btn btn-primary">등록</button>
					<button id="modalModBtn" type="button" class="btn btn-warning">수정</button>
					<button id="modalRemoveBtn" type="button" class="btn btn-danger">삭제</button>
				</div>
			</div>
		</div>
	</div>
	</div>
	<!-- End The Modal -->

	
	<script type="text/javascript" src="/resources/js/reply.js"></script>
	<script type="text/javascript" src="/resources/js/like.js"></script>

<script>
$(document).ready(function(){
	
	console.log("JS TEST................")
	
	var bnoValue = "${board.board_id}";
	var replyUL = $(".chat")
	
	showList(1);
	
	function showList(page) {
	    replyService.getList({ board_id: bnoValue, page: page }, function(replyCnt, list) {
	        // 마지막 페이지 처리
	        if (page === -1) {
	            var pageNum = Math.ceil(replyCnt / 10.0);
	            // 마지막 페이지에서는 재귀 호출을 하지 않도록 수정
	            if (pageNum !== page) {
	                showList(pageNum);
	            }
	            return;
	        }

	        var str = "";

	        if (list == null || list.length === 0) {
	            replyUL.html("");
	            return;
	        }

	        for (var i = 0; i < list.length; i++) {
	            str += "<li class='left clearfix' data-rno='" + list[i].replyNum + "'>"; 
	            str += "<div>";
	            str += "<div class='header'>";
	            str += "<strong class='primary-font'>" + list[i].member_email + "</strong>";
	            str += "<small class='pull-right text-muted'> "+ list[i].replyDate +" </small>"
	            str += "</div>";
	            str += "</div>";
	            str += "<p>" + list[i].reply + "</p></li>";
	        }
	        replyUL.html(str);

	        showReplyPage(replyCnt);
	    });
	} // End showList
		
	var modal = $(".modal")
	var modalInputReply = modal.find("input[name='reply']")
	var modalInputmember_email = modal.find("input[name='member_email']")
	var modalInputReplyDate = modal.find("input[name='replyDate']")
	
	var modalRegisterBtn = $("#modalRegisterBtn");
	var modalModBtn = $("#modalModBtn");
	var modalRemoveBtn = $("#modalRemoveBtn");
	var modalCloseBtn = $("#modalCloseBtn")
	
	var member_email = null;
	
	<sec:authorize access="isAuthenticated()">
    // 주어진 문자열에서 이메일 주소를 파싱하여 member_email 변수에 할당
    member_email = '${pinfo}'.split('member_email=')[1].split(',')[0];
</sec:authorize>
	
	$("#addReplyBtn").on("click", function(e){
		
		modal.find("input").val("")
		modal.find("input[name='member_email']").val(member_email);
		modalInputReplyDate.closest("div").hide();
		modal.find("button[id != 'modalCloseBtn']").hide()
		modalRegisterBtn.show()
		
		$(".modal").modal("show");
	});
	
	
	// 좋아요 버튼 클릭 이벤트 핸들러
	$("#likeButton").on("click", function(e){
	    var userEmail = "${board.member_email}"; // 이 부분은 실제로 유저의 이메일을 가져오는 로직으로 대체되어야 합니다.
	    var boardId = "${board.board_id}"; // 게시물의 ID를 가져오는 로직으로 대체되어야 합니다.

	    if (userEmail && boardId) {
	        var like = {
	            board_id: boardId,
	            member_email: userEmail
	        };

	        if ($(this).hasClass("liked")) {
	            // 좋아요 취소 요청
	            boardService.removelike(like, function(result){
	                console.log("좋아요 취소");
	                // 좋아요 취소 후 버튼 상태 및 텍스트 변경
	                $("#likeButton").removeClass("liked").html('<img alt="" src="/resources/image/likeboard.png">');
	                // 로컬 스토리지에서 좋아요 상태 제거
	                localStorage.removeItem("liked_" + boardId);
	            });
	        } else {
	            // 좋아요 등록 요청
	            boardService.addlike(like, function(result){
	                console.log("좋아요 등록");
	                // 좋아요 등록 후 버튼 상태 및 텍스트 변경
	                $("#likeButton").addClass("liked").html('<img alt="" src="/resources/image/unlikeboard.png">');
	                // 로컬 스토리지에 좋아요 상태 저장
	                localStorage.setItem("liked_" + boardId, true);
	            });
	        }
	    } else {
	        // 값이 주어지지 않은 경우에는 처리 필요
	    }
	});

	// 페이지 로드 시 로컬 스토리지에서 좋아요 상태 확인하여 버튼 초기화
	$(document).ready(function() {
		
		var modal = $(".modal")
	    var boardId = "${board.board_id}"; // 게시물의 ID를 가져오는 로직으로 대체되어야 합니다.

	    if (boardId) {
	        // 로컬 스토리지에서 좋아요 상태 확인
	        var isLiked = localStorage.getItem("liked_" + boardId);
	        if (isLiked === "true") {
	            // 좋아요 상태일 때 버튼 초기화
	            $("#likeButton").addClass("liked").html('<img alt="" src="/resources/image/unlikeboard.png">');
	        } else {
	            // 좋아요 상태가 아닐 때 버튼 초기화
	            $("#likeButton").removeClass("liked").html('<img alt="" src="/resources/image/likeboard.png">');
	        }
	    } else {
	        // 게시물 ID가 주어지지 않은 경우에는 처리 필요
	    }
	});
	
	//댓글 등록
	 modalRegisterBtn.on("click", function(e){
        
        console.log("register...............")
    
        var reply = {
            reply : modalInputReply.val(),
            member_email: member_email, // member_email 값을 사용하여 댓글의 작성자 설정
            board_id : bnoValue
        }
        
        replyService.add(reply, function(result){
            alert(result)
            modal.find("input").val("")
            modal.modal("hide")
            
            showList(-1)
        })
        
    }) // End 댓글 등록
	
	//이벤트 위임을 통한 댓글 클릭 이벤트
	$(".chat").on("click","li", function(e){
		
		e.preventDefault(); // 이벤트 기본 동작 방지
		
		console.log("get...............")
		
		var replyNum = $(this).data("rno")
		
		replyService.get(replyNum, function(reply){
			modalInputReply.val(reply.reply)
			modalInputmember_email.val(reply.member_email)
			modalInputReplyDate.val(replyService.displayTime(reply.replyDate)).attr("readonly", "readonly")
			
			modal.data("rno", reply.replyNum)
			
			modal.find("button[id != 'modalCloseBtn']").hide()
			modalModBtn.show()
			modalRemoveBtn.show()
			
			$(".modal").modal("show")
			
		})			
	})  //이벤트 위임
	
	//댓글 수정
	modalModBtn.on("click", function(e){
		console.log("update...............")
		
		var originalmember_email = member_email;
		
		var reply = {
			reply: 	modalInputReply.val(),
			replyNum: modal.data("rno"),
			member_email: originalmember_email
		}
		

		if(!member_email){
			alert("로그인 후 수정이 가능합니다.")
			modal.modal("hide")
			return;
		}
		
		if(member_email != originalmember_email){
			alert(originalmember_email)
			alert("본인이 작성한 댓글만 수정이 가능합니다.")
			modal.modal("hide");
			return;
		}
		
		replyService.update(reply, function(result){
			
			alert(result)
			
			
		})
		modal.modal("hide")

		showList(pageNum)
	})  //End 댓글 수정

	//댓글 삭제
	modalRemoveBtn.on("click", function(e){
		
		console.log("remove...............")
		
		let replyNum =  modal.data("rno")
		
		if(!member_email){
			alert("로그인 후 삭제가 가능합니다.")
			modal.modal("hide")
			return;
		}
		
		var originalmember_email = member_email;
		
		if(member_email != originalmember_email){
			alert("본인이 작성한 댓글만 삭제가 가능합니다.")
			modal.modal("hide")
			return;
		}
		
		
		replyService.remove(replyNum,originalmember_email, function(result){
			
			alert(result);
			
		})
		
		modal.modal("hide")
			showList(pageNum)
	})  //End 댓글 삭제
	
	
	var pageNum = 1
	var replyPageFooter = $(".panel-footer")
	
	function showReplyPage(replyCnt){
		
		var endNum = Math.ceil(pageNum / 10.0) * 10
		var startNum = endNum - 9
		
		var prev = startNum != 1
		var next = false;
		
		if(endNum * 10 >= replyCnt){
			endNum = Math.ceil(replyCnt/10.0)
		}
		
		if(endNum * 10 < replyCnt){
			next = true
		}
		
		var str = "<ul class='pagination pull-right'>";
		
		if(prev){
			str += "<li class='page-item'><a class='page-link' href='"+ (startNum-1) +"'>이전</a></li>";
		}
		
		for(var i=startNum; i<=endNum; i++){
			var active  = pageNum ==i? "active": "";
			
			str += "<li class='page-item "+ active +" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
					
		}
		
		if(next){
			str += "<li class='page-item'><a class='page-link' href='"+ (endNum+1) +"'>다음</a></li>";
		}
		str += "</ul>"
		
		replyPageFooter.html(str)
	}
	
	replyPageFooter.on("click", "li a", function(e){
		e.preventDefault();	
		
		var targetPageNum = $(this).attr("href")
		
		pageNum = targetPageNum
		
		showList(pageNum);
	})
});
</script>



<script>
 	$(document).ready(function(){
 		
 		let operForm = $("#operForm");
 		
 		$("button[data-oper='modify']").on("click",function(e){
 			operForm.submit();
 		})

 		$("button[data-oper='list']").on("click",function(e){
 			operForm.find("#board_id").remove();
 			operForm.attr("action", "/board/list")
 			operForm.submit();
 		})
 		
 	});
 </script>
 
</body>
</html>

<%@include file="../includes/footer.jsp"%>