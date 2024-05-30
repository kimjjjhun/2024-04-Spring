<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Upload with Ajax</h1>

<div class="uploadDiv">
	<input type="file" name="uploadFile" multiple>
</div>

<button id="uploadBtn">Upload</button>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> 

<script type="text/javascript">
	$(document).ready(function(){
		
		$("#uploadBtn").on("click",function(e){
			var formData = new FormData();
			var inputFile = $("input[name='uploadFile']");
			var files = inputFile[0].files;
			
			console.log(files)
			
			for(var i=0; i<files.length; i++){
				formData.append("uploadFile", files[i]);
				
				if( !(checkExtension(files[i].name, files[i].size)) ){
					return false;
				}
			}
			
			$.ajax({
				url: '/uploadAjaxAction',
				processData: false,
				contentType: false,
				data: formData,
				type: 'post',
				
				success: function(result){
					console.log(result)
					alert("Uploaded")
				}
			})
		}); //uploadBtn 이벤트 END 
		
		
		//정규표현식 파일 유효성 체크 이벤트 // 앞은 상관없으나 뒤에 파일 확장자가 아래와같은경우는 업로드할수없다.
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$")
		var maxSize = 5242880; //5MB
		
		function checkExtension(fileName, fileSize){
			if(fileSize >= maxSize){
				alert("파일 사이즈가 초과입니다.")
				return false;
			}
			
			if(regex.test(fileName)){
				alert("해당 종류의 파일은 업로드 할 수 없습니다.")
				return false;
			}
			
			return true;
		}
	})
</script>
</body>
</html>