package och14;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class UploadBoard3
 */
@WebServlet("/uploadBoard3")
public class UploadBoard3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadBoard3() {
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
		System.out.println("UploadBoard3 doPost 시작");
		String serverSavedFilename = "";
		String uploadFileName = "";
		
		
		request.setCharacterEncoding("utf-8");
		int maxSize = 5 * 1024 * 1024 * 1024;
		//web-app에 생성한 폴더 경로
		String filesave = "/fileSave";
		//Meta Data
		String realPath = getServletContext().getRealPath(filesave);
		System.out.println("realPath → " + realPath);
		
		//이 객체가 생성되는순간 파일이 업로드됨
		MultipartRequest multi = new MultipartRequest(
			request, //post로 넘어온 파라미터들을 처리하기 위해 request객체도 넘김
			realPath, 
			maxSize,
			"utf-8", 
			new DefaultFileRenamePolicy()
		);
		
		Enumeration en = multi.getFileNames();
		
		//업로드된 파일의 정보 조회
		while(en.hasMoreElements()){
			//input 태그의 속성이 file인 태그의 name 속성값을 이용해 파일 객체 생성
			String parameterName = (String) en.nextElement();
			//서버에 저장된 파일 이름
			serverSavedFilename = multi.getFilesystemName(parameterName);
			//전송 전 원래의 파일 이름
			String originalFileName = multi.getOriginalFileName(parameterName);
			//전송된 파일의 내용 타입
			String type = multi.getContentType(parameterName);
			//전송된 파일속성이 file인 태그의 name 속성값을 이용해 파일 객체 생성
			File file = multi.getFile(parameterName);
			System.out.println("real path : " + realPath);
			System.out.println("파라미터 이름 : " + parameterName);
			System.out.println("실제 파일 이름 : " + originalFileName);
			System.out.println("저장된 파일 이름 : " + serverSavedFilename);
			System.out.println("파일 타입" + type);
			
			if(file != null){
				System.out.println("크기 : " + file.length());
			}
		}
		
		String name = multi.getParameter("name");
		String title = multi.getParameter("title");
		System.out.println("입력한 제목 : " + title);
		System.out.println("업로드한 사람 : " + name);
		
		uploadFileName = realPath + "\\" + serverSavedFilename;
		System.out.println("전달 uploadFileName : " + uploadFileName);
		
		request.setAttribute("fileName", "fileSave\\" + serverSavedFilename);
		request.setAttribute("uploadFilename", uploadFileName);
		request.setAttribute("title", title);
		
		if (request != null) {
			System.out.println("널 아님");
			System.out.println("fileSave\\" + serverSavedFilename);
		}
		
		request.getRequestDispatcher("/CH14/uploadBoardResult.jsp").forward(request, response);
		
		

	}

}
