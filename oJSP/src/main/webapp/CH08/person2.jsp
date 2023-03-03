<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Person person = new Person() -->
	<jsp:useBean id="person" class="och08.Person" scope="request"/>
	
	<!-- person.setXXX() -->
	<jsp:setProperty property="*" name="person"/>
	
	<jsp:forward page="personResult.jsp" />

	

</body>
</html>