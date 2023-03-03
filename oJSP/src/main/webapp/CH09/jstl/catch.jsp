<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- num에서 호출 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- catch문 내부의 문장에서 예외가 발생하면 선언한 변수(var)에 에러메세지가 담긴다. -->
	<!-- 따라서 var이 null이 아니라는건, 예외가 발생했다는 의미 -->
	<c:catch var="e1">
		<%
			int num1 = Integer.parseInt(request.getParameter("num1")); 
			int num2 = Integer.parseInt(request.getParameter("num2")); 
		%>
		나눗셈 결과 : <%=num1 / num2 %>
	</c:catch>
	<c:if test="${ e1 != null }" >
		에러메세지 : ${ e1.message }
	</c:if>
	
	
</body>
</html>