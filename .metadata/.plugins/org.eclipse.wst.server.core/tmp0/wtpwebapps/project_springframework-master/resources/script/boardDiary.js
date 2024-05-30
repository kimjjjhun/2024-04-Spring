function boardCheck(){
    if(boardTitle.value.trim()==""){
        alert("제목을 입력해주세요.");
        return false;
    }
    
    if(boardWriter.value.trim()==""){
        alert("작성자를 입력해주세요.");
        return false;
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