package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import util.Paging;
import vo.ProductVO;

public class SaleAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		Paging page = new Paging();
		
		String cPage = request.getParameter("cPage");
		
		int count = ProductDAO.getSaleCount();
		page.setTotalRecord(count);
		
		
		if(cPage == null) {
			page.setNowPage(1);
		} else {
			int nowPage = Integer.parseInt(cPage);
			page.setNowPage(nowPage);
		}
		
		ProductVO[] ar = ProductDAO.getSaleList(String.valueOf(page.getBegin()), String.valueOf(page.getEnd()));
		
		request.setAttribute("ar", ar);
		request.setAttribute("page", page);	
		
		return "/sale.jsp";
	}

}
