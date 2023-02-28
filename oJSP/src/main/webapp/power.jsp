<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 메서드 선언 -->
	<%! 
		int power(int x, int y){
		int result = 1;
		for(int i = 0; i < y; i++){
			result *= x;
		}
		return result; 
	}
	%>
	
	5^1 : <%=power(5,1)%><p>
	5^2 : <%=power(5,2)%><p>
	5^3 : <%=power(5,3)%><p>
	5^4 : <%=power(5,4)%><p>
	5^5 : <%=power(5,5)%><p>
	
</body>
</html>