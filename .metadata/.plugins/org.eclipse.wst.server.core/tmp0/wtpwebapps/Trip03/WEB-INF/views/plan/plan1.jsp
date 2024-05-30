<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Sidebars · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sidebars/">

    

    <!-- Bootstrap core CSS -->
    <link href="../resources/css/modal.css" rel="stylesheet">
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
  </head>
  <body>


<main>
  <h1 class="visually-hidden">Sidebars examples</h1>

  <div class="d-flex flex-column flex-shrink-0 bg-light" style="width: 4.5rem;">
    <a href="/" class="d-block p-3 link-dark text-decoration-none" title="Icon-only" data-bs-toggle="tooltip" data-bs-placement="right">
      <svg class="bi" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
      <span class="visually-hidden">Icon-only</span>
    </a>
    <ul class="nav nav-pills nav-flush flex-column mb-auto text-center">
      <li class="nav-item">
      <a href="#" class="step">STEP1<br>날짜 확인</a>
       <!--  <a href="#" class="nav-link active py-3 border-bottom" aria-current="page" title="Home" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="24" height="24" role="img" aria-label="Home"><use xlink:href="#home"/></svg>
        </a> 메뉴바 1번째 칸~-->
      </li>
      <li>
      <a href="#" class="step">STEP2<br>장소 선택</a>
        <!-- <a href="#" class="nav-link py-3 border-bottom" title="Dashboard" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="24" height="24" role="img" aria-label="Dashboard"><use xlink:href="#speedometer2"/></svg>
        </a> 메뉴바 2번째 칸-->
      </li>
      <li>
      <a href="#" class="step">STEP3<br>숙소 설정</a>
        <!-- <a href="#" class="nav-link py-3 border-bottom" title="Orders" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="24" height="24" role="img" aria-label="Orders"><use xlink:href="#table"/></svg>
        </a> 메뉴바 3번째 칸-->
      </li>
      <li>
        <a href="#" class="nav-link py-3 border-bottom" title="Products" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="24" height="24" role="img" aria-label="Products"><use xlink:href="#grid"/></svg>
        </a>
      </li>
      <li>
        <a href="#" class="nav-link py-3 border-bottom" title="Customers" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="24" height="24" role="img" aria-label="Customers"><use xlink:href="#people-circle"/></svg>
        </a>
      </li>
    </ul>
    <div class="dropdown border-top">
      <a href="#" class="d-flex align-items-center justify-content-center p-3 link-dark text-decoration-none dropdown-toggle" id="dropdownUser3" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="https://github.com/mdo.png" alt="mdo" width="24" height="24" class="rounded-circle">
      </a>
      <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser3">
        <li><a class="dropdown-item" href="#">New project...</a></li>
        <li><a class="dropdown-item" href="#">Settings</a></li>
        <li><a class="dropdown-item" href="#">Profile</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">Sign out</a></li>
      </ul>
    </div>
  </div>

  <div class="d-flex flex-column align-items-stretch flex-shrink-0 bg-white" style="width: 380px;">
      <span class="fs-5 fw-semibold">${areaname }</span>
      <div class="list-group list-group-flush border-bottom scrollarea">
      <c:forEach var="content" items="${list}" >
      <div class="d-flex w-100 align-items-center justify-content-between">
      <input type="text" name="content_id" value="${content.content_id }"> <br>
      ${content.addr2 }
      <button class="addBtn" value="${content.content_id }">+</button>
      </div>
      </c:forEach>
      </div>
  </div>
 <div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-5 fw-semibold">내가 선택한 곳</span>
    </a>
    <button class="dropBtn" value=1>장소 설정 초기화</button>
    <div class="list-group list-group-flush border-bottom scrollarea">
    <ul class="content">
    
    </ul>
    </div>
    
  </div>
<!-- [ 영국 런던을 중심으로 구글지도 만들기 ] -->
<div>
<div id="googleMap" style="position:absolute; display:inline-block; width: 80%;height:100%;"></div>
</div>
</main>

    <script src="../resources/js/bootstrap.bundle.min.js" type="text/javascript"></script>

      <script src="../resources/js/sidebars.js" type="text/javascript"></script>
      
      <script type="text/javascript" src="../resources/js/plan.js"></script>
      
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      
  </body>
  <script>
   function myMap(){
      var mapOptions = { 
            center:new google.maps.LatLng(33.4014287623403,126.675670597493),
            zoom:11
      };
 
      var map = new google.maps.Map( 
             document.getElementById("googleMap") 
            , mapOptions );
   }//end Map
   

   
  $(document).ready(function(){
   
	var planUL = $(".content")
   
	showList();
	
   $(".addBtn").on("click", function(e){
	 console.log("insert...")
   var content_id = $(this).val();
	 var clickedButton = $(this);
	 
	 console.log(content_id)
	 
	 var plan = {
		 plan_id:"1",
		 content_id:content_id
	 }
	 
	 planService.insert(plan, function(result){
		console.log(result)
		showList();
		clickedButton.hide();
	 })
   })
   
 
   
   
   //이벤트 위임?
   $(document).on("click", ".deleteBtn", function(e) {
    console.log("delete");
    var tcontent_id = $(this).val();
    console.log(tcontent_id);
    
    planService.deleted(tcontent_id, function(result){
    	console.log(result)
    	showList()
    })
});
   
   
   function showList(){
	   planService.getList({plan_id:1}, function(data){
		 
		   console.log(data)
		   var str = ""
		   
		   if(data == null || data.length==0){
			planUL.html("")
			console.log("설마 여기인가요")
			return ;
		   }
		   console.log("여기찍히나요")
		   for(var i = 0; i < data.length; i++){
			   str += data[i].content_id +"<br>"
			   str += data[i].addr2
			   str += "<button class='deleteBtn' value='"+ data[i].tcontent_id +"'>-</button><br>"
		   }
		   planUL.html(str)
		   
	   })
   } //End showList
   $(".dropBtn").on("click", function(e){
	   console.log("drop...")
	   
	 var plan_id = $(this).val();
	   
	   console.log(plan_id)
	   
	   planService.drop(plan_id, function(result){
		 console.log(result)
		 showList()
		 
		   
	   })
   })

   
   
  })
</script>  
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-nI2V_bsNjQF5ZQ4mlq8o8sr1oZ6bLi0&callback=myMap"></script>
  
</html>
