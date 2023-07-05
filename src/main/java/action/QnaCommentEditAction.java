package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BbsDAO;
import action.Action;
import vo.CommVO;
import vo.QnaVO;


public class QnaCommentEditAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
			String q_idx = request.getParameter("q_idx");
			String c_idx = request.getParameter("c_idx");
			String q_pw = request.getParameter("q_pw");
			
			
			QnaVO bvo = BbsDAO.getBbs2(q_idx);
			CommVO cvo = BbsDAO.getComm(c_idx);
			
			request.setAttribute("vo3", bvo);
			request.setAttribute("vo4", cvo);
			return "/qnacommentedit.jsp";
			
	}
	
	
}


