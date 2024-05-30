<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <script language="JavaScript">
        function setCookie(name, value, expiredays) {
            var todayDate = new Date();
            todayDate.setDate(todayDate.getDate() + expiredays);
            document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
        }
 
        function closePop() {  
            if (document.pop_form.chkbox.checked) {
            	setCookie("maindiv", "done", 1); // GMT시간으로 24시간 (1일)로 수정
            }
            document.getElementById('layer_popup').style.display = "none"; // 수정: visibility 대신 display 사용
        }  

        // 수정: 페이지 로딩 시에 쿠키를 읽고 상태에 따라 모달을 띄울지 말지 결정
        function checkCookie() {
            var cookiedata = document.cookie;
            if (cookiedata.indexOf("maindiv=done") < 0) {
                document.getElementById('layer_popup').style.display = "block";
            } else {
                document.getElementById('layer_popup').style.display = "none";
            }
        }

        window.onload = checkCookie(); // 수정: 페이지 로딩 시에 checkCookie 함수 호출
    </script>
<title>Insert title here</title>
<style>
font-family: SF Pro KR, SF Pro Display, SF Pro Icons, AOS Icons, Apple Gothic, HY Gulim, MalgunGothic, HY Dotum, Lexi Gulim, Helvetica Neue, Helvetica, Arial, sans-serif;
.layerPopup img{
 max-width: 100%;
    height: auto;
    display: block; /* 이미지 사이에 추가 공백 제거 */
    margin: 0 auto; /* 중앙 정렬 */}
.layerPopup:before {display:block; content:""; position:fixed; left:0; top:0; width:100%; height:100%; background:rgba(0,0,0,.5); z-index:9000}
.layerPopup .layerBox {    z-index:10000;   
position:fixed; left:55%; top:50%; transform:translate(-50%, -50%); padding:30px; background:#fff; border-radius:6px; }
.layerPopup .layerBox .title {margin-bottom:10px; padding-bottom:10px; font-weight:600; border-bottom:1px solid #d9d9d9;}
.layerPopup .layerBox .btnTodayHide {
font-size:14px; font-weight:600; color:black; 
float: left;text-decoration:none;width: 150px; 
height : 30px;line-height:30px;border:black solid 1px; text-align : center;text-decoration:none;
}
.layerPopup div{ 
	display : inline;
	width : 800px;
}
.layerPopup form{
	margin-top : 5px;
	font-size:16px; font-weight:600;
	max-width: 800px;
	weight: 100%;
	height : 30px;
	line-height:30px
}
.layerPopup #close { 
font-size:16px; font-weight:600; width: 40px; height : 30px;color:black; float: right; line-height:30px; text-align : center;text-decoration:underline;
}
.layerPopup a{
	text-decoration : none;
	color : black;width: 50px;height : 40px;
}
</style>
</head>
<body>
<div class="layerPopup" id="layer_popup" style="visibility: visible;">
    <div class="layerBox"> 
		<h4 class="title"> <a  href="/notice/list"> Kakao Airline 긴급 공지사항</a></h4>
        <div class="cont">
            <p style="color:red">
<img src="/resources/img/alert.png" onerror="this.style.display='none'" width=20px height=auto usemap="#popup" alt="event page">
<c:forEach items="${emer}" var="emer"> 
${emer.boardcontent}
<hr>
</c:forEach>
		
            </p>
        </div>
          <form name="pop_form">
        <div id="check" ><input type="checkbox" name="chkbox" value="checkbox" id='chkbox' >
        <label for="chkbox">&nbsp&nbsp오늘 하루동안 보지 않기</label></div>
		<div id="close" ><a href="javascript:closePop();">닫기</a></div>    
		</form>
	</div>
</div>
</body>
</html>