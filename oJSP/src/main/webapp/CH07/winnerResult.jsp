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
	<h1>스트립틀릿 Winner 출력</h1>
	<%
		int winnerNum = (int)(Math.random()*2);
		String[] winnerArr = (String[])request.getAttribute("winner");	
		String winnerResult = winnerArr[winnerNum];
	%>
	<h3><%=winnerResult%></h3>
	
	<h1>EL Winner 출력</h1>
	<c:set var="winnerNum" value="${(int)(Math.random()*2)}"></c:set>
	<c:set var="winnerArr" value="${requestScope.winner}" ></c:set>
	<h3>${ winnerArr[winnerNum] }</h3>
</body>
</html>