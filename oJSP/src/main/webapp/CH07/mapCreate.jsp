<%@page import="java.util.HashMap"%>
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
	//맵 사용하기
	HashMap<String, String> map = new HashMap<>();
	map.put("김영광", "부천");
	map.put("김태산", "인천");
	map.put("장성태", "서울");
	map.put("Na", "Makok");
	
	request.setAttribute("ADDRESS", map);
														//***?는 form의 파라미터가 NAME인 것과 같음
														//form사용하지 않고 파라미터로 넘겨받기 가능
	RequestDispatcher rd = request.getRequestDispatcher("mapView.jsp?NAME=Na");
	rd.forward(request, response);
%>
</body>
</html>