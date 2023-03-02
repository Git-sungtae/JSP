function init(){
	frim.num.focus();
}

function chk(){
	if(!frm.num.value){
		alert("값을 입력하세요");
		frm.num.focus();
		return false;
	}
	
	if(isNaN(frm.num.value) || frm.num.value.trim() == ""){
		alert("숫자를 입력하세요");
		frm.num.focus();
		return false;
	}
	
	return true;
	
}