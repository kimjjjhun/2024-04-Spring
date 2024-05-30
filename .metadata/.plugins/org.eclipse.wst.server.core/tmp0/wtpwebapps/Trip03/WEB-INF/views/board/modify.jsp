<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<script	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<%@include file="../includes/header1.jsp"%>

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<div class="container">
		<h2>여행 후기 게시판</h2>
		<p>
			<strong>Trip.go?</strong>를 통하여 여행플랜을 계획한 여행지의 후기
		</p>
			<div class="form-group">
				<form role="form" action="/board/modify" method="post">
					<input type="hidden" name="pageNum" value='${cri.pageNum}'>
           			<input type="hidden" name="amount" value='${cri.amount}'>
           			<input type="hidden" name="type" value=${cri.type}>
					<input type="hidden" name="keyword" value=${cri.keyword}>
           			
	           		<div class="form-group">
	            		<label><strong>글번호</strong></label> 
	            		<input class="form-control" name="board_id" value="${board.board_id}" style="border: none;" readonly="readonly">
	           		</div>
	           		
	           		<div class="form-group">
	            		<label><strong>제목</strong></label> 
	            		<input class="form-control" name="title" value="${board.title}">
	           		</div>
	           		
	           		<div class="form-group">
	            		<label><strong>내용</strong></label>
	            		<textarea rows="3" class="form-control" name="content" style="resize: none; background-color: white; width:1120px; height: 600px;" >
	            		${board.content}</textarea>
	           		</div>
	           		
	           		<div class="form-group">
	            		<label><strong>닉네임</strong></label> 
	            		<input class="form-control" name="member_email" value="${board.member_email}" style="border: none;" readonly="readonly">
	           		</div>
			           		<button type="submit" data-oper='modify' class="btn btn-primary" style="margin-top: 20px">수정하기</button>
			           		<button type="submit" data-oper='remove' class="btn btn-danger" style="margin-top: 20px">삭제하기</button>
	           				<button data-oper='list' class="btn btn-dark"  style="margin-top: 20px; float: right">돌아가기</button>
            	</form>	
			</div>
	</div>
	
	<script>
 	$(document).ready(function(){
 		
 		let formObj = $("form");
 		
 		$('button').on("click", function(e){
 			e.preventDefault();  
 			
 			let operation = $(this).data("oper");
 			
 			if(operation === 'remove'){
 				formObj.attr("action", "/board/remove"); 				
 			}else if(operation === 'list'){
 				formObj.attr("action", "/board/list").attr("method","get");
 				
 				let pageNumTag = $("input[name='pageNum']").clone();
 				let amountTag = $("input[name='amount']").clone();
 				let typeTag = $("input[name='type']").clone();
 				let keywordTag = $("input[name='keyword']").clone();
 			
 				formObj.empty();
 				
 				formObj.append(pageNumTag);
 				formObj.append(amountTag);
 				formObj.append(typeTag);
 				formObj.append(keywordTag);
 			
 			}
 			formObj.submit();
 		});
 		
 	});
 </script>
	
	
</body>

<%@include file="../includes/footer.jsp"%>
      
</html>
