<%@page import="och11.Member1DTO"%>
<%@page import="och11.Member1DAO"%>
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
	String agree = request.getParameter("agree");
	String chk = "";
	if(agree.equals("y")){
		String id = (String)session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
		String name = (String)session.getAttribute("name");
		
		Member1DTO mt = new Member1DTO();
		mt.setId(id);
		mt.setName(name);
		mt.setPw(pw);
		
		Member1DAO ma = new Member1DAO();
		int result = ma.insert(mt);
		System.out.println("result2 : " + result);
		if (result > 0){
			chk = "success";
		} else {
			chk = "fail";
		}
		
	} else {
		chk = "fail";
	}
	
	session.invalidate();
	out.println("invalidate() 적용 후에도 " + session.getId() + "<br>");
	response.sendRedirect("result.jsp?chk=" + chk);
%>

</body>
</html>