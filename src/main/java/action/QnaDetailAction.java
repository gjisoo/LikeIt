package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;
import vo.QnaVO;

public class QnaDetailAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String q_idx = request.getParameter("q_idx");
		
		QnaVO qvo = AdminMiniDAO.qna_info(q_idx);
		
		request.setAttribute("qvo", qvo);
		return "admin_qna_detail.jsp";
	}

}
