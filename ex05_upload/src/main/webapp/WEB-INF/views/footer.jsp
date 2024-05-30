<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

footer{
	width: 100%;
	bottom: -100px;
	position: absolute;
}

.footerastyle{
	color: black;
}

.footerlistyle{
	list-style-type: none;
}

#btn-back-to-top {
  position: fixed;
  bottom: 20px;
  right: 20px;
  display: none;
}

</style>
</head>
<body>
<footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
      </a>
      <span class="mb-3 mb-md-0 text-muted">© 2024 Tripgo? Company, Inc<br><br>
      <li style="line-height:60%" class="footerlistyle"><a href="" style="text-decoration: none" class="footerastyle">이용약관</a></li><br>
      <li style="line-height:60%" class="footerlistyle"><a href="" style="text-decoration: none" class="footerastyle">개인정보처리방침</a></li><br>
      <li style="line-height:20%" class="footerlistyle"><a href="" style="text-decoration: none" class="footerastyle">1:1문의</a></li><br>
      ▶ 문의메일: TeamProject@Tripgo.co.kr<br>
      ▶ 대표번호: 010-0000-0000<br>
      </span>
    </div>

    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex" style="margin-right: 20">
      <li class="ms-3"><a class="text-muted" href="https://www.facebook.com/?locale=ko_KR"><img src="../resources/main/Facebook.png" alt="" width="30" height="30"></a></li>
      <li class="ms-3"><a class="text-muted" href="https://www.instagram.com/"><img src="../resources/main/instagram.png" alt="" width="30" height="30"></a></li>
      <li class="ms-3"><a class="text-muted" href="https://twitter.com/?lang=ko"><img src="../resources/main/twiiter.png" alt="" width="30" height="30"></a></li>
      <li class="ms-3"><a class="text-muted" href="https://www.kakaocorp.com/page/service/service/KakaoTalk"><img src="../resources/main/kakaotalk.png" alt="" width="30" height="30"></a></li>
    </ul>
  </footer>


</body>
</html>