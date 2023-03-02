<%@page import="java.io.FileWriter"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
//init메서드 선언, 멤버변수 선언
	private PrintWriter log;
	String date;
	
	public void jspInit(){
		GregorianCalendar gc = new GregorianCalendar();
		date = String.format("%TF %TT", gc, gc);
		System.out.println("date : "+ date);
		String fileName = "c:/log/" + date.replace(":", "") + ".txt";
		
		try{
			log = new PrintWriter(new FileWriter(fileName, true));	
		} catch(Exception e){
			e.printStackTrace();
			System.out.println("init 예외");
		}
		
	}
			
%>


<%
//Get, Post
	String name = request.getParameter("name");
	String msg = name + "님 반가워";
	
	//화면 출력
	out.println(msg + "<p>현재시간 : " + date);
	//file 출력
	log.println(msg + "<p>현재시간 : " + date + "\r\n");

%>


<%!
//destroy
	public void jspDestroy(){
		System.out.println("jspDestroy start");
		log.flush();
		if(log != null){
			log.close();
		}
	}
%>
</body>
</html>