package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BbsDAO;
import action.Action;
import vo.CommVO;
import vo.QnaVO;


public class QnaViewAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String q_idx = request.getParameter("q_idx");
		String q_pw = request.getParameter("q_pw");
		BbsDAO.updateHit(q_idx);//조회수 증가.
		
		CommVO[] cvo = BbsDAO.commlist2(q_idx);

		request.setAttribute("cvo", cvo);
		
		// DAO를 통해 원하는 게시물을 BbsVO로 받는다.
		QnaVO vo = BbsDAO.getBbs(q_idx,q_pw);
		String path=null;
		//얻어낸 vo가 null 아닐 때 vo를 request에 저장! 그리고 뷰 페이지를 view.jsp로 지정하자
		if(vo != null) {
			request.setAttribute("vo", vo);
			path = "/qnaview.jsp";
		}else
			path = "Controller?type=qna";
		
		return path;
		
	}

}
