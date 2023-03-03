<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<c:set var = "c" value="김영광"></c:set>
<body>
	<!-- Bean 선언 -->
	<!-- Book pt = new Book(); -->
	<jsp:useBean id="pt" class="och08.Book" scope="request" />
	<!-- Bean 값을 저장 -->
		<!-- property : "*" → 객체를 통째로 -->
		<!-- name : Bean의 id -->
			<!-- 파라미터명이랑 자바빈 변수명이 다른경우 -->
	<jsp:setProperty property="code" param="code2" name="pt"/>
			<!-- 파라미터명이랑 자바빈 변수명이 같은 경우 -->
	<jsp:setProperty property="name" name="pt"/>
	<jsp:setProperty value="키무영광" property="writer" name="pt"/>
	<jsp:setProperty value="123578" property="page" name="pt"/>
	<!-- Bean 값을 호출하기 -->
	코드 : <jsp:getProperty property="code" name="pt"/><p>
	이름 : <jsp:getProperty property="name" name="pt"/><p>
	가격 : <jsp:getProperty property="price" name="pt"/><p>
	
	<!-- Bean 페이지 이동 -->
	<%-- <jsp:forward page="productInfo.jsp" /> --%>
</body>
</html>