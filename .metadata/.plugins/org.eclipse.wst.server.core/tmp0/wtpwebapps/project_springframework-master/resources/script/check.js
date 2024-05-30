function userCheck(){
	alert("아이디를 입력 해 주세요");
	if(document.frm.userid.value.length == 0){
		alert("아이디를 입력 해 주세요");
		document.frm.userid.focus;
		return false;
	}else if(document.frm.pwd.value.length == 0){
		alert("아이디를 입력 해 주세요");
		document.frm.userid.focus;
		return false;
	}
	return true;
}

function clickCheck(){
	console.log("script.do")
}