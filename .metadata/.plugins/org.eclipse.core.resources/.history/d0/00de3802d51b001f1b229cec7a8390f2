<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
   <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link href="../resources/css/modal2.css" rel="stylesheet">
    <link href="../resources/css/calender.css" rel="stylesheet">
<link href="../resources/css/bootstrap.min.css" rel="stylesheet">

    <style>
    
    #place, #place2{
    display:none;}
    
    #place {position:relative; padding-right:10px;}
    
    #place2 {position:absolute; right:-89%; top:0; z-index:10; height:100%; border-left:1px solid #ddd;}
    
    #sleep{position:relative; padding-right:10px;}
    
    #sleep2{position:absolute; right:-89%; top:0; z-index:10; height:100%; border-left:1px solid #ddd;}
    
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

#timeSet > li {
display:inline-block;}

.set{
display:inline-block;}

.timeSetter{
display:inline-block;}

ul ,li , ins {
    text-decoration: none; /* 밑줄 제거 */
    list-style-type: none;
    /* 다른 스타일 적용 */
}
ul , li{
width:80px;
}
li{
display:inline-block;}

#day{width:500px;}

#timeInput{
width:115px;
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
      <li>
      </li>
      <li>
      </li>
      <li>
      <button class = "objsubmit">일정생성</button>
      </li>
    </ul>
  </div>
<!-- modal -->

<!-- modalEnd -->
<form id ="places" action="/plan/library" method="get">
<!-- 날짜 선택 --><!-- 날짜 선택 --><!-- 날짜 선택 --><!-- 날짜 선택 --><!-- 날짜 선택 --><!-- 날짜 선택 -->
<div id ="day">

<div class="d-flex flex-column align-items-stretch flex-shrink-0 bg-white" style="width: 380px;">
<h2 style="font-weight:bold;">${areaname }</h2>
<h5 id="dateRange" style="font-weight:bold;"></h5>

<div class="timeSetter">
<h6>여행시간 상세설정</h6><label class="selectDayBtn" for="modal-toggle"><input type="text" class="totalTime" value="총시간" readonly="readonly" style="border: none; width:300px;"><br>  일정 수정하기</label> <br>
<p class="set">일자</p>
<ul class="timeset">
<ins class="date2"></ins>
</ul>
<p class="set">요일</p>
<ul class="timeset">
<ins class="date3"></ins>
</ul>
<p class="set">시작시간</p>
<ul class="timeset">
<ins class="date4"></ins>
</ul>
<p class="set">종료시간</p>
<ul class="timeset">
<ins class="date5"></ins>
</ul>
<button class="timeSetBtn">시간 설정 완료</button>
</div>
</div>
<div class="modal-container">
  <input id="modal-toggle" type="checkbox">
  
  <label class="modal-backdrop" for="modal-toggle"></label>
  <div class="modal-content">
    <label class="modal-close" for="modal-toggle">&#x2715;</label>
    <h2>여행 기간을 선택해주세요</h2><hr />
    <!-- 달력 추가 -->
<div id="app"></div>

<!-- 달력 끝 -->
  </div>          
</div>  
</div>

<!-- 날짜 선택End --><!-- 날짜 선택End --><!-- 날짜 선택End --><!-- 날짜 선택End --><!-- 날짜 선택End -->
<!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 --><!-- 장소 선택 -->
<div id ="place">
  <div class="d-flex flex-column align-items-stretch flex-shrink-0 bg-white" style="width: 380px;">
      <span class="fs-5 fw-semibold">${areaname }</span>
                  <input type="hidden" id="lat" name="lat" value="${area.lat}">
            <input type="hidden" id="lng" name="lng"  value="${area.lng}">
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
  
  <div id="place2" class="flex-shrink-0 p-3 bg-white" style="width: 350px;">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi me-2" 
      width="30" height="24" style="margin-top:15px;"><use xlink:href="#bootstrap"/></svg>
      <span id="totalRunTime"></span>
    </a>
         <div class="chooseContent" style="border:1px;">
         </div>
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
      <c:forEach var="content" items="${sleep}">
         <div class="d-flex w-100 align-items-center justify-content-between">
         <hr>
         <c:if test="${content.contentType == '숙소'}">
         <b><button class="contentNameBtn" style="width:100px;" data-content-id="${content.content_id}">${content.content_id}</button></b>
         <input class="contentType" type="text" data-content-type="${content.contentType}" value="${content.contentType}" readonly="readonly">
        <br><input id="addr2" class="contentAdd" type="text" data-content-addr2="${content.addr2}" value="${content.addr2}" readonly="readonly">
         <button type="button" class="checkInBtn" class="checkInBtn" >+</button>
         <hr>
         </c:if>
      </div>
      </c:forEach>
      </div>
  </div>
  <div id="sleep2" class="flex-shrink-0 p-3 bg-white" style="width: 350px;">
    <a href="/" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom">
      <svg class="bi me-2" width="30" height="24" style="margin-top:15px;"><use xlink:href="#bootstrap"/></svg>
      <span class="fs-5 fw-semibold" style="margin-top:5px; padding-top:10px;">숙소 선택 </span>
      <span class="fs-5 fw-semibold" id="daysdiff" style="margin-top:5px; padding-top:10px;"></span>
    </a>
         <div class="chooseSleep" style="border:1px;">
         </div>
  </div>
  </div>
 
  <!-- 숙소 선택End --><!-- 숙소 선택End --><!-- 숙소 선택End --><!-- 숙소 선택End --><!-- 숙소 선택End --><!-- 숙소 선택End -->
  </form>
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
<script src="https://unpkg.com/react@17/umd/react.development.js"></script>
<script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js"></script>
  </body>
  
  
  <script>
  window.addEventListener('DOMContentLoaded', function() {
	    var modalToggle = document.getElementById('modal-toggle');
	    modalToggle.checked = true; // 모달 창 체크 박스를 선택하여 모달이 열리도록 설정
	  });
  </script>
<script>
/*Selector Range*/
class Range extends React.Component {
    constructor(props) {
        super(props);
        this.monthNames = ["1월", "2월", "3월", "4월", "5월", "6월",
            "7월", "8월", "9월", "10월", "11월", "12월"];
        this.daysNames = ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'];
    }
    dateInfo(date){
        let dateRow;
        let rangeMonthText = 'Choose a date';
        if(date){
            dateRow = React.createElement('td', { rowSpan: '2' }, React.createElement('span', { className: 'calendar__range-date' }, date.getDate()));
            rangeMonthText = this.monthNames[date.getMonth()]+' '+ date.getFullYear();
        }
        return (
            React.createElement('tr', null,
                dateRow,
                React.createElement('td', null,
                    React.createElement('span', { className: "calendar__range-month" },
                        rangeMonthText
                    )
                )
            )
        );
    }
    dumbDate(date, title){
        let day = (date)?(React.createElement('tr', null,
            React.createElement('td', null,
                React.createElement('span', { className: 'calendar__range-day' }, this.daysNames[date.getDay()])
            )
        )):null;
        return (React.createElement('div', { className: 'calendar__from-date' },
            React.createElement('table', null,
                React.createElement('tbody', null,
                    React.createElement('tr', null,
                        React.createElement('td', { colSpan: '2' },
                            React.createElement('span', { className: 'calendar__range-h' }, title)
                        )
                    ),
                    this.dateInfo(date),
                    day
                )
            )
        ));
        console.log(day)
        console.log(date)
    }
    render() {
        let {dateFrom, dateTo} = this.props;
        dateTo = dateTo ? new Date(dateTo) : dateTo;
        dateFrom = dateFrom ? new Date(dateFrom) : dateFrom;
        return (React.createElement('div', { className: 'calendar__range' },
            this.dumbDate(dateFrom,'시작 날'),
            React.createElement('div', { className: 'calendar__image-arrow' },
                React.createElement('span', null, "\u2192")
            ),
            this.dumbDate(dateTo,'마지막 날')
        ));
    }
}
/*Header Table*/
class Header extends React.Component {
    constructor(props) {
        super(props);
        this.monthNames = ["1월", "2월", "3월", "4월", "5월", "6월",
            "7월", "8월", "9월", "10월", "11월", "12월"];
        this.dayNames = ['MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT', 'SUN'];
    }
    shouldComponentUpdate(nextProps){
        return nextProps.date != this.props.date;
    }
    render() {
        let date  = new Date(this.props.date);
        return (React.createElement('div', { className: 'calendar__header' },
            React.createElement('div', { className: 'calendar__month-chooser' },
                React.createElement('span', { className: 'calendar__prev-month', onClick: this.props.prevMonth }, "\u2B80"),
                React.createElement('span', null, this.monthNames[date.getMonth()]),
                React.createElement('span', { className: 'calendar__next-month', onClick: this.props.nextMonth }, "\u27A1")
            ),
            React.createElement('table', { className: 'calendar__days-names', cellSpacing: '0' },
                React.createElement('tbody', null,
                    React.createElement('tr', null,
                        this.dayNames.map((i, key)=> React.createElement('td', { className: 'calendar__day-name', key: key }, i))
                    )
                )
            )
        ));
    }
}

/*Calendar Table*/
/*Calendar Table*/
class Calendar extends React.Component{
    constructor(props){
        super(props);
        this.selectionEnabled = false;
        this.shortMonthNames = ['Jan','Feb','Mar','Apr','May','June','July','Aug','Sept','Oct','Nov','Dec']
        this.currentDate = new Date();
        this.state = {
            animationDirection: "forward" // animationDirection 초기화
        };
    }
    handleClick(index){
        let {setRange, indexStart, indexEnd} = this.props;
        if(this.selectionEnabled ){
            if((index == indexStart)){
                this.selectionEnabled = false;
                setRange();
            }else{
                this.selectionEnabled = false;
                setRange(this.props.indexStart, index);
            }
        }else{
            if(index == indexEnd){
                this.selectionEnabled = true;
            }else{
                this.selectionEnabled = true;
                setRange(index);
            }
        }
    }
    mouseOver(index){
        if(this.selectionEnabled){
            this.props.setRange(this.props.indexStart, index);
        }
    }
    componentDidUpdate(prevProps, prevState) {
        if (prevProps.animationDirection !== this.props.animationDirection) { // 수정
            const calendar = document.querySelector('.calendar__table');
            const { animationDirection } = this.props; // 수정

            if (animationDirection === 'forward') {
                calendar.classList.add('animate--forward');
                calendar.classList.remove('animate--backward');
            } else if (animationDirection === 'backward') {
                calendar.classList.add('animate--backward');
                calendar.classList.remove('animate--forward');
            }
        }
    }
    getDay(date, key, month){
        let time = date.getTime();
        let currentDate = this.currentDate;
        let {indexEnd, indexStart} = this.props;
        let dayClass = (time > indexStart && time < indexEnd) ? 'selected' : '';
        dayClass += ( date < currentDate.setHours(0)) ?' out--range':'';
        dayClass += (time == indexStart && indexEnd > indexStart) ? ' sel--start' : '';
        dayClass += (time == indexEnd && time > indexStart) ? ' sel--end' : '';
        dayClass += (date.getMonth() == month)?' calendar__day':' calendar__day dis';
        return(React.createElement('td', { className: dayClass,
            onClick: this.handleClick.bind(this, time),
            onMouseOver: this.mouseOver.bind(this,time),
            key: key },
            React.createElement('div', { className: 'calendar__inner-day' }, date.getDate())
        ));
    }
    render(){
        let date  = new Date(this.props.date);
        let month = date.getMonth();
        date.setDate(1);
        if(this.animationDirection == "forward"){
            date.setMonth(date.getMonth() - 1);
        }
        let firstDay = date.getDay();
        if(firstDay !== 1){
            (firstDay == 0)?
                date.setDate(date.getDate() - 6)
                :date.setDate(date.getDate() - (firstDay - 1));
        }
        date.setDate(date.getDate() - 1);
        return(React.createElement('div', { className: 'calendar__wrap' },
            React.createElement('table', { className: 'calendar__table', ref: 'calendar', key: this.props.date, cellSpacing: '0' },
                React.createElement('tbody', null,
                    Array(12).fill(0).map((i, key)=> {
                        return React.createElement('tr', { key: key },
                            Array(7).fill(0).map((_i, _key)=> {
                                date.setDate(date.getDate() + 1);
                                return this.getDay(date, _key, month);
                            })
                        );
                    })
                )
            )
        ));
    }
}


/*Smart Component*/
class APP extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            date:Date.now(),
            selectionStart: 0,
            selectionEnd: 0
        }
    }
    prevMonth(){
        let date = new Date(this.state.date);
        date.setMonth(date.getMonth() - 1);
        this.setState({date:date.getTime()});
    }
    nextMonth(){
        let date = new Date(this.state.date);
        date.setMonth(date.getMonth() + 1);
        this.setState({date:date.getTime()});
    }
    setRange(selectionStart = 0, selectionEnd = 0){
    	
        this.setState({selectionStart, selectionEnd});

    }  handleDaySelection() {
        let { selectionStart, selectionEnd } = this.state;
        console.log("시작 날" + selectionStart);
        console.log("끝나는 날" + selectionEnd);
        // 여기에 선택한 날짜로 할 일을 추가하세요
    }
    render(){

        let {date, selectionStart, selectionEnd} = this.state;
        return (React.createElement('div', { className: 'calendar' },
            React.createElement(Range, { dateFrom: selectionStart, dateTo: selectionEnd }),
            React.createElement(Header, { date: date, prevMonth: this.prevMonth.bind(this), nextMonth: this.nextMonth.bind(this) }),
            React.createElement(Calendar, { date: date, indexStart: selectionStart, indexEnd: selectionEnd, setRange: this.setRange.bind(this) }),
              React.createElement('button', { id: 'selectDay',type:'button', onClick: this.handleDaySelection.bind(this) }, '선택한 날짜 확인')
              
        ));
    }
    
}

ReactDOM.render(React.createElement(APP, null), document.querySelector('#app'));
</script>
   <script>
   function myMap() {
		
 	  var lat = parseFloat(document.getElementById("lat").value);
 	  var lng = parseFloat(document.getElementById("lng").value);
 	  
 	  console.log(lat);
 	  console.log(lng);
 	  
     const myLatLng = { lat: lat, lng: lng};

     var marker;
     var label;
     var flightPath;
     
     var map = new google.maps.Map(document.getElementById("googleMap"), {
       zoom:11,
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

   $(document).ready(function(){

	   var totalMinute = 0;
	   var totalHour = 0;
         var list = [];
         var daysDiff = 0;
         var sleepName = [];
         
      $(".checkBtn").on("click",function(e){
         
         var content_id = $(this).siblings().find(".contentNameBtn").text();
         var contentType = $(this).siblings(".contentType").data("content-type");
         var addr2 = $(this).siblings(".contentAdd").data("content-addr2");
         var playTime = $(".contentTime").val();
         console.log("content_id값" + content_id)
         
         console.log('플레이 타임의 값' + playTime)
         
          if(playTime === null || playTime === "" || playTime === undefined){
        	  playTime = "02:00";
          } 
         console.log('playTime if문 거친 후' + playTime)
         list.push({
            content_id : content_id,
            contentType : contentType,
            addr2 : addr2,
            playTime : playTime
         })
          $(".chooseContent").find("input[name='content_id_c']").val(content_id);
         $(".chooseContent").find("input[name='contentName']").val(contentType);
         $(".chooseContent").find("input[name='contentTypes']").val(addr2);
         $(".chooseContent").find("input[name='contentTime']").val(playTime) 
         
         updateHtml();
         RunTimeSet();
         RunTimeCalculate();
         $(".contentTime").on("change", function() {
        	 RunTimeCalculate();
        	 RunTimeSet();
        	 RunTimeCalculate();
	        });
         
      })
      var totalRunTimes = [];
      function RunTimeSet(){
    	  totalRunTimes=[];
    	  $(".contentTime").each(function() {
        	  
    		    totalRunTimes.push($(this).val());
    		    
    		    for(var i = 0; i < totalRunTimes.length; i++){
    		    	console.log('전체 런타임'	+totalRunTimes[i])
    		    }
    		    
    		});
    	  
    	  
      }
      
     function RunTimeCalculate() {
    var runTime = document.getElementsByClassName('contentTime');
    var totalMinutes = 0;
    var totalTime = 0;
    for (var i = 0; i < runTime.length; i++) {
        var timeValue = runTime[i].value;
        console.log("runTime " + i + "번째 value: " + timeValue);
        totalMinutes += convertToMinutes(timeValue);
    }
    
    totalTime = convertToHoursMinutes(totalMinutes);
    console.log("총합 시간: " + totalTime.hours + "시간 " + totalTime.minutes + "분");

    if (totalTime.hours > totalHour) {
        alert("여행 총 시간보다 장소의 총 시간이 클 수 없습니다");
    } else {
        var str = "<p id='runCount'>" + runTime.length + "</p>&nbsp;&nbsp;" + totalTime.hours + "시간 " + totalTime.minutes + "분 / " + totalHour + "시간 " + totalMinute + "분";
        document.getElementById("totalRunTime").innerHTML = str;
    }
}

// Helper functions
function convertToMinutes(time) {
    var parts = time.split(':');
    var hours = parseInt(parts[0]);
    var minutes = parseInt(parts[1]);
    return (hours * 60) + minutes;
}

function convertToHoursMinutes(totalMinutes) {
    var hours = Math.floor(totalMinutes / 60);
    var minutes = totalMinutes % 60;
    return { hours: hours, minutes: minutes };
}

      
   
      function updateHtml() {
            var str = "";
            for (var i = 0; i < list.length; i++) {
                str += "<div class='contentItem'>";
                str += "<input name='c_number' value='" + (i + 1) + "' style='width:20px; background-color:skyblue;'>";
                str += "<input name='contentName"  + "' value='" + list[i].content_id + "' style='border:none;'>";
                str += "<input name='contentTypes" + "' value='" + list[i].contentType + "' style='border:none;'>";
                str += "<input name='address"  + "' value='" + list[i].addr2 + "' style='border:none;'>";
                console.log('playTime값 2번 체크' + list[i].playTime)
                if(totalRunTimes[i] === "" || totalRunTimes[i] === null || totalRunTimes[i] === undefined){
                	console.log('트루문 찍힘')
                str += "<input type='text' name='playTime' pattern=''\d{2}:\d{2}' placeholder='HH:MM' value='02:00' title='올바른 형식으로 입력하세요 (HH:MM)' class='contentTime'>";
                }else{
                	console.log('false문 찍힘')
                str += "<input type='text' name='playTime' pattern=''\d{2}:\d{2}' placeholder='HH:MM' value='"+ totalRunTimes[i] +"' title='올바른 형식으로 입력하세요 (HH:MM)' class='contentTime'>";}
                str += "<button class='deleteBtn' data-index='" + i + "'>삭제</button>";
                str += "</div>";	
            }
            $(".chooseContent").html(str);
            console.log('list길이값' + list.length)
        }
      
      $(document).on("click", ".dropBtn", function(){
    	  console.log("작동은 하니?")
    	list.splice(0, list.length);
    	  updateHtml();
    	  
    	  
      });

        $(document).on("click", ".deleteBtn", function() {
            var index = $(this).data("index");
            list.splice(index, 1);
            totalRunTimes.splice(index, 1);
            updateHtml();
            RunTimeCalculate();
            
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
         
         $(".step1").on("click", function(){

             var dayElement = document.getElementById("day");
             var placeElement = document.getElementById("place");
             var placeElement2 = document.getElementById("place2");
             var sleepElement = document.getElementById("sleep");
             var sleepElement2 = document.getElementById("sleep2");
             
             dayElement.style.display ="block";
             placeElement.style.display = "none";
             placeElement2.style.display = "none"; 
             sleepElement.style.display = "none";
             sleepElement2.style.display = "none";
         })
         
         
         $(".step2").on("click", function(){
        console.log('테스트1');	 
        var dayElement = document.getElementById("day");
        var placeElement = document.getElementById("place");
        var placeElement2 = document.getElementById("place2");
        var sleepElement = document.getElementById("sleep");
        var sleepElement2 = document.getElementById("sleep2");

        dayElement.style.display ="none";
        placeElement.style.display = "block";
        placeElement2.style.display = "block"; 
        sleepElement.style.display = "none";
        sleepElement2.style.display = "none";
         });
         
         $(".step3").on("click", function(){
        	 console.log("테스트2")
             var dayElement = document.getElementById("day");
             var placeElement = document.getElementById("place");
             var placeElement2 = document.getElementById("place2");
             var sleepElement = document.getElementById("sleep"); 
             var sleepElement2 = document.getElementById("sleep2");

             dayElement.style.display ="none";
             placeElement.style.display = "none";
             placeElement2.style.display = "none"; 
             sleepElement.style.display = "block";
             sleepElement2.style.display = "block";
             updateSleep()
         })
         var datesBetween;
         $("#selectDay").on("click", function(){
        	 var appComponent = ReactDOM.render(React.createElement(APP, null), document.querySelector('#app'));
        	    var selectionStart = appComponent.state.selectionStart;
        	    var selectionEnd = appComponent.state.selectionEnd;
        	    console.log("끝" + selectionEnd)
        	    console.log("시작" + selectionStart)
        	    var milliseconds = selectionStart;
        	    var startDate = new Date(milliseconds);
        	    console.log(startDate);
        	    
        	    var milliseconds = selectionEnd;
        	    var endDate = new Date(milliseconds);
        	    console.log("포맷 전"+ endDate);
        	    
        	    var startDateFormatted = formatDate(startDate);
        	    var endDateFormatted = formatDate(endDate);
        	    
        	    datesBetween = getDatesWithDay(startDate, endDate);
        	    console.log(datesBetween);
        	    
        	    var dateStr ="";
        	    for(var i = 0; i < datesBetween.length; i++){
        	    	dateStr += "<li><input type ='text' name ='day' value='" + datesBetween[i].date + "'></li>";
        	    }
        	    $(".date2").html(dateStr);
        	    
        	    console.log("date확인" + datesBetween)
        	    
        	    var dateStr2 = "";
        	    for(var i = 0; i < datesBetween.length; i++){
        	    	dateStr2 += "<li><input type='text' name='dayOfWeek' value='" + datesBetween[i].dayOfWeek + "'></li>";
        	    }
        	    $(".date3").html(dateStr2);
        	    
        	    var dateStr3 = "";
        	    for(var i = 0; i < datesBetween.length; i++){
        	    	dateStr3 += "<li><input type = 'time' name='startTime' value='10:00' class='timeInputStart"+ i + "'></li>";
        	    }
        	    $(".date4").html(dateStr3)
        	    
        	    	var dateStr4 = "";
            	    for(var i = 0; i < datesBetween.length; i++){
            	    	dateStr4 += "<li><input type='time' name='endTime' value='22:00' class='timeInputEnd" + i + "'></li>";
            	    }
            	$(".date5").html(dateStr4);
            	
        	    var startMillis = startDate.getTime();
        	    var endMillis = endDate.getTime();

        	    var timeDiff = Math.abs(endMillis - startMillis);
        	    
        	    //숙소 개수 정할 때
        	     daysDiff = Math.ceil(timeDiff / (1000 * 3600 * 24)); 
        	    //총 일 수
        	   var totalDays = daysDiff + 1;
        	    
        	    console.log('사이 날짜 값'+ daysDiff)
        	    
        	    console.log('총 일 수 ' + totalDays)
        	    timeCalculate(datesBetween)
        	     for (var i = 0; i < datesBetween.length; i++) {
        	    (function(index) {
        	        var selector = ".timeInputStart" + index;
        	        var selector2 = ".timeInputEnd" + index;
        	        $(selector).on("change", function() {
        	        	timeCalculate()
        	        });
        	        
        	        $(selector2).on("change", function(){
        	        	timeCalculate()
        	        });
        	        
        	    })(i);
        	}
        	    
        	    $("#daysdiff").text("총 숙박 날" + daysDiff + "일");
        	    
        	    $("#dateRange").text(startDateFormatted + " ~ " + endDateFormatted);
        	    console.log('이쪽까지 동작을 안하나요')
        	    $('#modal-toggle').prop('checked', false);
         })
         
        function timeCalculate() {
        	 totalHour = 0;
        	 totalMinute = 0;

    for (var i = 0; i < datesBetween.length; i++) {
        var startTime = $(".timeInputStart" + i).val();
        var endTime = $(".timeInputEnd" + i).val();
        console.log('테스트 시작' + startTime)
        console.log('테스트 끝' + endTime)
        
        var startParts = startTime.split(':');
        var endParts = endTime.split(':');
        var startHour = parseInt(startParts[0]);
        var startMinute = parseInt(startParts[1]);
        var endHour = parseInt(endParts[0]);
        var endMinute = parseInt(endParts[1]);

        
        // 시간 차이 계산
        var diffHour = endHour - startHour;
        var diffMinute = endMinute - startMinute;

        console.log('시간 차' + diffHour)
        console.log('diffMinute값' +diffMinute )
        
        
        // 음수 방지를 위한 보정
        if (diffMinute < 0) {
            diffHour--; // 시간을 1 시간 감소
            diffMinute += 60; // 음수를 방지하기 위해 분에 60을 더함
        }

        totalHour += diffHour;
        totalMinute += diffMinute;
    }

    console.log("총합 시간: " + totalHour);
    console.log("총합 분: " + totalMinute);

    // 분이 60 이상인 경우 시간으로 환산
    totalHour += Math.floor(totalMinute / 60);
    totalMinute %= 60;

    console.log("총합 시간 (조정): " + totalHour);
    console.log("총합 분 (조정): " + totalMinute);
    
    $(".totalTime").val("총시간 " + totalHour + "시간 " + totalMinute + "분 입니다.");  
    
    
    
}
         $(".checkInBtn").on("click",function(){
        	 
        	 var content_id = $(this).siblings().find(".contentNameBtn").text();
        	 
        	 console.log('content_id 숙소 값' + content_id)
        	 sleepName.push({
        		content_id : content_id || undefined
        	 })
        	 for(var i = 0; i < sleepName.length; i++){
        	 console.log('sleepName배열' + sleepName[i].content_id)
        	 }
        	 updateSleep()
        	 
         })
         
         
        function updateSleep(){
        	 console.log('updateSleep')
        	 var str = "";
        	 console.log("확인 1번 값" + daysDiff)
        	 console.log("확인 2번 값" + datesBetween[0].date)
        	 for(var i = 0; i < daysDiff; i++){
        		 var q = i + 1;
        		 console.log('되겠죠'+ q)
        		 console.log("안찍혀 이게?")
        		 str += "<div class='sleepItem'>";
        		 str += q + " " + datesBetween[i].date + "("+ datesBetween[i].dayOfWeek +")~" + datesBetween[q].date + "("+ datesBetween[q].dayOfWeek +")";
        		 if(sleepName[i] === undefined || sleepName[i].content_id === undefined){
        			 console.log('true문 통과')
        			 str += "<input type ='text' value='숙소를 추가해주세요.'>"	 
        		 }else{
        		 str += "<input type ='text' name='sleepName' value='"+ sleepName[i].content_id +"'>"}
        		 str += "<button class ='deleteBtn2'>삭제</button></div>"
        		 
        	 }$(".chooseSleep").html(str);
         }
        
         $(".chooseSleep").on("click", ".deleteBtn2", function(){
        	 console.log('숙소 삭제')
        	sleepName = [];
        	updateSleep();
        	 
         })
        	 
        	 
         
         function formatDate(date) {
    var year = date.getFullYear();
    var month = ("0" + (date.getMonth() + 1)).slice(-2);
    var day = ("0" + date.getDate()).slice(-2);
    var dayOfWeek = ["일", "월", "화", "수", "목", "금", "토"][date.getDay()];
    return year + "-" + month + "-" + day + "(" + dayOfWeek + ")";
}
         
         function getDatesWithDay(startDate, endDate) {
             const daysOfWeek = ['일', '월', '화', '수', '목', '금', '토'];
             const dates = [];
             let currentDate = new Date(startDate);

             while (currentDate <= new Date(endDate)) {
            	 const isoString = currentDate.toISOString();
            	 const monthDayStr = isoString.slice(5, 7) + "/" + isoString.slice(8, 10); // 월과 일만 추출하여 /로 구분
                 const dayOfWeek = daysOfWeek[currentDate.getDay()];
                 dates.push({ date: monthDayStr, dayOfWeek: dayOfWeek });
                 currentDate.setDate(currentDate.getDate() + 1);
             }

             return dates;
         }
         
         $(".objsubmit").on("click", function(){
        	 console.log('작동')
        	 let placesForm = $("#places"); 
        	 
        	 placesForm.submit();
        	 
        	
         
         
 
         
         
  
   })
   
   })
   </script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-nI2V_bsNjQF5ZQ4mlq8o8sr1oZ6bLi0&libraries=places&callback=myMap"></script>
  
</html>