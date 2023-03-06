<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>맥시문</h1>
	<u:max num2="5" num1="10"/><br>
	5와 10중에서 누가 클까요? : ${ maximum }
	

</body>
</html>