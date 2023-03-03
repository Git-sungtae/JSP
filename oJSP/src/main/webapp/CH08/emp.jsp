<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="empBean" class="och08.Emp" scope="request"/>
	<jsp:setProperty property="*" name="empBean"/>
	<jsp:forward page="empResult.jsp" />

</body>
</html>