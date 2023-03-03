<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/menu.css">
</head>
<body>
	<h1>대외비</h1>
	<h2>오늘의 점심메뉴</h2>
	<hr>
	확률 증가 메뉴 선택하기<br>
	<div class="chkbox">
	<input type="checkbox" name = "upChance" value="한솥">한솥<br> 
	<input type="checkbox" name = "upChance" value="국밥">국밥<br> 
	<input type="checkbox" name = "upChance" value="제육">제육<br> 
	<input type="checkbox" name = "upChance" value="김밥천국">김밥천국<br> 
	<input type="checkbox" name = "upChance" value="버거킹">버거킹<br> 
	<input type="checkbox" name = "upChance" value="편의점">편의점<p>
	</div>
	
	확률 감소 메뉴 선택하기<br>
	<div class="chkbox">
	<input type="radio" name="downChance" value="한솥">한솥<br>
	<input type="radio" name="downChance" value="국밥">국밥<br>
	<input type="radio" name="downChance" value="제육">제육<br>
	<input type="radio" name="downChance" value="김밥천국">김밥천국<br>
	<input type="radio" name="downChance" value="버거킹">버거킹<br>
	<input type="radio" name="downChance" value="편의점">편의점<p>
	</div>
	
	<div class="ok_btn">
		<p>메뉴 결정하기</p>
	
	</div>

</body>
</html>