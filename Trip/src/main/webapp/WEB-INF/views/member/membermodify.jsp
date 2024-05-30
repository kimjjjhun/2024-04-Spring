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
    <link rel="stylesheet" href="../resources/css/list.css">
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

<div  class="page-title">
 <h3>HEADER</h3>
</div>
	
	<div class="page-title">
        <div class="container" style="margin-top: 150px">
            <c:forEach var="member" items="${member}">
            <h3 style="font-family: serif;">P R O F I L E P A G E<br><br>${member.member_email}</h3>
            <img src="/resources/profileimage/${member.image}" alt="" width="200" height="200" style="margin-left: 550px; margin-top: 30px; border: 2px solid #000;">
        	</c:forEach>
        </div>
    </div>
	
	<div class="container" style="margin-top: 150px">
		<p style="font-size: 20px">
			<strong>프로필 이미지 변경</strong>
		</p>
		
    		<form action="/profile" method="post" enctype="multipart/form-data">
       <label class="btn btn-primary btn-file">
       파일추가<input type="file" style="display: none;">
       </label>
        <button type="submit" style="border: none;">변경하기</button>
    		</form>
		<div>
		
		
		<div class="form-group">
	<p style="margin-top: 100px; font-size: 20px; display: flex; align-items: center;">
    <a class="nav-link"  href="/member/findpwd" style="text-decoration: none; display: flex; align-items: center;">
        비밀번호 변경
        <img alt="Left Arrow" src="/resources/image/left.png" style="margin-right: 5px;">
    </a>
</p>
		</div>
		</div>
	</div>

	
</body>

<%@include file="../includes/footer.jsp"%>
      
</html>
