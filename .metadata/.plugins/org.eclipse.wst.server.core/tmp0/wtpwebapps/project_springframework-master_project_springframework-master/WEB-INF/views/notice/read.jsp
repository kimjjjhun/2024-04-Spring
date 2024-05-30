<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../includes/header2.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>   
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<!-- Bootstrap style --> 
<link rel="stylesheet" type="text/css" href="/resources/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="/resources/slick/slick.css" />  
<link rel="stylesheet" type="text/css" href="/resources/slick/slick-theme.css" />
<link rel="stylesheet" href="/resources/css/templatemo-style.css"> 
<!-- <link rel="stylesheet"  
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"> -->    
<script 
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
	
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="/resources/css/searchbar.css"> -->
<title>게시판</title>
<style>
h2 {
	font-weight: bold;
}

.hr1 {
	border: 0;
	height: 2px;
	background: #d3d3d3;
}

.grey {
	color: #727272;
}

#strong {
	font-weight: 900;
}

table {
	width: 100%;
	border: none;
	border-collapse: collapse;
}

th {
	background-color: #FFC107;
	border-top: 3px solid #727272;
}

th, td {
	border-bottom: 1px solid #d3d3d3;
	padding: 10px;
}

tr:hover {
	background-color: #F5F5F5;
}

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
		<div class="row">
			<div class="col-md-12">
				<h2>${board.boardsubject}</h2>
				<hr>
				<div class="price">
					<span class="mr-2">작성자
						: &nbsp;${board.boardwriter}</span>
						<br>
					<c:if test="${board.emergency==0 }">
					글번호 : <c:out value="${board.boardnum }" />
					</c:if>
					<c:if test="${board.emergency==1 }">
					<p style="color:red;">긴급</p>
					</c:if>
					<c:if test="${board.emergency==2 }">
					<p style="color:green;">팝업</p>
					</c:if>
				</div>
				<hr>
				<div class="d-flex align-items-center mt-4 offers mb-1">
					<pre> <span
						class="ml-1 font-weight-bold">${board.boardcontent}</span></pre>
				</div>	
				
				<br> <br> <br> <br> <br> <br> <br>
				
				
				
				<div class="mt-3 text-right" style="display: inline;">
					<form method="get" role="form" action="/notice/register">
							<button data-oper="list" class="gradient" type="submit" >목록</button>
						<c:if test="${loginUser.admin == 1}">
							<button data-oper="modify" class="gradient" type="submit">수정</button>
							<button data-oper="register" class="gradient" type="submit">글쓰기</button>
						</c:if>
							
						<c:if test="${loginUser.admin ==1}">
							<button data-oper="delete" type="submit" class="gradient" >삭제</button>
						</c:if>
					</form>
				</div>
	           			<input type="hidden"  name="boardnum" id="boardnum" value="<c:out value="${board.boardnum}" />">
						<input type="hidden"  name="pageNum" value="<c:out value="${page.pageNum}" />">
	           			<input type="hidden"  name="amount" value="<c:out value="${page.amount}" />">
			</div>
		</div>
	</div>
	<br>
	<br>


<script type="text/javascript">
	$(document).ready(function(){

		var formObj = $("form");	//form태그를 지정
		$("button").on("click", function(e){	//클릭하면
			e.preventDefault();	//이동을 중지 시킴
			
			var operation = $(this).data("oper");	//클릭 한 데이터를 탐색(등록,삭제,목록) 
			//console.log(operation);			//콘솔창에 클릭한 데이터 중 하나가 출력(안써도 됨)
			
		 if(operation==="delete"){
	    		formObj.attr("method", "post");
				formObj.attr("action", "/notice/delete?boardnum= + ${board.boardnum}");	//post방식
			}
			if(operation==="list"){
				self.location= "/notice/list?pageNum="+${cri.pageNum}+"&amount="+${cri.amount};	
				return;
			 }
			if(operation==="register"){
				formObj.submit();
			}
			
			if(operation==="modify"){
				self.location="/notice/modify?boardnum="+${board.boardnum};
				return;
			}
				formObj.submit();			//클릭 한 데이터를 담아서 전송
		});
		
	});
	 
</script> 

			<%@ include file="../includes/footer.jsp"%>
</body>
</html>
