<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	System.out.println("여기까진 왔니");
%>
</head>
<%
	String context = request.getContextPath().concat("${ fileName }");
	System.out.println("context → " + context);
%>
<body>
	<h2>파일 업로드 전송 결과 upLoadFileName</h2>
	upLoad 사진2 : <img alt="엑박" src="<%=context%>/${ fileName }">
	upLoad 사진2 : <img alt="엑박" src="${ uploadFilename }">
</body>
</html>