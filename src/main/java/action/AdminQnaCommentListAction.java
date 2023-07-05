package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminBbsDAO;


public class AdminQnaCommentListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// type을 제외한 나머지 파라미터들 받기
		String c_content = request.getParameter("c_content");
		String q_idx = request.getParameter("q_idx");
		String m_idx = request.getParameter("m_idx");
		String q_pw = request.getParameter("q_pw");
		String c_ip = request.getRemoteAddr();
		
		
		int cnt = AdminBbsDAO.addComm(c_content, c_ip, q_idx, m_idx);
		
		
		return "Controller?type=admin_qnaview&q_idx="+q_idx+"&q_pw="+q_pw;
	}
	
	

}
