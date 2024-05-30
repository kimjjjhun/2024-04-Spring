<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>-->
<%@ include file="../includes/header2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script	src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../resources/summernote/summernote-lite.js"></script>
<script src="../resources/summernote/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="../resources/summernote/summernote-lite.css">
<title>Insert title here</title>
<script type="text/javascript" src="../resources/script/boardEvent.js"></script>

<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script> 
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script> 
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script>
	var $jLatest = jQuery.noConflict();
</script>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
<!-- Google web font "Open Sans" -->
<link rel="stylesheet" href="../resources/css/font-awesome.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<!-- Bootstrap style -->
<link rel="stylesheet" type="text/css" href="../resources/css/datepicker.css" />
<link rel="stylesheet" type="text/css" href="../resources/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="../resources/slick/slick-theme.css" />
<link rel="stylesheet" href="../resources/css/templatemo-style.css">

<style>
	.images_container{
		width: 300px;
		height: 200px;
	}
	.img{
		width: 300px;
		height: 200px;
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
	
	.container {
    max-width: 1400px; 
    margin: 0 auto;
    }
</style>

</head>
<body style="margin-top : 180px;">
	
	 <div class="p-5 tm-container-outer tm-bg-gray">
		<h2>이벤트 등록</h2>
		<hr class="hr1" noshade>
		<form action="/boardEvent/write" role="form" method="post" name="frm" >
			<div class="form-group">
				<label for="boardTitle">제목</label> 
				<input type="text" class="form-control" id="boardTitle" name="boardTitle">
			</div>

			<!-- <input type="text" id=dates name="dates" value="" /> -->
			<div class="form-group">
				<label for="boardTitle">시작일</label> 
				<input type="text" class="form-control" id="startDate" name="startDate">
			</div>
			<div class="form-group">
				<label for="boardTitle">종료일</label> 
				<input type="text" class="form-control" id="endDate" name="endDate">
			</div>
			
			주의)파일은 5개까지 업로드 가능하며, 이미지 파일 형식만 사용할 수 있습니다(jpg, jpeg, png, bmp).<br>
				5MB 이하의 파일만 업로드 하실 수 있습니다.<br>
				1번 파일이 썸네일에 표시됩니다.
			<div class="form-group">
				1. 파일 지정하기 : <input type="file" multiple="multiple"
					name="uploadFile" id="uploadFile01" accept=".png, .jpeg, .jpg, .bmp"> <br>
				2. 파일 지정하기 : <input type="file" multiple="multiple"
					name="uploadFile" id="uploadFile02" accept=".png, .jpeg, .jpg, .bmp"> <br>
				3. 파일 지정하기 : <input type="file" multiple="multiple"
					name="uploadFile" id="uploadFile03" accept=".png, .jpeg, .jpg, .bmp"> <br>
				4. 파일 지정하기 : <input type="file" multiple="multiple"
					name="uploadFile" id="uploadFile04" accept=".png, .jpeg, .jpg, .bmp"> <br>
				5. 파일 지정하기 : <input type="file" multiple="multiple"
					name="uploadFile" id="uploadFile05" accept=".png, .jpeg, .jpg, .bmp"> <br>
			</div>
		
			<div class="uploadResult">
			이미지 미리보기
				<ul id="uploadList">
				
				</ul>
			</div>
			
			<div class="form-group">
				<label for="boardContent">내용</label><br> 
				<textarea id="summernote" class="summernote" name="boardContent"></textarea>
			</div>
			
			<br>
			<div class="mt-3 text-right">
				<button type="button" class="gradient" onclick="location.href='/boardEvent/list'" style="width: 100px">목록</button>
				<button type="reset" class="gradient">다시작성</button> &nbsp;
				<button type="submit" class="gradient" id="write">등록</button> &nbsp;
			</div>
			<br>
			
			<!-- <div style="position: fixed; bottom: 5px; right: 5px;">
				<a href="#">
				<img src="img/upArrow.png" width="100px" height="100px" title="위로">
				</a><br>
				<a href="#write">
				<img src="img/downArrow.png" width="100px" height="100px" title="아래로">
				</a>
			</div> -->
			
		</form>
	
	</div>
	




<script>
	$('#summernote').summernote({
		disableDragAndDrop: true,
		height : 500,
	/* width : 1200, */
	lang : "ko-KR",
		toolbar: [
		    // [groupName, [list of button]]
		    ['style', ['bold', 'italic', 'underline', 'clear']],
		    ['fontname', ['fontname']],
		    ['fontsize', ['fontsize']],
		    ['color', ['color']],
		    ['para', ['ul', 'ol', 'paragraph']],
		    ['height', ['height']],
		    ['table', ['table']],
       		['view', ['fullscreen', 'codeview', 'help']]
		  ]
		});
</script> 
	
<script>
	$jLatest('input[id="dates"]').daterangepicker();
	$jLatest('input[id="startDate"]').daterangepicker({
		singleDatePicker: true,
	    timePicker: true,
	    timePicker24Hour: true,
		 "locale": {
		       "format": 'YYYY-MM-DD HH:mm:SS',
		       "separator": " ~ ",
		       "applyLabel": "확인",
		        "cancelLabel": "취소",
		        "fromLabel": "From",
		        "toLabel": "To",
		        "customRangeLabel": "Custom",
		        "weekLabel": "주",
		        "daysOfWeek": [
		             "일",
		             "월",
		             "화",
		             "수",
		             "목",
		             "금",
		             "토"
		       ],
		      "monthNames": [
		             "1월",
		             "2월",
		             "3월",
		             "4월",
		             "5월",
		             "6월",
		             "7월",
		             "8월",
		             "9월",
		             "10월",
		             "11월",
		             "12월"
		        ],
		        "firstDay": 1
		    },
	});
	$jLatest('input[id="endDate"]').daterangepicker({
		singleDatePicker: true,
	    timePicker: true,
	    timePicker24Hour: true,
		 "locale": {
		       "format": 'YYYY-MM-DD HH:mm:SS',
		       "separator": " ~ ",
		       "applyLabel": "확인",
		        "cancelLabel": "취소",
		        "fromLabel": "From",
		        "toLabel": "To",
		        "customRangeLabel": "Custom",
		        "weekLabel": "주",
		        "daysOfWeek": [
		             "일",
		             "월",
		             "화",
		             "수",
		             "목",
		             "금",
		             "토"
		       ],
		      "monthNames": [
		             "1월",
		             "2월",
		             "3월",
		             "4월",
		             "5월",
		             "6월",
		             "7월",
		             "8월",
		             "9월",
		             "10월",
		             "11월",
		             "12월"
		        ],
		        "firstDay": 1
		    },
	});
</script>
	
<script>
$(document).ready(function(e){
	var formObj = $("form[role='form']");
	$("button[type='submit']").on("click", function(e){
//		e.preventDefault();
		var check = boardCheck();
		if(check==false){
			e.preventDefault();
			console.log(check);
		} else{	
			console.log(check);
			e.preventDefault();
			console.log("submit clicked");
			
			var str="";
			$(".uploadResult ul li").each(function(i, obj){
				var jobj = $(obj);
				console.dir(jobj);
				
				str+="<input type='hidden' name='attachList[" + i + "].fileName' value='" + jobj.data("filename") + "'>";
				str+="<input type='hidden' name='attachList[" + i + "].uuid' value='" + jobj.data("uuid") + "'>";
				str+="<input type='hidden' name='attachList[" + i + "].uploadPath' value='" + jobj.data("path") + "'>";
				str+="<input type='hidden' name='attachList[" + i + "].fileType' value='" + jobj.data("type") + "'>";
				str+="<input type='hidden' name='attachList[" + i + "].fileOrder' value='" + jobj.data("fileorder") + "'>";
				str+="<input type='hidden' name='attachList[" + i + "].fileSize' value='" + jobj.data("filesize") + "'>";
				str+="<input type='hidden' name='attachList[" + i + "].repImgYn' value='" + jobj.data("repimgyn") + "'>";
				
			});
			
			formObj.append(str).submit();
			formObj.unbind('click').click();
		}
	});
	
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880; //5MB
	
	function checkExtension(filename, fileSize){
		
		if(fileSize>=maxSize){
			alert("파일 사이즈를 초과하였습니다");
			return false;
		}
		if(regex.test(filename)){
			alert("해당 종류의 파일은 업로드할 수 없습니다");
			return false;
		}
		return true;
	}
	
	$("input[type='file']").focus( function(){
		  before = $(this).val();	  
	 	}).change(function(e){
	 	
	 		var targetId = $(this).prop("id");
	 	
	 	if(before!=''){
	 		alert("아래에서 파일 삭제 후 다시 첨부해주세요");
	 		$("#"+targetId).val("");
	 	}
	 	else{
			var formData = new FormData();
			
			console.log(">>>" + $(this).prop("id"));
			
			var inputFile = $("#"+targetId);
			
			var files = inputFile[0].files;
			for(var i=0; i<files.length;i++){
				if(!checkExtension(files[i].name, files[i].size)){
					return false;
				}
				formData.append("uploadFile", files[i]);
				formData.append("fileOrder", targetId);
			}
			
			$.ajax({
				url: '/uploadAjaxAction',
				processData: false,
				contentType: false,
				data: formData,
				type: 'POST',
				dataType: 'json',
				success: function(result){
					console.log(result);
					showUploadResult(result);
				}
			});
	 	}
	});
	
	$(".uploadResult").on("click", "button", function(e){
		console.log("delete file");
		
		var targetFile = $(this).data("file");
		var type = $(this).data("type");
		var targetId = $(this).data("fileorder");
		console.log("fileOrder>>"+targetId);
		
		var targetLi = $(this).closest("li");
		
		console.log("target>>"+targetFile);
		console.log("type>>>"+type);
		
		$.ajax
		({
			url: '/deleteFile',
			data: {fileName: targetFile, type: type},
			dataType: 'text',
			type: 'POST',
			success: function(result)
			{
				alert("삭제가 완료되었습니다");
				targetLi.remove();
				$("#"+targetId).val("");
//				$("#"+targetId).replaceWith($("#"+targetId).clone(true)); //IE에서 동작하지 않으면 사용하기
			}
		});
		
	});

	
});
function showUploadResult(uploadResultArr){
	if(!uploadResultArr||uploadResultArr.length==0){
		return ;
	}
	var uploadUL = $(".uploadResult ul");
	
	var str="";
	
	$(uploadResultArr).each(function(i, obj){
		//image type
		if(obj.image){
			var fileCallPath = encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
			var order = obj.fileOrder.slice(-1);
			
			str+= "<li data-path ='"+ obj.uploadPath + "'";
			str+=" data-uuid='"+ obj.uuid + "' data-filename='" + obj.fileName + "' data-type='" + obj.image + "' data-fileOrder='" + obj.fileOrder + "' data-fileSize='" + obj.fileSize + "' data-repImgYn='" + obj.repImgYn + "'";
			str+= " ><div>";
			str+="<span>" + order +"번 파일 : " + obj.fileName + "</span>";
			str+= "<button type='button' data-file=\'" + fileCallPath+"\' data-type='image' data-fileOrder=" + obj.fileOrder + " class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
			str+="<img src='/display?fileName=" + fileCallPath + "'>";
			str+= "</div>";
			str+= "</li>";
		} else{
			var fileCallPath = encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
			var fileLink = fileCallPath.replace(new RegExp(/\\/g), "/");
			var order = obj.fileOrder.slice(-1);
			
			str+="<li ";
			str+= "data-path='" + obj.uploadPath +"' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "' data-type='" + obj.image + "' data-fileOrder='" + obj.fileOrder + "' data-fileSize='" + obj.fileSize + "' data-repImgYn='" + obj.repImgYn + "'"; 
			str+= "><div>";
			str+="<span>" + order +"번 파일 : " + obj.fileName + "</span>";
			str+= "<button type='button' data-file=\'" + fileCallPath+"\' data-type='file' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
			str+="<img src='..resources/upload/noimage.png'></a>";
			str+= "</div>";
			str+= "</li>";
		}
	});
	uploadUL.append(str);
	
	$("#uploadList").each(function(){
	    $(this).html($(this).children('li').sort(function(a, b){
	        return ($(b).data('fileorder')) < ($(a).data('fileorder')) ? 1 : -1;
	    }));
	});
}

</script>
	<%@ include file="../includes/footer.jsp"%>
</body>
</html>