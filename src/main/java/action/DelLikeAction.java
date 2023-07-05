package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;

public class DelLikeAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 회원이 좋아요를 취소하는 경우 실행되는 곳
		
		String p_idx = request.getParameter("p_idx");
		String m_idx = request.getParameter("m_idx");
		
		// 상품 좋아요 수 감소
		int cnt = ProductDAO.pDownLike(p_idx);
	
		// 좋아요 테이블에 상태값 저장
		ProductDAO.mDownLike(p_idx, m_idx);
		
		//JSP에서 JSON표기법으로 파일 업로드가 되었는지 cnt를 request에 저장!
		request.setAttribute("cnt", cnt);
		
		return "/like.jsp";
	}

}
