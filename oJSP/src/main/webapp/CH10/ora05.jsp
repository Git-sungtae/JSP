<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="och10.EmpDto"%>
<%@page import="java.util.ArrayList"%>
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
	String sql = "select empno, ename, job, sal from emp";
	
	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, uid, upw);
	ArrayList<EmpDto> al = new ArrayList<>();
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()){
		do{
			EmpDto empDto = new EmpDto();
			empDto.setEmpno(rs.getInt(1));
			empDto.setEname(rs.getString(2));
			empDto.setJob(rs.getString(3));
			empDto.setSal(rs.getInt(4));
			al.add(empDto);
		} while (rs.next());
		
		request.setAttribute("al", al);
		rs.close();
		stmt.close();
		conn.close();
		RequestDispatcher rd = request.getRequestDispatcher("ora05Result.jsp");
		rd.forward(request, response);
		
	}
	
%>

</body>
</html>