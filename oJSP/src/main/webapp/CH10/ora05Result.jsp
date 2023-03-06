<%@page import="och10.EmpDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Model 1 View</h2>
	<%
		ArrayList<EmpDto> al = (ArrayList<EmpDto>)request.getAttribute("al");
	%>
	<table width = "100%" bgcolor = "yellowgreen" border="1">
		<tr><th>사번</th><th>이름</th><th>업무</th><th>급여</th></tr>
		<%
			for(int i = 0; i < al.size(); i++){
				out.println("<tr><td>" + al.get(i).getEmpno() + "</td>");
				out.println("<td>" + al.get(i).getEname() + "</td>");
				out.println("<td>" + al.get(i).getJob() + "</td>");
				out.println("<td>" + al.get(i).getSal() + "</td></tr>");
			}
		%>
	</table>
</body>
</html>