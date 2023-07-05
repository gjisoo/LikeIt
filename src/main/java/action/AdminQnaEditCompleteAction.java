package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminBbsDAO;

public class AdminQnaEditCompleteAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			//서블릿이 아니어도 request만 있으면 ServletContext를 구할 수 있다.
			ServletContext application = request.getServletContext();
			
			//첨부파일이 저장될 bbs_upload폴더를 절대경로로 정의하자!
			String realPath = application.getRealPath("/bbs_upload");
			
			// 나머지 파라미터 값들 받기
			String q_idx = request.getParameter("q_idx");
			String m_idx = request.getParameter("m_idx");
			String q_title = request.getParameter("q_title");
			String q_pw = request.getParameter("q_pw");
			String q_content = request.getParameter("content");
			
			// 글쓴이의 ip를 알아낸다.
			String q_ip = request.getRemoteAddr();
			
			// dB에 저장하기---------------------------------------m_idx값 넣어야 함.
			int cnt = AdminBbsDAO.editBbs(q_idx, q_title, q_content, q_ip);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/Controller_admin?type=admin_qnaview";
	}

}
