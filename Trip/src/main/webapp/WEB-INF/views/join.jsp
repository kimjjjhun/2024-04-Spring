<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원 약관 동의</h2>
   <label for="agree_all"> 
   <input type="checkbox" name="agree_all" id="agree_all"> <span>모두 동의합니다</span><br>
   </label>
   <label for="agree"> 
   <input type="checkbox" name="agree" value="1" id="check_1"> 
   <span>이용약관 동의<strong>(필수)</strong></span><br>
   </label>
   <label for="agree"> 
   <input type="checkbox" name="agree" value="2" id="check_2"> 
   <span>개인정보 수집, 이용 동의<strong>(필수)</strong></span><br>
   </label>
   <label for="agree"> 
   <input type="checkbox" name="agree" value="3" id="check_3"> 
   <span>개인정보 이용 동의<strong>(필수)</strong></span><br>
   </label>
   <label for="agree"> 
   <input type="checkbox" name="agree" value="4"> 
   <span>이벤트, 혜택정보 수신동의<strong class="select_disable">(선택)</strong></span><br>
   </label>
   <button id="nextBtn" type="button">다음으로</button>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript">
   

    
    $(document).ready(function(){
       
       $("#nextBtn").on("click",function(){    
            if($("#check_1").is(":checked") == false){
                alert("모든 필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다");
                return;
            }if($("#check_2").is(":checked") == false){
                alert("모든 필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다");
                return;
            }if($("#check_3").is(":checked") == false){
                alert("모든 필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                return;
            }else{
                window.location.href = '/member/register';
            }
        });    
       
       const agreeChkAll = document.querySelector('input[name=agree_all]');
        agreeChkAll.addEventListener('change', (e) => {
        let agreeChk = document.querySelectorAll('input[name=agree]');
        for(let i = 0; i < agreeChk.length; i++){
          agreeChk[i].checked = e.target.checked;
        }
    });


    })
</script>
</html>