<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1부터 100까지 합 by 스크립틀릿 + Expression</h2>
	<%
		String sum = request.getAttribute("sum").toString();
	%>
	<h3><%=sum %></h3>
</body>
</html>