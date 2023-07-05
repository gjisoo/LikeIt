package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminBbsDAO;
import dao.AdminMiniDAO;
import vo.BbsVO;
import vo.CommVO;
import vo.MemVO;


public class AdminQnaViewAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String q_idx = request.getParameter("q_idx");
		
		
		
		AdminBbsDAO.updateHit(q_idx);//조회수 증가.
		
		// DAO를 통해 원하는 게시물을 BbsVO로 받는다.
		BbsVO vo = AdminBbsDAO.getBbs(q_idx);
		CommVO[] cvo = AdminBbsDAO.commList(q_idx);
		String path=null;
		//얻어낸 vo가 null 아닐 때 vo를 request에 저장! 그리고 뷰 페이지를 view.jsp로 지정하자
		
	
		
		if(vo != null) {
			request.setAttribute("vo", vo);
			path = "/admin_qnaview.jsp";
			request.setAttribute("cvo", cvo);
		}else
			path = "Controller?type=admin_qna";
		
		
		
		return path;
		
	}

}
