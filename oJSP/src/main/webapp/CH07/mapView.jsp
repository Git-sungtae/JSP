<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${ param.NAME }의 주소는?<p>
	${ ADDRESS[param.NAME] }<p>
	
	<!-- Key를 입력할 경우 한글에는 대괄호를 사용해야한다. -->
	<!-- 영어의 경우 .Key이름 으로 Value호출 가능 -->
	${ ADDRESS["김영광"] }<p>
	${ ADDRESS.Na }
</body>
</html>