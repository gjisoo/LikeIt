package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import util.Paging;
import vo.ProductVO;

public class SaleSearchAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
Paging page = new Paging(12,5);
		
		String cPage = request.getParameter("cPage");
		String searchValue = request.getParameter("searchValue");
		
		System.out.println("searchValue:"+searchValue);
		
		int count = ProductDAO.getSearchSaleCount(searchValue);
		page.setTotalRecord(count);
		
		System.out.println("count:"+count);
		
		if(cPage == null) {
			page.setNowPage(1);
		} else {
			int nowPage = Integer.parseInt(cPage);
			page.setNowPage(nowPage);
		}
		
		ProductVO[] ar = ProductDAO.searchHoldList(String.valueOf(page.getBegin()), String.valueOf(page.getEnd()),searchValue);
		
		request.setAttribute("searchSale", ar);
		request.setAttribute("page", page);
		
		return "sale_search.jsp";
	}

}
