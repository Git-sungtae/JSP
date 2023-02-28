<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사칙연산</h1>
	<%
		response.setContentType("text/html; charset = UTF-8");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	
		int add = num1 + num2;
		int sub = 0;
		if(num1 > num2){
			sub = num1 - num2;	
		} else {
			sub = num2 - num1;
		}
		int mul = num1 * num2;
		double div = 0;
		String divPrint;
		if(num1 == 0 || num2 == 0){
			divPrint = "0으로는 나눌 수 없습니다.";
		} else {
			div = (double)num1 / num2;
			divPrint = Double.toString(div);
		}
		
	%>
	
	덧셈 : <%=add%> <p>
	뺄셈 : <%=sub%> <p>
	곱셈 : <%=mul%> <p>
	나눗셈 : <%=divPrint%> <p>

</body>
</html>