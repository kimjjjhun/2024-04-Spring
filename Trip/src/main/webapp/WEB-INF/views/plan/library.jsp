<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
        #place,
        #place2 {
          display: none;
        }

        #sleep,
        #sleep2 {
          display: none;
        }

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
          width: 100px;
          /* 원하는 너비 값으로 조정 */
        }

        /* 높이 조정 */
        input[type="text"] {
          height: 30px;
          /* 원하는 높이 값으로 조정 */
        }
      </style>


      <!-- Custom styles for this template -->
    </head>

    <body>

      <main>
        <h1 class="visually-hidden">Sidebars examples</h1>

        <div class="d-flex flex-column flex-shrink-0 bg-light" style="width: 4.5rem;">
          <a href="/" class="d-block p-3 link-dark text-decoration-none" title="Icon-only" data-bs-toggle="tooltip"
            data-bs-placement="right">
            <svg class="bi" width="40" height="32">
              <use xlink:href="#bootstrap" />
            </svg>
            <span class="visually-hidden">Icon-only</span>
          </a>
          <ul class="nav nav-pills nav-flush flex-column mb-auto text-center">
            <li class="nav-item">
              <a href="#link1" class="step1"><br>전체 일정</a>
              <!--  <a href="#" class="nav-link active py-3 border-bottom" aria-current="page" title="Home" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="24" height="24" role="img" aria-label="Home"><use xlink:href="#home"/></svg>
        </a> 메뉴바 1번째 칸~-->
            </li>
            <li class="dayBtn">
                 <input type="hidden" name="dayCnt" value="3">
              <!-- <a href="#" class="nav-link py-3 border-bottom" title="Dashboard" data-bs-toggle="tooltip" data-bs-placement="right">
          <svg class="bi" width="24" height="24" role="img" aria-label="Dashboard"><use xlink:href="#speedometer2"/></svg>
        </a> 메뉴바 2번째 칸-->
            </li>
            <li>
              <a href="#" class="nav-link py-3 border-bottom" title="Products" data-bs-toggle="tooltip"
                data-bs-placement="right">
                <svg class="bi" width="24" height="24" role="img" aria-label="Products">
                  <use xlink:href="#grid" />
                </svg>
              </a>
            </li>
            <li>
              <a href="#" class="nav-link py-3 border-bottom" title="Customers" data-bs-toggle="tooltip"
                data-bs-placement="right">
                <svg class="bi" width="24" height="24" role="img" aria-label="Customers">
                  <use xlink:href="#people-circle" />
                </svg>
              </a>
            </li>
          </ul>
        </div>

        <!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 -->
        <div id="place">
          <div class="d-flex flex-column align-items-stretch flex-shrink-0 bg-white" style="width: 380px;">
            <span class="fs-5 fw-semibold">${plan.areaname}</span>
                              <input type="hidden" id="lat" name="lat" value="${area.lat}">
            <input type="hidden" id="lng" name="lng"  value="${area.lng}">
            <input type="text" name="go" value="${plan.go}" readonly="readonly">
            ~
            <input type="text" name="end" value="${plan.end}" readonly="readonly"><br>
            <div class="info">
            <c:forEach items="${planList}" var="plan">
               <c:if test="${plan.day eq plan.go}">
                  <div id="traffic">
                     <p>${plan.endTime - plan.startTime}</p><br>
                     명소
                     <b>터미널</b>
                  </div>
               </c:if>
               <c:if test="${plan.day ne plan.go}">
                  <p>숙소</p>
                  <b>${plan.content_id}</b>
               </c:if>
               <div class="seeInfo"></div>
               <c:if test="${plan.day ne plan.end}">
                  <p>숙소</p>
                  <b>${plan.content_id}</b>
               </c:if>
               <c:if test="${plan.day eq plan.end}">
                  <p>${plan.endTime - plan.startTime}</p><br>
                     명소
                     <b>터미널</b>
               </c:if>
               </c:forEach>
            </div>
            <div class="pac-card" id="pac-controls">
            </div>
            <div id="map"></div>
            <div id="infowindow-content">
              <img src="" width="16" height="16" id="plage-icon">
              <span id="place-name" class="title"></span><br>
              <span id="place-address"></span>
            </div>
            <div class="list-group list-group-flush border-bottom scrollarea">
            </div>
          </div>
        </div>
        <div id="place2" class="flex-shrink-0 p-3 bg-white" style="width: 350px;">
          <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
            <svg class="bi me-2" width="30" height="24" style="margin-top:15px;">
              <use xlink:href="#bootstrap" />
            </svg>
            <span class="fs-5 fw-semibold" style="margin-top:5px; padding-top:10px;">여행지 선택</span>
          </a>
          <div class="chooseContent" style="border:1px;">
          </div>
        </div>

        <!-- 장소 선택End --><!-- 장소 선택End --><!-- 장소 선택End --><!-- 장소 선택End --><!-- 장소 선택End --><!-- 장소 선택End -->

      </main>



      <script src="../resources/js/bootstrap.bundle.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-nI2V_bsNjQF5ZQ4mlq8o8sr1oZ6bLi0&libraries=places&callback=myMap"></script>
      <script src="../resources/js/sidebars.js"></script>
    </body>
    <script>
      function myMap() {
        const myLatLng = { lat: 35.8473612313022, lng: 129.218053667485 };

        var marker;
        var label;
        var flightPath;
        
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

          if (event.target && event.target.matches(".deleteBtn")) {
            console.log("삭제 버튼 동작");
            var index = parseInt(event.target.getAttribute('data-index'), 10);
            deleteMarker(index);
          }

        });

        const labels = "123456789";
        let labelIndex = 0;
        var markers = [];

        function geocodeAddress(geocoder, resultMap, address) {
          console.log('지오코딩 함수 실행');

          geocoder.geocode({ 'address': address }, function (result, status) {
            console.log('지오코딩 결과:', result);
            console.log('지오코딩 상태:', status);

            if (status === 'OK') {
              resultMap.setCenter(result[0].geometry.location);
              resultMap.setZoom(18);
              var image = {
                url: "../resources/image/주석_2024-05-21_153140-removebg-preview.png", // 아이콘 이미지 경로
                scaledSize: new google.maps.Size(55, 55), // 아이콘 크기 설정 (가로, 세로)

              }

              marker = new google.maps.Marker({
                map: resultMap,
                position: result[0].geometry.location,
                icon: image,
                label: {
                  text: (markers.length+1).toString(),
                  fontSize: "30px",
                  fontWeight: "bold",
                  color: '#ffffff',
                  labelOrigin: new google.maps.Point(30, 30)
                }
              });

              markers.push(marker);

              console.log('위도:', marker.position.lat());
              console.log('경도:', marker.position.lng());

              updatePolyline();

            } else {
              alert('지오코드가 다음의 이유로 성공하지 못했습니다: ' + status);
            }
          });
        }



        function updatePolyline() {
          console.log("update")
          var path = markers.map(marker => marker.getPosition());

          console.log("path 값 : ", markers);

          if (flightPath) {
              flightPath.setMap(null);
            }
          
          flightPath = new google.maps.Polyline({
            path: path,
            geodesic: true,
            strokeColor: "#FF0000",
            strokeOpacity: 1.0,
            strokeWeight: 2
          });

          flightPath.setMap(map);
        }

        function deleteMarker(index) {
          if (markers[index]) {
            markers[index].setMap(null);
            markers.splice(index, 1);
            relabelMarkers();
            updatePolyline();
          }
        }

        function relabelMarkers(){
           markers.forEach((marker, i) => {
              marker.setLabel({
                 text:(i+1).toString(),
                 fontSize: "30px",
                   fontWeight: "bold",
                   color: '#ffffff',
                   labelOrigin: new google.maps.Point(30, 30)
              })
           })
        }
      }

      document.addEventListener('DOMContentLoaded', myMap);
    </script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function () {
         
         updateBtn();
         
        function updateBtn(){
          var dayCnt = $("input[name='dayCnt']").val();
          console.log(dayCnt);
             var str = "";
          for(var i=1; i<= dayCnt; i++){
             str += "<button class='day'>"
             str += i+"일차"
             str += "</button><br>"
             console.log(i);
             
          }
             $(".dayBtn").html(str);
             $(".day").on("click",function(){
                var day = $(this).text();
                var date = 
                console.log(day);
                
                var str2 ="";
                   str2 += "<h2>"+day+"</h2>"
                   str2 += "<br><p>" + info + "</p>"
                   $(".seeInfo").html(str2);
             })
       }
      })



</script>    
</html>