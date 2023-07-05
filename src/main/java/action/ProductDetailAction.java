package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;
import vo.AuctionVO;
import vo.MemVO;
import vo.ProductVO;

public class ProductDetailAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String p_idx = request.getParameter("product");
		
		ProductVO pvo = AdminMiniDAO.product_info(p_idx);
		
		
	
		/*
		 * if(pvo.getP_status().equals("3")) { String m_id = MiniDAO.getBuyer(p_idx);
		 * 
		 * request.setAttribute("m_id", m_id); }
		 */
		
			AuctionVO avo = AdminMiniDAO.getBuyer(p_idx);
		
			request.setAttribute("avo", avo);
		
		request.setAttribute("pvo", pvo);
		
		System.out.println(pvo.getP_s_price());
		
		return "admin_product_detail.jsp";
	}

}
