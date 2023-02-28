package och02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Person
 */
@WebServlet("/Person")
public class Person extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Person() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글에 대한 인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset = UTF-8");
		
		//파라미터
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");
		String[] notice = request.getParameterValues("notice");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>개인정보</h1>");
		out.println("이름 : " + name + "<p>");
		out.println("ID : " + id + "<p>");
		out.println("PW : " + pw + "<p>");
		out.println("성별 : " + gender + "<p>");
		out.println("직업 : " + job + "<p>");
		out.println("수신메일 : |");
		if (notice == null) {
			out.println(" 없음 |");
			out.println("</body></html>");
		} else {
			for (String s : notice) {
				out.println(" " + s + " |");
			}
			out.println("</body></html>");
		}
	}

}
