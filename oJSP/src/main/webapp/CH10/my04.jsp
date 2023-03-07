<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="och10.Division"%>
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
<%
	String driver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/scottdb?serverTimezone=UTC";
	String dno = request.getParameter("dno");
	System.out.println(dno);
	String sql = "select * from division where phone like ?";
	ArrayList<Division> divList = new ArrayList<>();
	
	try{
		Class.forName(driver);
	} catch(Exception e){
		e.printStackTrace();
	}
	
	try(Connection conn = DriverManager.getConnection(url, "root", "1111");
			PreparedStatement pstmt = conn.prepareStatement(sql);
				){
		pstmt.setString(1, "%" + dno + "%");
		System.out.println("sql : " + sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			Division dto = new Division();
			dto.setDno(rs.getInt(1));
			dto.setDname(rs.getString(2));
			dto.setPhone(rs.getString(3));
			dto.setPosition(rs.getString(4));
			
			divList.add(dto);
		}
	} catch(Exception e){
		e.printStackTrace();
	}
	
	if(divList != null){
		request.setAttribute("divList", divList);
		RequestDispatcher rd = request.getRequestDispatcher("my04Result.jsp");
		rd.forward(request, response);
	}

%>

</body>
</html>