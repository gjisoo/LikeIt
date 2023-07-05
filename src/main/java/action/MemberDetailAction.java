package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.jdbc.admin.MiniAdmin;

import dao.AdminMiniDAO;
import vo.AuctionVO;
import vo.MemVO;
import vo.ProductVO;

public class MemberDetailAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("mem");
		
		
		
		MemVO mvo = AdminMiniDAO.mem_info(idx);
		ProductVO[] pvo = AdminMiniDAO.sold_product_list(idx);
		ProductVO vo = AdminMiniDAO.product_info(idx);
		AuctionVO[] avo = AdminMiniDAO.auction_info(idx);
		
		
		
		
		
		int sold_count = AdminMiniDAO.sold_count(idx);
		int bought_count = AdminMiniDAO.bought_count(idx);
		int total_sold = AdminMiniDAO.total_sold(idx);
		int total_bought = AdminMiniDAO.total_bought(idx);
		
		
		
		request.setAttribute("mvo", mvo);
		request.setAttribute("sold_count", sold_count);
		request.setAttribute("bought_count", bought_count);
		request.setAttribute("total_sold", total_sold);
		request.setAttribute("total_bought", total_bought);
		request.setAttribute("pvo", pvo);
		request.setAttribute("vo", vo);
		request.setAttribute("avo", avo);
		
		return "/admin_member_detail.jsp";
	}

}
