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
	<c:forEach var="divList" items="${ divList }">
		dno : ${ divList.dno }<br>
		dname : ${ divList.dname }<br>
		phone : ${ divList.phone }<br>
		position : ${ divList.position }<br>
		<hr />
	</c:forEach>

</body>
</html>