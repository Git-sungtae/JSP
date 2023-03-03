<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EmpReSult</h1>
	<jsp:useBean id="empBean" class="och08.Emp" scope="request"/>
	사번 : <jsp:getProperty property="empno" name="empBean"/><p>
	이름 : <jsp:getProperty property="ename" name="empBean"/><p>
	업무 : <jsp:getProperty property="job" name="empBean"/><p>
	급여 : <jsp:getProperty property="sal" name="empBean"/><p>
	
	
</body>
</html>