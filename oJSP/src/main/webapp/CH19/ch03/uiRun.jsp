<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.button { color:red; 
	          font-size:20px; 
	     }
</style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
 	$(function() {
		$('#chk').click(function(){
			alert('펑션부름');
			let id = $('#id').val();
			alert('id->' + id);
		});
	});
/* 	$(() => {
		$('#chk').click(() => {
			let id = $('#id').val();
			alert('id -> ' + id);
		});
	}); */

</script>
</head>
<body>
	<h1>회원가입</h1>
	<form action=""></form>
		아이디 : <input type="text" name="id" id = "id" value=""><p />
		비밀번호 : <input type="password" name="pw" id = "pw" ><p />
		이름 : <input type="text" name="name" id = "name" ><p />
		<input type="button" class="button" value="확인1" id = "chk">
		<input type="button" class="button" value="확인2" id = "chk3">
	
	

</body>
</html>