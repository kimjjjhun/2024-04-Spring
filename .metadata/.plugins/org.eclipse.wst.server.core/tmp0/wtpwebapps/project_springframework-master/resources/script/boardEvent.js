function boardCheck(){
	
    if(boardTitle.value.trim()==""){
        alert("제목을 입력해주세요.");
        return false;
    }

	if(uploadFile01.value==""&&uploadFile02.value==""&&uploadFile02.value==""&&uploadFile03.value==""&&uploadFile04.value==""&&uploadFile05.value==""){
    	alert("파일이 등록되어야 합니다.");
    	return false;
    }

	if(uploadFile01.value==""&&(uploadFile02.value!=""||uploadFile02.value!=""||uploadFile03.value!=""||uploadFile04.value!=""||uploadFile05.value!="")){
    	alert("1번 파일부터 등록되어야 합니다.");
    	return false;
    }
	
	var startdate = startDate.value;
	var startdates = startdate.split("/");

	var enddate = endDate.value;
	var enddates = enddate.split("/");
    
    if(startdates[2]>enddates[2]){
        alert("종료일은 시작일보다 빠를 수 없습니다.");
        return false;
    } 
    
    if(startdates[2]==enddates[2]) {
		if(startdates[0]>enddates[0]){
			alert("종료일은 시작일보다 빠를 수 없습니다.");
        	return false;
		} else if(startdates[0]==enddates[0]){
			if(startdates[1]>enddates[1]){
				alert("종료일은 시작일보다 빠를 수 없습니다.");
        		return false;
			}
		}
	}
    
	var fileNm = $("#uploadFile01").val();
	 
	if (fileNm != "") {
	 
	    var ext = fileNm.slice(fileNm.lastIndexOf(".") + 1).toLowerCase();
	 	var fileSize = document.getElementById("uploadFile01").files[0].size;
	 	
	     if (!(ext == "jpeg" || ext == "jpg" || ext == "png"|| ext == "bmp")) {
	        alert("이미지파일 (.jpg, .jpeg, .png, .bmp) 만 업로드 가능합니다.");
	        return false;
	    } else if(fileSize > 5*1024*1024) {
	    	alert("5MB 이하의 파일만 업로드 가능합니다.");
	        return false;
	    } 
	}

	var fileNm2 = $("#uploadFile02").val();
	 
	if (fileNm2 != "") {
	 
	    var ext = fileNm2.slice(fileNm2.lastIndexOf(".") + 1).toLowerCase();
	 	var fileSize = document.getElementById("uploadFile02").files[0].size;
	 	
	     if (!(ext == "jpeg" || ext == "jpg" || ext == "png"|| ext == "bmp")) {
	        alert("이미지파일 (.jpg, .jpeg, .png, .bmp) 만 업로드 가능합니다.");
	        return false;
	    } else if(fileSize > 5*1024*1024) {
	    	alert("5MB 이하의 파일만 업로드 가능합니다.");
	        return false;
	    } 
	}

	var fileNm3 = $("#uploadFile03").val();
	 
	if (fileNm3 != "") {
	 
	    var ext = fileNm3.slice(fileNm3.lastIndexOf(".") + 1).toLowerCase();
	 	var fileSize = document.getElementById("uploadFile03").files[0].size;
	 	
	     if (!(ext == "jpeg" || ext == "jpg" || ext == "png"|| ext == "bmp")) {
	        alert("이미지파일 (.jpg, .jpeg, .png, .bmp) 만 업로드 가능합니다.");
	        return false;
	    } else if(fileSize > 5*1024*1024) {
	    	alert("5MB 이하의 파일만 업로드 가능합니다.");
	        return false;
	    } 
	}

	var fileNm4 = $("#uploadFile04").val();
	 
	if (fileNm4 != "") {
	 
	    var ext = fileNm4.slice(fileNm4.lastIndexOf(".") + 1).toLowerCase();
	 	var fileSize = document.getElementById("uploadFile04").files[0].size;
	 	
	     if (!(ext == "jpeg" || ext == "jpg" || ext == "png"|| ext == "bmp")) {
	        alert("이미지파일 (.jpg, .jpeg, .png, .bmp) 만 업로드 가능합니다.");
	        return false;
	    } else if(fileSize > 5*1024*1024) {
	    	alert("5MB 이하의 파일만 업로드 가능합니다.");
	        return false;
	    } 
	}

	var fileNm5 = $("#uploadFile05").val();
	 
	if (fileNm5 != "") {
	 
	    var ext = fileNm5.slice(fileNm5.lastIndexOf(".") + 1).toLowerCase();
	 	var fileSize = document.getElementById("uploadFile05").files[0].size;
	 	
	     if (!(ext == "jpeg" || ext == "jpg" || ext == "png"|| ext == "bmp")) {
	        alert("이미지파일 (.jpg, .jpeg, .png, .bmp) 만 업로드 가능합니다.");
	        return false;
	    } else if(fileSize > 5*1024*1024) {
	    	alert("5MB 이하의 파일만 업로드 가능합니다.");
	        return false;
	    } 
	}

    return true;
}

function del() {
	if (confirm("정말 삭제하시겠습니까?")){
		document.frm.submit();	
 	} else {   
    	 return false;
 	}	
 }
 
 function deleteReply() {
	if (confirm("정말 삭제하시겠습니까?")){
		document.frm2.submit();
 	} else {   
    	 return false;
 	}	
 }
 
 
 function search() {
    if(keyword.value.trim()==""){
        alert("2글자 이상 입력해주세요.");
        return false;
    }

	if(document.searchForm.keyword.value.length<2){
        alert("2글자 이상 입력해주세요.");
        return false;
    }    
    
    return true;	
 }
 
 function calcTextareaHeight(e) {
    e.style.height = 'auto'
    e.style.height = `${e.scrollHeight}px`
}

 function close(){
	document.frm.submit();
	opener.frm.replyContent.value = document.frm.replyContent.value;
	self.close();
}