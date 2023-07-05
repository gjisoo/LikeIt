package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import vo.ProductVO;

public class AddLikeAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 회원이 좋아요를 누른적이 없는 경우 실행되는 곳
		
		String p_idx = request.getParameter("p_idx");
		String m_idx = request.getParameter("m_idx");
		
		ProductVO pvo = null;
		Object obj = request.getSession().getAttribute("pvo");
		if(obj != null) {
			pvo = (ProductVO)obj;
		}
		
		// 상품 좋아요 수 증가
		int cnt = ProductDAO.pUpdateLike(p_idx);
		
		Integer limit = Integer.valueOf(pvo.getP_goal_like());
		String lmt = String.valueOf(limit-1);
		
		//현재 상품이 상품대기값("1")일 경우에만 실행
		if(pvo.getP_status().equals("1")) {
			//만약 좋아요 수 증가 전의 값이 목표 라이크 보다 한개 작다면 옥션중으로 변경
			if(pvo.getLike_count().equals(lmt)){
				ProductDAO.updateStatus(p_idx);
			}
		}
	
		// 좋아요 테이블에 저장
		ProductDAO.mUpdateLike(p_idx, m_idx);
		
		//JSP에서 JSON표기법으로 파일 업로드가 되었는지 cnt를 request에 저장!
		request.setAttribute("cnt", cnt);
		
		return "/like.jsp";
	}

}
