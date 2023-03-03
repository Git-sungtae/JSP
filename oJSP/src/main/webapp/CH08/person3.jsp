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
	<jsp:useBean id="person" class="och08.Person" scope="request"/>
	
	<jsp:setProperty property="name" name="person" value="${ name }"/>	
	<jsp:setProperty property="age" name="person" value="${ age }"/>	
	<jsp:setProperty property="gender" name="person" value="${ gender }"/>
	
	<c:set var="name2" value="${ name }"/>
	<c:out value="${ name2 }"/>
	
		
</body>
</html>