package action;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class QnaSaveImgAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 첨부된 이미지를 editor_upload라는 폴더에 저장되어야 한다.
		// 그리고 마지막에 저장된 이미지의 경로를 JSP에서 표현할 수 있도록
		// request에 저장해야 함!
		
		try {
			// editor_upload라는 폴더의 위치를 절대경로화 시킨다.
			ServletContext application = request.getServletContext();
			String realPath = application.getRealPath("/editor_upload");
			
			// 절대경로화 시킨 이유는 첨부된 파일을 받는 객체 즉,
			// MultipartRequest를 생성하기 위해서다.
			MultipartRequest mr = new MultipartRequest(request, realPath,
					1024*1024*5, "utf-8", new DefaultFileRenamePolicy());
			
			//파일이 업로드 된 상태다.
			String fname = null;
			File f = mr.getFile("img");
			if(f != null)
				fname = f.getName(); // 저장된 파일명
			
			//JSP에서 JSON표기법으로 지금 업로드된 파일의
			// 경로를 출력해야 한다. 그래서 파일명과 경로를 request에 저장!
			request.setAttribute("f_path", request.getContextPath());
			request.setAttribute("f_name", fname);			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "/qnaSaveImg.jsp"; // 이미지의 경로(url)를 json형식을 반환!
	}

}
