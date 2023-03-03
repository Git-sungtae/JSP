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
	<c:set var = "animals" value="토끼, 고양이 * 강아지, 여우"></c:set>
	<c:out value="${ animals }"></c:out>
	<h2>사자의 생일</h2>
	<c:forTokens var = "tkn" items="${ animals }" delims="*, ">
		${ tkn }<br>
	</c:forTokens>
</body>
</html>