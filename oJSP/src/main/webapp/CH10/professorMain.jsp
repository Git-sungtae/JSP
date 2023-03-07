<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>교수정보 선택</h2>
	<form action="CH10/oraSelect2.jsp" method="post">
		<select name="selected">
			<c:forEach var="profList" items="${ profList }">
				<option value="${ profList.profno }">${ profList.profno }&nbsp;&nbsp;${ profList.name }</option>
			</c:forEach>
		</select><p />
		<input type="submit" value="확인">
	</form>
			
</body>
</html>