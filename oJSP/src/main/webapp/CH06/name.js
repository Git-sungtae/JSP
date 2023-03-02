function chk(){
	if(!frm.name.value){
		alert("이름이?");
		frm.name.focus();
		return false;
	}
	return true;
}