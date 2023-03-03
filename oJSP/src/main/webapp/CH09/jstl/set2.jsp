<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--   code : 1112 , name : 온도계 , price : 16,000원
   Page이동 *: set2Result.jsp -->
   <c:set var="code" value="1112" scope="request"/>
   <c:set var="name" value="온도계" scope="request"/>
   <c:set var="price" value="16,000원" scope="request"/>
   
   <jsp:forward page="set2Result.jsp" />

</body>
</html>