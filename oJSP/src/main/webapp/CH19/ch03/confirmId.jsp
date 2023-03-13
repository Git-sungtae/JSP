<%@page import="och19.MemberDao"%>
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
	//Service
	String id = request.getParameter("id");
	//DAO호출
	MemberDao memberDao = MemberDao.getInstance();
	//member1(tb) read
	//id존재 : return true 
	//id존재X : return false
	boolean result = memberDao.checkId(id);
	if(result){
		out.println("사용할 수 없는 아이디 입니다. 창의력좀 발휘하세요.");
	} else {
		out.println("사용할 수 있는 아이디 입니다.");
	}
	
	


%>
</body>
</html>