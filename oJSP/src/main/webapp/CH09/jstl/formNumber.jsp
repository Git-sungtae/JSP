<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
					<!-- grouping used : 세자리수 단위 콤마 -->
	<f:formatNumber value="1000000" groupingUsed="true"/> <br>
					<!-- 포맷대로 하면서 나머지부분은 반올림 된다 -->
	<f:formatNumber value="3.1415923" pattern="#.###"/> <br>
					<!-- 포맷보다 적은 자릿수인경우 표시 안함 -->
	<f:formatNumber value="3.1" pattern="#.##"/> <br>
					<!-- 소수점자릿수까지 표시해야할 때(00되는것 아님) -->
	<f:formatNumber value="3.1" pattern="#.00"/> <br>
	<f:formatNumber value="121434323453" pattern="#,###.00"/> <br>
										<!-- currency : 통화 -->
	<f:formatNumber value="250000" type="currency" currencySymbol="\$"/> <br>
	<f:formatNumber value="0.75" type="percent"/> <br>

</body>
</html>