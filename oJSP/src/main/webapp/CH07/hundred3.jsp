<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int sum = 0;
	for(int i = 1; i <= 100; i++){
		sum += i;
	}
	
	//request.setAttribute("sum", sum);
	
	//pageContext : 내장객체 → 페이지 scope이므로 페이지를 이동하면 사용할 수 없음
	pageContext.setAttribute("sum", sum);
	RequestDispatcher rd = request.getRequestDispatcher("hunResult3_El.jsp");
	//foward로 페이지를 이동하게 되면, page로 set된 속성은 사용할 수 없다.
	/* rd.forward(request, response); */
%>
	<h2>1부터 100까지 합 by El(Page Scope)</h2>
	<h3>${ sum }</h3>

</body>
</html>