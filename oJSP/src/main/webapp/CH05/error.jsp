<!-- 페이지에 에러페이지 속성 추가 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!-- 정상 값 세팅 -->    
<%
	//정상값 세팅
	response.setStatus(200);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String errName = request.getAttribute("errName").toString();
%>
	<h1>공지사항</h1>
	<h2><%=errName %>때문에 작업중...</h2>

</body>
</html>