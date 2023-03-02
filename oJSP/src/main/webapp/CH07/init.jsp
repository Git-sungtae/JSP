<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> web.xml 세팅값 가져오기</h1>
	<!-- initParam : 초기화된 파라미터, xml의 context-Param의 값을 가져옴 -->
	<!-- **Context : 환경. 외부환경요소를 내부환경으로 가져와 사용하는 것-->
	${ initParam.DBName1 }<p>
	${ initParam.DBName2 }

</body>
</html>