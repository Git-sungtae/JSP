package och02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Cal
 */
@WebServlet("/Cal")
public class Cal extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//파라미터로 가져온 변수 Int로 파싱
//		int num1 = Integer.parseInt(request.getParameter("value1"));
//		int num2 = Integer.parseInt(request.getParameter("value2"));
		int num1 = 5;
		int num2 = 0;
		
		
		//사칙연산 수행
		int sum = num1 + num2;
		int sub;
		if (num1 > num2) {
			sub = num1 - num2;
		} else {
			sub = num2 - num1;
		}
		int mul = num1 * num2;
		
		try {
			double div = (double)num1 / num2;
			//response할 Writer객체 생성
			PrintWriter out = response.getWriter();
			out.println("<html><body><h1>Calculator</h1>");
			out.println("Add : " + sum + "<p>" + "Sub : " + sub + "<p>"
						+ "Mul : " + mul + "<p>" + "Div : " + div);
			out.println("</html></body>");
		} catch (ArithmeticException e) {
			System.out.println(e);
		}
		

		
		

		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
