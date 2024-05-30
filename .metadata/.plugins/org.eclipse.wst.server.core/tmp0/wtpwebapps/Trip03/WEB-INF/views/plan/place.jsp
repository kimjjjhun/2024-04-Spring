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
    #place, #place2{
    display:none;
    }
    
    #sleep, #sleep2{
    display:none;}
    
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
      
      input[type="text"] {
    width: 100px; /* 원하는 너비 값으로 조정 */
}

/* 높이 조정 */
input[type="text"] {
    height: 30px; /* 원하는 높이 값으로 조정 */
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
      <a href="#link1" class="step1">STEP1<br>날짜 확인</a>
       <!--  <a href="#" class="nav-link active py-3 border-bottom" aria-current="page" title="Home" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="24" height="24" role="img" aria-label="Home"><use xlink:href="#home"/></svg>
        </a> 메뉴바 1번째 칸~-->
      </li>
      <li>
      <a href="#link2" class="step2">STEP2<br>장소 선택</a>
        <!-- <a href="#" class="nav-link py-3 border-bottom" title="Dashboard" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="24" height="24" role="img" aria-label="Dashboard"><use xlink:href="#speedometer2"/></svg>
        </a> 메뉴바 2번째 칸-->
      </li>
      <li>
      <a href="#link3" class="step3">STEP3<br>숙소 설정</a>
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
  </div>

<!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 -->
<div id ="place">
  <div class="d-flex flex-column align-items-stretch flex-shrink-0 bg-white" style="width: 380px;">
      <span class="fs-5 fw-semibold">${areaname }</span>
      <div class="pac-card" id="pac-controls">
         <div>
            <div id="title">
               Autocomplete search
            </div>
            <div id="type-selector" class="pac-controls" style="backgroundcolor:skyblue;">
               <input type="radio" name="type" id="changetype-all" checked="checked">
               <label for="changetype-all">All</label>
               
               <input type="radio" name="type" id="changetype-establishment">
               <label for="changetype-establishment">Establishments</label>

               <input type="radio" name="type" id="changetype-address">
               <label for="changetype-address">Addresses</label>

               <input type="radio" name="type" id="changetype-geocode">
               <label for="changetype-geocode">Geocodes</label>
            </div>
            <div id="strict-bounds-selector" class="pac-controls">
               <input type="checkbox" id="use-strict-bounds" value="">
               <label for="use-strict-bounds">Strict Bounds</label>
            </div>
         </div>
         <div id="pac-container">
            <input id="pac-input" type="text" placeholder="Enter a location">
         </div>
      </div>
      <div id="map"></div>
      <div id="infowindow-content">
         <img src="" width="16" height="16" id="plage-icon">
         <span id="place-name" class="title"></span><br>
         <span id="place-address"></span>
      </div>
      <div class="list-group list-group-flush border-bottom scrollarea" >
      <c:forEach var="content" items="${list}">
         <div class="d-flex w-100 align-items-center justify-content-between">
         <hr>
         <b><button class="contentNameBtn" style="width:100px;" data-content-id="${content.content_id}">${content.content_id}</button></b>
         <input class="contentType" type="text" data-content-type="${content.contentType}" value="${content.contentType}" readonly="readonly">
        <br><input id="addr2" class="contentAdd" type="text" data-content-addr2="${content.addr2}" value="${content.addr2}" readonly="readonly">
         <button type="button" id="checkBtn" class="checkBtn" >+</button>
         <hr>
      </div>
      </c:forEach>
      </div>
  </div>
  </div>
 <div id="place2" class="flex-shrink-0 p-3 bg-white" style="width: 350px;">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi me-2" 
      width="30" height="24" style="margin-top:15px;"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-5 fw-semibold" style="margin-top:5px; padding-top:10px;">여행지 선택</span>
    </a>
    <button class="dropBtn">장소 설정 초기화</button>
         <div class="chooseContent" style="border:1px;">
         </div>
  </div>
 
  <!-- 장소 선택End --><!-- 장소 선택End --><!-- 장소 선택End --><!-- 장소 선택End --><!-- 장소 선택End --><!-- 장소 선택End -->
  
  <!-- 숙소 선택 --><!-- 숙소 선택 --><!-- 숙소 선택 --><!-- 숙소 선택 --><!-- 숙소 선택 --><!-- 숙소 선택 -->
  <div id="sleep">
    <div class="d-flex flex-column align-items-stretch flex-shrink-0 bg-white" style="width: 380px;">
      <span class="fs-5 fw-semibold">숙소 선택</span>
      <div class="pac-card" id="pac-controls">
         <div>
            <div id="title">
               Autocomplete search
            </div>
            <div id="type-selector" class="pac-controls" style="backgroundcolor:skyblue;">
               <input type="radio" name="type" id="changetype-all" checked="checked">
               <label for="changetype-all">All</label>
               
               <input type="radio" name="type" id="changetype-establishment">
               <label for="changetype-establishment">Establishments</label>

               <input type="radio" name="type" id="changetype-address">
               <label for="changetype-address">Addresses</label>

               <input type="radio" name="type" id="changetype-geocode">
               <label for="changetype-geocode">Geocodes</label>
            </div>
            <div id="strict-bounds-selector" class="pac-controls">
               <input type="checkbox" id="use-strict-bounds" value="">
               <label for="use-strict-bounds">Strict Bounds</label>
            </div>
         </div>
         <div id="pac-container">
            <input id="pac-input" type="text" placeholder="Enter a location">
         </div>
      </div>
      <div id="map"></div>
      <div id="infowindow-content">
         <img src="" width="16" height="16" id="plage-icon">
         <span id="place-name" class="title"></span><br>
         <span id="place-address"></span>
      </div>
      <div class="list-group list-group-flush border-bottom scrollarea" >
      <c:forEach var="content" items="${list}">
         <div class="d-flex w-100 align-items-center justify-content-between">
         <hr>
         <c:if test="${content.contentType == '숙박시설'}">
         <b><button class="contentNameBtn" style="width:100px;" data-content-id="${content.content_id}">${content.content_id}</button></b>
         <input class="contentType" type="text" data-content-type="${content.contentType}" value="${content.contentType}" readonly="readonly">
        <br><input id="addr2" class="contentAdd" type="text" data-content-addr2="${content.addr2}" value="${content.addr2}" readonly="readonly">
         <button type="button" id="checkBtn" class="checkBtn" >+</button>
         <hr>
         </c:if>
      </div>
      </c:forEach>
      </div>
  </div>
  </div>
 <div id="sleep2" class="flex-shrink-0 p-3 bg-white" style="width: 350px;">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi me-2" width="30" height="24" style="margin-top:15px;"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-5 fw-semibold" style="margin-top:5px; padding-top:10px;">숙소 선택</span>
    </a>
         <div class="chooseAccommodation" style="border:1px;">
         </div>
  </div>
  <!-- 숙소 선택End --><!-- 숙소 선택End --><!-- 숙소 선택End --><!-- 숙소 선택End --><!-- 숙소 선택End --><!-- 숙소 선택End -->
  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"><input name="contentName" value="contentName" readonly="readonly" style="border:none;"></h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <input name="contentType" value="contentType" readonly="readonly" style="border:none;"><br>
        <input name="contentAdd" value="contentAdd" readonly="readonly" style="border:none;">
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
        </div>
        
      </div>
    </div>
  </div>
<div>
<div id="googleMap" style="position:absolute; display:inline-block; width: 80%;height:100%;"></div>
</div>
</main>

 

    <script src="../resources/js/bootstrap.bundle.min.js"></script>

      <script src="../resources/js/sidebars.js"></script>
  </body>
   <script>
  function myMap() {
      const myLatLng = { lat: 35.8473612313022, lng: 129.218053667485 };

      var marker;
      var deleteButtons = document.querySelectorAll('.deleteBtn');
      
      var map = new google.maps.Map(document.getElementById("googleMap"), {
          zoom: 14,
          center: myLatLng
      });

      var geocoder = new google.maps.Geocoder();

      console.log('지도 진입');

      document.body.addEventListener('click', function (event) {
          if (event.target && event.target.matches('.checkBtn')) {
              console.log('버튼 클릭 이벤트 실행');
              var addr2Input = event.target.previousElementSibling;
              console.log('이건 됨?')
              if (addr2Input) {
                  var address = addr2Input.value;
                  console.log('입력된 주소:', address);
                  geocodeAddress(geocoder, map, address);
              }
          }
          
      });
      
      const labels = "123456789";
      let labelIndex = 0;
      
      function geocodeAddress(geocoder, resultMap, address) {
          console.log('지오코딩 함수 실행');

          geocoder.geocode({ 'address': address }, function (result, status) {
              console.log('지오코딩 결과:', result);
              console.log('지오코딩 상태:', status);

              if (status === 'OK') {
                  resultMap.setCenter(result[0].geometry.location);
                  resultMap.setZoom(18);
                  var image ={
                        url: "../resources/image/주석_2024-05-21_153140-removebg-preview.png", // 아이콘 이미지 경로
                          scaledSize: new google.maps.Size(55, 55), // 아이콘 크기 설정 (가로, 세로)
                        
                  }
                 
                  marker = new google.maps.Marker({
                      map: resultMap,
                      position: result[0].geometry.location,
                      icon : image,
                      label: {
                         text: labels[labelIndex++ % labels.length],
                          fontSize : "30px",
                          fontWeight : "bold",
                          color: '#ffffff',
                          labelOrigin: new google.maps.Point(30, 30)
                      }
                  });

                  console.log('위도:', marker.position.lat());
                  console.log('경도:', marker.position.lng());
                  
                  
              } else {
                  alert('지오코드가 다음의 이유로 성공하지 못했습니다: ' + status);
              }
          });
      }
      
      var card = document.getElementById('pac-card');
      var input = document.getElementById('pac-input');
      var types = document.getElementById('type-selector');
      var strictBounds = document.getElementById('strict-bounds-selector');

      map.controls[google.maps.ControlPosition.TOP_CENTER].push(card);

      var autocomplete = new google.maps.places.Autocomplete(input);

      autocomplete.bindTo('bounds', map);
      autocomplete.setFields(['address_components', 'geometry', 'icon', 'name']);

      var infowindow = new google.maps.InfoWindow();
      var infowindowContent = document.getElementById('infowindow-content');
      infowindow.setContent(infowindowContent);

      var marker = new google.maps.Marker({
          map: map,
          anchorPoint: new google.maps.Point(0, -29)
      });

      autocomplete.addListener('place_changed', function () {
          infowindow.close();
          marker.setVisible(false);
          var place = autocomplete.getPlace();
          if (!place.geometry) {
              window.alert("상세 정보가 없습니다. '" + place.name + "'");
              return;
          }

          if (place.geometry.viewport) {
              map.fitBounds(place.geometry.viewport);
          } else {
              map.setCenter(place.geometry.location);
              map.setZoom(17);
          }
          marker.setPosition(place.geometry.location);
          marker.setVisible(true);

          document.getElementById('latclick').value = marker.getPosition().lat();
          document.getElementById('lngclick').value = marker.getPosition().lng();

          var address = '';
          if (place.address_components) {
              address = [
                  (place.address_components[0] && place.address_components[0].short_name || ''),
                  (place.address_components[1] && place.address_components[1].short_name || ''),
                  (place.address_components[2] && place.address_components[2].short_name || '')
              ].join('  ');
          }

          document.getElementById("address").value = address;
          document.getElementById("place_name").value = place.name;

          infowindowContent.children['place-icon'].src = place.icon;
          infowindowContent.children['place-name'].textContent = place.name;
          infowindowContent.children['place-address'].textContent = address;
          infowindow.open(map, marker);
      });

      function setupClickListener(id, types) {
          var radioButton = document.getElementById(id);
          radioButton.addEventListener('click', function () {
              autocomplete.setTypes(types);
          });
      }

      setupClickListener('changetype-all', []);
      setupClickListener('changetype-address', ['address']);
      setupClickListener('changetype-establishment', ['establishment']);
      setupClickListener('changetype-geocode', ['geocode']);

      document.getElementById('use-strict-bounds').addEventListener('click', function () {
          console.log("Checkbox clicked new state = " + this.checked);
          autocomplete.setOptions({ strictBounds: this.checked });
      });
  }

  document.addEventListener('DOMContentLoaded', myMap);
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
   $(document).ready(function(){

         var list = [];
         
      $(".checkBtn").on("click",function(e){
         
         var content_id = $(this).siblings().find(".contentNameBtn").text();
         var contentType = $(this).siblings(".contentType").data("content-type");
         var addr2 = $(this).siblings(".contentAdd").data("content-addr2");
         
         
         console.log(content_id);
         console.log(contentType);
         console.log(addr2);
         
         console.log("진입");
         
         list.push({
            content_id : content_id,
            contentType : contentType,
            addr2 : addr2
         })
         
         $(".chooseContent").find("input[name='content_id_c']").val(content_id);
         $(".chooseContent").find("input[name='contentType_c']").val(contentType);
         $(".chooseContent").find("input[name='addr2_c']").val(addr2);
         
         
         updateHtml();
         
         
         
      /*    for(var i=0; i<8; i++){
            if(i >= 8){
               alert("하루 일정은 8개까지 등록 가능합니다!");
            }
            
         }
         ChooseUrl.html(str); */
         
         /* var content_id_c = $(".chooseContent").find("input[name='content_id_c']");
         var contentType_c = $(".chooseContent").find("input[name='contentType_c']");
         var addr2_c = $(".chooseContent").find("input[name='addr2_c']");
         
         content_id_c.val(content_id);
         contentType_c.val(contentType);
         addr2_c.val(addr2); */
         
         
         //전달 값 저장 리스트 출력
         /*  $.ajax({
              url : '/plan/choose',
              type : 'post',
                data: {
                   plan_id : plan_id,
                   content_id : content_id
                },
                success: function(response) {
                    console.log(response);
                    // 모달 닫기
                },
                error: function(xhr, status, error) {
                    console.error(error);
                }
           }); //End Ajax   */
      })
   
      function updateHtml() {
            var str = "";
            for (var i = 0; i < list.length; i++) {
                str += "<div class='contentItem'>";
                str += "<input name='c_number' value='" + (i + 1) + "' style='width:20px; background-color:skyblue;'>";
                str += "<input name='content_id_c" + i + "' value='" + list[i].content_id + "' style='border:none;'>";
                str += "<input name='contentType_c" + i + "' value='" + list[i].contentType + "' style='border:none;'>";
                str += "<input name='addr2_c" + i + "' value='" + list[i].addr2 + "' style='border:none;'>";
                str += "<button class='deleteBtn' data-index='" + i + "'>삭제</button>";
                str += "</div>";
            }
            $(".chooseContent").html(str);
        }
      
      $(document).on("click", ".dropBtn", function(){
    	  console.log("작동은 하니?")
    	list.splice(0, list.length);
    	  updateHtml();
    	  
      });

        $(document).on("click", ".deleteBtn", function() {
            var index = $(this).data("index");
            list.splice(index, 1);
            updateHtml();
        });
      
      var modal = $(".modal");
      
         $(".contentNameBtn").on("click",function(){
            
            var content_id = $(this).siblings().find(".contentNameBtn").text();
            var contentType = $(this).siblings(".contentType").data("content-type");
            var addr2 = $(this).siblings(".contentAdd").data("content-addr2");
            
            console.log(content_id);
            console.log(contentType);
            console.log(addr2);
            
            var modalContentId = modal.find("input[name='contentName']");
            var modalContentType = modal.find("input[name='contentType']");
            var modalContentAdd = modal.find("input[name='contentAdd']");
            
            modalContentId.val(content_id);
            modalContentType.val(contentType);
            modalContentAdd.val(addr2);
            
            console.log(modalContentId.val());
            console.log(modalContentType.val());
            console.log(modalContentAdd.val());
            
            $(".modal").show();
         })
         
         $(".close").on("click",function(){
            $(".modal").hide();
         })
         
           function handleClick(event) {
            event.preventDefault();
            console.log("앵커 태그 클릭됨");
            
            var checkEvent = '숙소';
            

        }
         
         $(".step2").on("click", function(){
        console.log('테스트1');	 
        var placeElement = document.getElementById("place");
        var placeElement2 = document.getElementById("place2");
        var sleepElement = document.getElementById("sleep");
        var sleepElement2 = document.getElementById("sleep2");

        placeElement.style.display = "block";
        placeElement2.style.display = "block"; 
        sleepElement.style.display = "none";
        sleepElement2.style.display = "none";
         });
         
         $(".step3").on("click", function(){
        	 console.log("테스트2")
             var placeElement = document.getElementById("place");
             var placeElement2 = document.getElementById("place2");
             var sleepElement = document.getElementById("sleep"); 
             var sleepElement2 = document.getElementById("sleep2");

             placeElement.style.display = "none";
             placeElement2.style.display = "none"; 
             sleepElement.style.display = "block";
             sleepElement2.style.display = "block";
         })
   })
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-nI2V_bsNjQF5ZQ4mlq8o8sr1oZ6bLi0&libraries=places&callback=myMap"></script>
  
</html>