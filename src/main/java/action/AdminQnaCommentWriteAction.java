package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminBbsDAO;


public class AdminQnaCommentWriteAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String c_content = request.getParameter("content");
		String q_idx = request.getParameter("q_idx");
		String m_idx = request.getParameter("m_idx");
		
	
		
		
		// 글쓴이의 ip를 알아낸다.
		String c_ip = request.getRemoteAddr();
		
		// dB에 저장하기---------------------------------------m_idx값 넣어야 함.
		AdminBbsDAO.addComm(c_content, c_ip, q_idx, m_idx);
	
		return "Controller?type=admin_qnaview&q_idx="+q_idx;
		
		
	}

}
