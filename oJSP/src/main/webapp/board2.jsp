<!-- 지시자 -->
<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2 Servlet 변환 pgm</title>
</head>
<body>
	<h1>board2 Servlet 변환 pgm</h1>
	<!--자바 코딩 가능 - 스크립클릿-->
	<%
	//request : 내장객체
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
	//PrintWriter out 도 내장객체
		out.println("제목1 : " + title + "<p>");
		out.println("작성자1 : " + writer + "<p>");
		Date date = new Date();
		out.println("작성일시1 : " + date + "<p>");
		out.println("내용1 : " + content + "<p>");
	//파일 저장
		long fileName = date.getTime();
		String real = application.getRealPath("/WEB-INF/out/" + fileName + ".txt");
		System.out.println("real : " + real);
		//file저장할수 있는 객체
		FileWriter fw = new FileWriter(real);
		//File내용
		String msg = "제목 : " + title + "\r\n";
		msg += "작성자 : " + writer + "\r\n";
		msg += "내용 : " + content + "\r\n";
		fw.write(msg);
		fw.close();
	%>
	<%-- 변수를 끌어다 쓸 수 있음 <%= %> --%>
	<!-- 화면 출력방법 2 -->
	제목2 : <%=title %><p>
	작성자2 : <%=writer %><p>
	작성일2 : <%=date %><p>
	내용2 : <%=content %><p>
	
	
</body>
</html>