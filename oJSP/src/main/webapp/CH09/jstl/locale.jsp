<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>우리나라</h2>
	<fmt:setLocale value="ko_kr"/>
	<fmt:formatNumber value="1000" type="currency" />
	
	<h2>미국</h2>
	<fmt:setLocale value="eu_ger"/>
	<fmt:formatNumber value="1000" type="currency" />
	
	<h2>쪽바리</h2>
	<fmt:setLocale value="ja_jp"/>
	<fmt:formatNumber value="1000" type="currency" />
	
	<fmt:setLocale value=""/>
	<fmt:formatNumber value="1000" type="currency" />
</body>
</html>