<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<c:set var="greet" value="How Are You?"/>
<body>
	원글 : ${ greet }<p>
	대문자 : ${ fn:toUpperCase(greet) }<p>
	소문자 : ${ fn:toLowerCase(greet) }<p>
	How의 위치 : ${ fn:indexOf(greet, "How")}<p>
	Are의 위치 : ${ fn:indexOf(greet, "Are") }<p>
	Are 변경 : ${ fn:replace(greet, "How", "훼어") }<p>
	문자 길이 : ${ fn:length(greet) }<p>
</body>
</html>