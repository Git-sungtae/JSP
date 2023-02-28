function chk(){
	if(!frm.title.value){
		alert("제목을 입력하세요");
		return false;
	}
	
	if(!frm.writer.value){
		alert("작성자를 입력하세요");
		return false;
	}
	
	if(!frm.content.value){
		alert("내용 입력하세요");
		return false;
	}
	
	return true;
	
}