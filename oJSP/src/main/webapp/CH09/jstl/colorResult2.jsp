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
	<!-- 기본형 for 문 -->
	<c:forEach var="cnt" begin="1" end="7">
		<!-- 향상형 for문 -->
		<c:forEach var="col" items="${color}">
			<font color="${ col }" size=" ${ cnt }">영광</font>
		</c:forEach>
		<p>
	</c:forEach>

</body>
</html>