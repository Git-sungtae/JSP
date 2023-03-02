package och06;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Greet
 */
@WebServlet("/Greet")
public class Greet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PrintWriter log;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Greet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    //서비스 실행시점에 실행되고 만들어놓은 log를 사용
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		System.out.println("=====geGet() start(서비스 실행 시점)=====");
		String name = request.getParameter("name");
		String msg = name + "님 반가워\r\n";
		GregorianCalendar gc = new GregorianCalendar();
		String date = String.format("%TF %TT\r\n", gc, gc);
		//File 출력
		log.print(date + msg);
		PrintWriter out = response.getWriter();
		//화면출력 msg
		out.println("<html><boy><h2>인사</h2>" + msg);
		out.println("</boy></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	//서블릿 생성주기 생성 : init()
	//서블릿이 컨테이너에 올라갈 때 실행됨
	@Override
	public void init() throws ServletException {
		try {
			System.out.println("=====init() start(서블릿 생성 시점)=====");
			log = new PrintWriter(new FileWriter("C:/log/log.txt"), true);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//서블릿 생성주기 소멸 : destory()
	@Override
	public void destroy() {
		System.out.println("=====destory() start(서블릿 소멸 시점)=====");
		log.flush();
		if (log != null) {
			log.close();
		}
	}

}
