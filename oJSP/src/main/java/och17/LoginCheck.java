package och17;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/CH17/sub2/*")
public class LoginCheck implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//Session 도출
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse httpServletResponse = (HttpServletResponse) response;
		HttpSession session = httpServletRequest.getSession();
		System.out.println("Login Check doFilter 실행");
		if (session == null || session.equals("")) {
			httpServletResponse.sendRedirect("/oJSP/CH17/login.jsp");
		}
		String id =(String) session.getAttribute("id");
		if (id == null || id.equals("")) {
			httpServletResponse.sendRedirect("/oJSP/CH17/login.jsp");
		}
		
		//pass the request along th filter chain
		chain.doFilter(request, response);
		
	}


}
