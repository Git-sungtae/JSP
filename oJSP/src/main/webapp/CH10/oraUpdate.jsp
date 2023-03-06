<%@page import="java.sql.PreparedStatement"%>
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
	<h2>스크립틀릿 + Prepared Statement</h2>
	<%
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String uid = "scott";
		String upw = "1111";
		
		int deptno = Integer.parseInt(request.getParameter("deptno"));
		String dname = request.getParameter("dname");
		String loc = request.getParameter("loc");
		
		String sql = "update dept set dname = ?, loc = ? where deptno = ?";
		
		try(Connection conn = DriverManager.getConnection(url, uid, upw);
				PreparedStatement pstmt = conn.prepareStatement(sql)){
			pstmt.setString(1, dname);
			pstmt.setString(2, loc);
			pstmt.setInt(3, deptno);
			int count = pstmt.executeUpdate();
			
			if(count > 0){
				out.println("<script>alert('수정 완료');</script>");
			}
		}
	%>

</body>
</html>