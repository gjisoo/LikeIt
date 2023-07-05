package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BbsDAO;
import vo.CommVO;
import action.Action;


public class QnaCommentListAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// type을 제외한 나머지 파라미터들 받기
		String q_idx = request.getParameter("q_idx");
		
		CommVO[] cvo = BbsDAO.commlist2(q_idx);

		request.setAttribute("cvo", cvo);
		
		return "Controller?type=qna";
	}
	
	

}
