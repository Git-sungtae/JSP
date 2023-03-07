<%@page import="java.sql.Types"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
	Context ctx = new InitialContext();
	//이름으로 찾음(JNDI:이름을 통해 Database Pooling Resource에 접근하는 방식)
	//java:comp/env/ + Context-resource-name
	//casting필요
	//이름으로 검색해서, ds객체에 resource의 값을 세팅 → ds객체로 연결을 시키면 됨
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
	
	//db연결 모듈화
	Connection conn = ds.getConnection();
	
	int empno = Integer.parseInt(request.getParameter("empno"));
	System.out.println("empno : " + empno);
	
	//프로시져 호출
	String sql = "{Call Emp_Info3(?,?)}";
	CallableStatement cs = conn.prepareCall(sql);
	cs.registerOutParameter(2, Types.DOUBLE);
	cs.setInt(1,empno);
	cs.execute();
	out.println("급여 : " + cs.getDouble(2));
	cs.close();
	conn.close();
	

%>

</body>
</html>