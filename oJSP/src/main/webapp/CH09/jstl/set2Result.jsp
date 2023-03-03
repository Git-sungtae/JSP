<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상품정보</h2>
	코드 : ${ code }<p>
	이름 : <c:out value="${ name }"></c:out><p>
	가격 : <c:out value="${ price }"></c:out><p>
</body>
</html>