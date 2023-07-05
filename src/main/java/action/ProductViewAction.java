package action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import vo.MemVO;
import vo.ProductVO;

public class ProductViewAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String p_idx = request.getParameter("p_idx");
		
		Object obj = request.getSession().getAttribute("mvo");
		
		if(obj != null) {
			MemVO mvo = (MemVO)obj;
			String m_idx = mvo.getM_idx();
			int l_status = ProductDAO.getLikeStatus(p_idx, m_idx); //가장 최근 좋아요 상태값 확인
			request.setAttribute("l_status", l_status);
		}
		
		ProductDAO.updateHit(p_idx);//조회수 증가!
		
		ProductVO pvo = ProductDAO.getProduct(p_idx);
		
		int res = ProductDAO.getCompareTO(p_idx);
		
//		if(Integer.valueOf(pvo.getP_status()) > 1) {
//			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//			Date now = new Date(System.currentTimeMillis());
//			Date sDate = null;
//			try {
//				sDate = formatter.parse(pvo.getP_s_date());
//			} catch (Exception e) {
//				// TODO: handle exception
//			}
//			int res = now.compareTo(sDate);
//		
//			System.out.println(res);
//			request.setAttribute("res", res);
//		}
		
		request.setAttribute("res", res);
		request.getSession().setAttribute("pvo", pvo);
		
		return "product.jsp";
	}

}
