<%@page import="java.util.ArrayList"%>
<%@page import="och10.ProfessorDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String profno = request.getParameter("profno");
	System.out.println(profno);
	String sql = "select profno, name, sal, to_char(hiredate, 'YY/MM/dd') from professor where profno = " + profno;
	//context에 이쓴 context.xml과 연결
					//초기화된 Context로 인스턴스화
	Context ctx = new InitialContext();
					//이름으로 찾음(JNDI:이름을 통해 Database Pooling Resource에 접근하는 방식)
					//java:comp/env/ + Context-resource-name
					//casting필요
	//이름으로 검색해서, ds객체에 resource의 값을 세팅 → ds객체로 연결을 시키면 됨
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
					
	//db연결 모듈화
	Connection conn = ds.getConnection();
	
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	System.out.println("sql : " + sql);
	ArrayList<ProfessorDTO> profList = new ArrayList<>(); 
	
	while (rs.next()) {
		ProfessorDTO dto = new ProfessorDTO();
		dto.setProfno(rs.getInt(1));
		dto.setName(rs.getString(2));
		dto.setSal(rs.getInt(3));
		dto.setHiredate(rs.getString(4));
		
		System.out.print("ProfList에 dto담기 성공여부 : ");
		System.out.println(profList.add(dto));
	}
	
	request.setAttribute("profList", profList);
	RequestDispatcher rd = request.getRequestDispatcher("/professorMain");
	rd.forward(request, response);
	
%>
</body>
</html>