<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="sec"  uri="http://www.springframework.org/security/tags" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../includes/header.jsp"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">문의 답변 페이지</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>

<!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Help Get Page</div>
			<!-- /.panel-heading -->
			<div class="panel-body">

				<div class="form-group">
					<label>문의 번호</label> <input class="form-control" name="bno"
						value="${help.help_id }" readonly="readonly">
				</div>

				<div class="form-group">
					<label>문의 제목</label> <input class="form-control" name="title"
						value="${help.title}" readonly="readonly">
				</div>

				<div class="form-group">
					<label>내용</label>
					<textarea rows="6" class="form-control" name="content"
						readonly="readonly">
            		${help.content}</textarea>
				</div>

				<div class="form-group">
					<label>작성자</label> <input class="form-control" name="writer"
						value="${help.member_email}" readonly="readonly">
				</div>

				<button data-oper='list' class="btn btn-warning">List</button>

			</div>
			<!-- /.panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>

<!-- /.row -->
<div class="row">
<c:if test="${help.answer == 0 }">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">문의 답변</div>
			<div class="panel-body">
			<form id="operForm" action="/admin/helpa" method="post">
            <sec:authentication property="principal" var="pinfo"/>
			<div class="form-group">
				<label>내용</label>
				<textarea rows="6" class="form-control" name="content">
            	   </textarea>
			</div>
			<input type="hidden" name="member_email" value="${pinfo.username }">
			<input type="hidden" name="help_id" value="${help.help_id }">
			<button data-oper='register' class="btn btn-primary">답변달기</button>
			</form>
			
		</div>
		</div>
	</div>
	</c:if>
</div>

<div class="row">
<c:if test="${help.answer == 1 }">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">문의 답변</div>
			<div class="panel-body">
					<div class="form-group">
					<label>답변 번호</label> <input class="form-control" name="bno"
						value="${helpa.helpa_id }" readonly="readonly">
				</div>
            <sec:authentication property="principal" var="pinfo"/>
			<div class="form-group">
				<label>내용</label>
				<textarea rows="6" class="form-control" name="content" readonly="readonly">
				${helpa.content }
            	   </textarea>
			</div>
			
		</div>
		</div>
	</div>
	</c:if>
</div>

<style>
.chat>li:hover {
	cursor: pointer;
}
</style>

<script type="text/javascript" src="/resources/js/reply.js"></script>


<script>
$(document).ready(function(){
	
	console.log("JS TEST................")
	
	var helpValue = "${help.help_id}";
	console.log("helpValue = " + helpValue)
	var replyUL = $(".chat")
	
	showList(1);
	
	function showList(page){
		replyService.getList({bno:bnoValue, page:page}, function(replyCnt, list){
			
			
			//마지막 페이지 처리
			if(page == -1){
				var pageNum = Math.ceil(replyCnt/10.0);
				showList(pageNum)
				return
			}
			
			var str=""
			
			if(list == null || list.length==0){
				replyUL.html("")
				return ;
			}
			
			for(var i=0; i<list.length; i++){
				str += "<li class='left clearfix' data-rno='"+ list[i].rno  +"'>"
    			str += "<div>"
    			str += "<div class='header'>"
    			str += "<strong class='primary-font'>"+ list[i].replyer+"</strong>"		
    			str += "<small class='pull-right text-muted'> "+ replyService.displayTime(list[i].replyDate) +" </small>"		
    			str += "</div>"	
    			str += "</div>"
    			str += "<p>"+list[i].reply +"</p></li>"
			}
			replyUL.html(str)
			
			showReplyPage(replyCnt)
			
		}) 
	}	//End showList
		
	var modal = $(".modal")
	var modalInputReply = modal.find("input[name='reply']")
	var modalInputReplyer = modal.find("input[name='replyer']")
	var modalInputReplyDate = modal.find("input[name='replyDate']")
	
	var modalRegisterBtn = $("#modalRegisterBtn");
	var modalModBtn = $("#modalModBtn");
	var modalRemoveBtn = $("#modalRemoveBtn");
	var modalCloseBtn = $("#modalCloseBtn")
	
	var replyer = null;
	
	<sec:authorize access="isAuthenticated()">
		replyer = '<sec:authentication property="principal.username" />'  		
	</sec:authorize>
		
	$("#addReplyBtn").on("click", function(e){
		
		modal.find("input").val("")
		modal.find("input[name='replyer']").val(replyer); 
		modalInputReplyDate.closest("div").hide();
		modal.find("button[id != 'modalCloseBtn']").hide()
		modalRegisterBtn.show()
		
		$(".modal").modal("show");
	});
		
	
	
	
		
	//댓글 등록
	modalRegisterBtn.on("click", function(e){
		
		console.log("register...............")
	
		var reply = {
			reply : modalInputReply.val(),
			replyer: modalInputReplyer.val(),
			bno : bnoValue
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
		
		console.log("get...............")
		var rno = $(this).data("rno")
		
		replyService.get(rno, function(reply){
			modalInputReply.val(reply.reply)
			modalInputReplyer.val(reply.replyer)
			modalInputReplyDate.val(  replyService.displayTime(reply.replyDate)).attr("readonly", "readonly")
			
			modal.data("rno", reply.rno)
			
			modal.find("button[id != 'modalCloseBtn']").hide()
			modalModBtn.show()
			modalRemoveBtn.show()
			
			$(".modal").modal("show")
			
		})			
	})  //이벤트 위임
	
	//댓글 수정
	modalModBtn.on("click", function(e){
		console.log("update...............")
		
		var originalReplyer = modalInputReplyer.val();
		
		
		var reply = {
			rno: modal.data("rno"),
			reply: 	modalInputReply.val(),
			replyer: originalReplyer
		}
		
		if(!replyer){
			alert("로그인후 수정 가능합니다.")
			modal.modal("hide")
			return ;
		}
		
		if(replyer != originalReplyer){
			alert("자신이 작성한 댓글만 수정이 가능합니다.")
			modal.modal("hide")
			return
		}
		
		replyService.update(reply, function(result){
			alert(result);
			modal.modal("hide")
			showList(pageNum)
		})
	})  //End 댓글 수정

	//댓글 삭제
	modalRemoveBtn.on("click", function(e){
		console.log("remove...............")
		
		let rno =  modal.data("rno")
		
		console.log(rno)
		
		if(!replyer){
			alert("로그인후 삭제가 가능합니다.")
			modal.modal("hide")
			return ;
		}
		
		var originalReplyer = modalInputReplyer.val();
		
		console.log("originalReplyer : " + originalReplyer)
		
		if(replyer != originalReplyer){
			alert("자신이 작성한 댓글만 삭제가 가능합니다.")
			modal.modal("hide")
			return
		}
		
		replyService.remove(rno, originalReplyer ,function(result){
			alert(result);
			modal.modal("hide")
			showList(pageNum)
		})
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
	
	
	
	
	
	
	
	
	
	
	
	
	//댓글 등록
/* 	replyService.add(		
		
		{reply:"JS Test2", replyer: "tester2", bno:bnoValue},
		
		function(result){
			console.log("complete")
			alert("RESULT : " + result)
		}
	); */
	
	/* replyService.getList(
		{bno:bnoValue, page:1},
		
		function(list){
			//for(var i=0, len=list.length||0; i<len; i++){
			for(var i=0; i<list.length; i++){	
				console.log(list[i])
			}
				
		}
		
	) */
	
	/* var rno = 208
	replyService.remove(rno, function(msg){
			  alert(msg)			
		}
	);
	 */
	
	/* var data = {
				rno:207,
				reply: "Modified Reply..."
	}
	replyService.update(
		data, 
		function(result){
			alert(result);
		}			
	) */
	
	/* replyService.get( 207, function(data){
								console.log(data)
							}
	); */
	
	
	
});
</script>



<script>
 	$(document).ready(function(){
 		
 		let operForm = $("#operForm");
 		
 		$("button[data-oper='register']").on("click",function(e){
 			operForm.submit();
 		})

 		$("button[data-oper='list']").on("click",function(e){
 			operForm.find("#bno").remove();
 			operForm.attr("action", "/board/list")
 			operForm.submit();
 		})
 		
 	});
 	
 </script>


<%@include file="../includes/footer.jsp"%>
