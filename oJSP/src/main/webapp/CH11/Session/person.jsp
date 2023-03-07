<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="dbError.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		background-color: yellowgreen;
}
	tr:hover {
		background-color: yellow;
}
	
</style>
</head>
<body>
	<h2>회원가입</h2>
	<form action="agree.jsp">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td> <input type="text" name="id" required="required"> </td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td> <input type="password" name="pw" required="required"> </td>
			</tr>
			<tr>
				<td>이름</td>
				<td> <input type="text" name="name" required="required"> </td>
			</tr>
			<tr>
				<td> <input type="submit" value="확인"> </td>
				<td> <input type="reset" value="취소"> </td>
			</tr>						
		</table>
	</form>
</body>
</html>