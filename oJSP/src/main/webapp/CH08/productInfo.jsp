<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="pt" class="och08.Book" scope="page" />
	<!-- Bean 값을 저장 -->
		<!-- property : "*" → 객체를 통째로 -->
		<!-- name : Bean의 id -->
	<jsp:setProperty property="*" name="pt"/>
	<!-- Bean 값을 호출하기 -->
	작가 : <jsp:getProperty property="writer" name="pt"/><p>
	페이지 : <jsp:getProperty property="page" name="pt"/><p>
	
</body>
</html>