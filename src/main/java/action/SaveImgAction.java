package action;

import java.io.File;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.ProductDAO;
import vo.MemVO;

public class SaveImgAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 첨부된 이미지를 editor_upload라는 폴더에 저장되어야 한다.
		// 그리고 마지막에 저장된 이미지의 경로를 JSP에서 표현할 수 있도록
		// request에 저장해야 함!
		
		try {
			// editor_upload라는 폴더의 위치를 절대경로화 시킨다.
			ServletContext application = request.getServletContext();
			String realPath = application.getRealPath("/image_upload");
			
			// 절대경로화 시킨 이유는 첨부된 파일을 받는 객체 즉,
			// MultipartRequest를 생성하기 위해서다.
			MultipartRequest mr = new MultipartRequest(request, realPath,
					1024*1024*5, "utf-8", new DefaultFileRenamePolicy());
			
			//파일이 업로드 된 상태다.
			String file_name = null;
			String ori_name = null;
			File f = mr.getFile("img");
			long size = 0;
			if(f != null) {
				file_name = f.getName(); // 저장된 파일명
				ori_name = mr.getOriginalFileName("img");
				size = f.length();
			}
			
			String p_name = mr.getParameter("p_name");
			String p_s_price = mr.getParameter("p_s_price");
			String m_idx = null;
			String m_id = null;
			String p_info = mr.getParameter("p_info");
			String p_goal_like = mr.getParameter("p_goal_like");
			String file_size = String.valueOf(size);
			
			Object obj = request.getSession().getAttribute("mvo");
			if(obj != null) {
				m_idx = ((MemVO)obj).getM_idx();
				m_id =  ((MemVO)obj).getM_id();
			}
			
			
			int cnt = ProductDAO.add_product(p_name, p_s_price, m_idx, m_id, p_info, p_goal_like, ori_name, file_name, file_size );
			
			//JSP에서 JSON표기법으로 파일 업로드가 되었는지 cnt를 request에 저장!
			request.setAttribute("cnt", cnt);			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "/saveImg.jsp"; // 이미지의 경로(url)를 json형식을 반환!
	}

}
