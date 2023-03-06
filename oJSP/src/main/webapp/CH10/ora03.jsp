<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
	String deptno = request.getParameter("deptno");
	String sql = "select * from dept where deptno = " + deptno;
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, uid, upw);
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	if(rs.next()){
		String dname = rs.getString("dname");
		String loc = rs.getString(3);
		
		request.setAttribute("dname", dname);
		request.setAttribute("loc", loc);
		request.setAttribute("deptno", deptno);
		
		RequestDispatcher rd = request.getRequestDispatcher("ora3Result.jsp");
		rd.forward(request, response);
		
	} else {
		out.println("존재하지 않는 부서코드입니다.");
	}
	rs.close();
	stmt.close();
	conn.close();
%>

</body>
</html>