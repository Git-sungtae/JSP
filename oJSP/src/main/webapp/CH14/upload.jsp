<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	request.setCharacterEncoding("utf-8");
	int maxSize = 5 * 1024 * 1024 * 1024;
	//web-app에 생성한 폴더 경로
	String filesave = "/fileSave";
	//Meta Data
	String realPath = getServletContext().getRealPath(filesave);
	System.out.println("realPath → " + realPath);
	
	//이 객체가 생성되는순간 파일이 업로드됨
	MultipartRequest multi = new MultipartRequest(
		request, //post로 넘어온 파라미터들을 처리하기 위해 request객체도 넘김
		realPath, 
		maxSize,
		"utf-8", 
		new DefaultFileRenamePolicy()
	);
	
	Enumeration en = multi.getFileNames();
	
	//업로드된 파일의 정보 조회
	while(en.hasMoreElements()){
		//input 태그의 속성이 file인 태그의 name 속성값을 이용해 파일 객체 생성
		String parameterName = (String) en.nextElement();
		//서버에 저장된 파일 이름
		String serverSavedFilename = multi.getFilesystemName(parameterName);
		//전송 전 원래의 파일 이름
		String originalFileName = multi.getOriginalFileName(parameterName);
		//전송된 파일의 내용 타입
		String type = multi.getContentType(parameterName);
		//전송된 파일속성이 file인 태그의 name 속성값을 이용해 파일 객체 생성
		File file = multi.getFile(parameterName);
		out.println("real path : " + realPath + "<p />");
		out.println("파라미터 이름 : " + parameterName + "<p />");
		out.println("실제 파일 이름 : " + originalFileName + "<p />");
		out.println("저장된 파일 이름 : " + serverSavedFilename + "<p />");
		out.println("파일 타입" + type + "<p />");
		
		if(file != null){
			out.println("크기 : " + file.length() + "<p />");
		}
	}
	
	String name = multi.getParameter("name");
	String title = multi.getParameter("title");
	out.println("입력한 제목 : " + title + "<p />");
	out.println("업로드한 사람 : " + name);
%>
</body>
</html>