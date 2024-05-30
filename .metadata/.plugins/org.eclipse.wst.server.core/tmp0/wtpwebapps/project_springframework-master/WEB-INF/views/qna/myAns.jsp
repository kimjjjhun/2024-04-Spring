<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ include file="../includes/header2.jsp"%>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css" 
	href="/resources/slick/slick-theme.css" />  
<link rel="stylesheet" href="/resources/css/templatemo-style.css">    
<link rel="stylesheet"   
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script 
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.slim.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/css/searchbar.css">
<style>

h2 {
	font-weight: border;
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
	width: 65%;
	margin: 0 auto;
	margin-top : 180px;
	background-color:#EFEFEF;
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

.emergency{
color:red;
font: bold;
}

</style>

<div class="tm-page-wrap mx-auto">

	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row gx-3">
			    <div class="col">
			    	 <div class="p-1 border bg-light">
						<h3 style="text-align: center;">
							<strong>${loginUser.userNick} 님</strong>의 질문 글 </h3>
			    	 	<table id="listTable">
							<tr>
								<th width=10%>글번호</th>
								<th width=40%>제목</th>
								<th width=20%>작성일자</th>
								<th width=20%>작성자</th>
								<th width=10%>조회수</th>
							</tr>
		
								<c:forEach var="all" items="${all}">
									<tr>	
										<td>${all.boardnum}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td> 
										<td><a class="move" href="/qna/read?boardnum=${all.boardnum}">${all.boardsubject }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>&nbsp;&nbsp;</td>
										<td>${all.regidate }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
										<td>${all.boardwriter}&nbsp;&nbsp;&nbsp;&nbsp;</td>
										<td>${all.readcount}&nbsp;&nbsp;&nbsp;&nbsp;</td>
									</tr>
								</c:forEach>
						</table>
			    	 </div>
			   	 </div>
	    	 </div>
    	 </div>
    	 
    	 
   	 </section>
   	 
	<section class="p-5 tm-container-outer tm-bg-gray">
		<div class="container">
			<div class="row gx-6">
			    <div class="col">
			    	 <div class="p-3 border bg-light">
			    	 <p>
						<h3 style="text-align: center;">
							<strong>${loginUser.userNick} 님</strong> 받은 답변 현황 </h3>
						</p>
			    	 	<table class="table table-hover">
					    <thead>
					    	<th>제목</th>
					    	<th>작성일</th>
					    	<th>답변여부</th>
					    </thead>
					    <c:forEach items="${ans}" var="ans">
					    <tbody>
					      <tr>

					        <td><a class="move" href="/qna/read?boardnum=${ans.boardnum}">${ans.boardsubject}</a></td>
					        <td>${ans.regidate}</td>
			        		<td>완료</td>
					      </tr>
					     </tbody>
					      </c:forEach>	      		
	      			</table>
			    	 </div>
			   	 </div>
			   	 
   	 		    <div class="col">
			    	 <div class="p-3 border bg-light">
						<h3 style="text-align: center;">
							<strong>${loginUser.userNick} 님</strong> 미답변 현황 </h3>
			    	 	<table class="table table-hover">
					    <thead>
					    	<th>제목</th>
					    	<th>작성일자</th>
					    	<th>답변여부</th>					    	
					    </thead>
					    <c:forEach items="${notAns}" var="notAns">
					    <tbody>
					      <tr>
					        <td><a class="move" href="/qna/read?boardnum=${notAns.boardnum}">${notAns.boardsubject}</a></td>
  					        <td><fmt:parseDate var = "datePase" value="${notAns.regidate}" pattern="yyyy-MM-dd HH:mm"/><fmt:formatDate value="${datePase}" pattern="yyyy-MM-dd HH:mm" /></td>
			        		<td>미완료</td>
					      </tr>
					     </tbody>
					      </c:forEach>	      		
	      			</table>
			    	 </div>
			   	 </div>
	    	 </div>
    	 </div>
   	 <a href="/qna/list" class="gradient right">목록</a>
   	 </section>
</div>	 

	<%@ include file="../includes/footer.jsp"%>
	
