package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;
import vo.AuctionVO;
import vo.ProductVO;
import util.Paging;

public class AdminProductAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		Paging page = new Paging(5,5);
		
		String type = request.getParameter("searchType");
		String value = request.getParameter("searchValue");
		String select = request.getParameter("select");
		int total_count = AdminMiniDAO.getProduct_count(type, value, select);
		
		page.setTotalRecord(total_count);
		
		String nowPage = request.getParameter("cPage");
		if(nowPage == null)
			page.setNowPage(1);
		else {
			int np = Integer.parseInt(nowPage);
			page.setNowPage(np);
		}
		if(value != null && value.trim().length() == 0) {
			type = null;
			value = null;
		}		
		ProductVO[] pvo = AdminMiniDAO.getProduct_li(type, value, page.getBegin(), page.getEnd(), select);
		
		request.setAttribute("pvo", pvo);
		
		request.setAttribute("page", page);
		if(select != null)
			request.setAttribute("select", select);
		
		if(type != null && value != null && value.trim().length() > 0) {
			request.setAttribute("searchType", type);
			request.setAttribute("searchValue", value);
		}
		
		return "admin_product.jsp";
	}

}
