package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;
import vo.AuctionVO;
import vo.ProductVO;

public class AdminModifyPageAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String p_idx = request.getParameter("product");
		ProductVO pvo = AdminMiniDAO.getBbs(p_idx);
		
		
	
			AuctionVO avo = AdminMiniDAO.getBuyer(p_idx);
		
			request.setAttribute("avo", avo);
		
	
		
		
		
		
		request.setAttribute("vo", pvo);
		
		return "admin_product_modify.jsp";
	}

}
