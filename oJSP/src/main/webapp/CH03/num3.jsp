<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>num의 누적 합계</h1>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		int sum = 0;
		for(int i = 1; i <= num; i++){
			sum += i;
			out.println(i + "일때 합 : " + sum + "<br>");
		}
	
	%>
</body>
</html>