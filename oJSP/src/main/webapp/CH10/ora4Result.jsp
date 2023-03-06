<%@page import="och10.DeptDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%
	DeptDto deptDto = (DeptDto)request.getAttribute("deptDto");
%>
	<h1>스크립틀릿 출력</h1>
	부서코드 : <%=deptDto.deptno %><p />
	부서이름 : <%=deptDto.dname %><p />
	부서위치 : <%=deptDto.loc %><p /> --%>
	
	<h1>EL 출력</h1>
	부서코드 : ${ deptDto.deptno }<p />
	부서이름 : ${ deptDto.dname }<p />
	부서위치 : ${ deptDto.loc }<p />
	
	
</body>
</html>