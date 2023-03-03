<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- num2에서 호출 -->
	<h2>인사말(c:choose-c:when문 : Switch문과 유사하다)</h2>
	<c:choose>
		<c:when test="${ param.num1 == 0 }">
			안녕하세요 김영광입니다.
		</c:when>
		<c:when test="${ param.num1 == 1 }">
			Hi I'm KingYoungGwang
		</c:when>
		<c:when test="${ param.num1 == 2 }">
			大家好 我是金英光
		</c:when>
	</c:choose>
	
</body>
</html>