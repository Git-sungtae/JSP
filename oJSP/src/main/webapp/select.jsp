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
		String[] col = {"red", "orange", "yellow", "white"};
		int n = (int)(Math.random()*3);
		int n2 = (int)(Math.random()* 9) + 1 ;
		String pgm = request.getParameter("pgm") + ".jsp";
		//**form 없이 이동 Page를 지정하는 객체
		System.out.println("pgm : " + pgm );
		RequestDispatcher rd = request.getRequestDispatcher(pgm);
		if(pgm.equals("color1.jsp")){
			request.setAttribute("color", col[n]);
		} else if(pgm.equals("gugu.jsp")){
			request.setAttribute("dan", n2);
			
		} else if(pgm.equals("response.jsp")){
			
		}
		rd.forward(request, response);
	%>

</body>
</html>