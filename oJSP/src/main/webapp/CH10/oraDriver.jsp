<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upw = "1111";
	
	Class.forName(driver);
	
	Connection conn = DriverManager.getConnection(url, uid, upw);
	if(conn != null){
		out.println("연결 성공");
	} else {
		out.println("연결 실패");
	}
	
	conn.close();
	
%>

</body>
</html>