package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;
import vo.MemVO;
import vo.ProductVO;
import util.Paging;

public class MSearchAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		Paging page = new Paging(10,5); // 한 페이지당 3개씩, 페이지는 5장씩 보여준다.
		
		
		String cPage = request.getParameter("cPage");
		
		String searchType = request.getParameter("searchType");
		String searchValue = request.getParameter("searchValue");
		
		

		int count = AdminMiniDAO.getCount(searchType, searchValue);
		page.setTotalRecord(count);
		
	
		
		if(cPage == null) {
			page.setNowPage(1);
		}else {
			int nowPage = Integer.parseInt(cPage);
			page.setNowPage(nowPage);
		}
		
		int begin = page.getBegin();
		int end = page.getEnd();
		
		

		
		MemVO[] ar = AdminMiniDAO.m_searchList(searchType, searchValue, String.valueOf(begin),String.valueOf(end));
		
		// JSP에서 표현하기 위해 request에 ar이라는 배열을 저장해야 한다.
		request.setAttribute("search", ar);
		request.setAttribute("page", page);
		request.setAttribute("searchType", searchType);
		request.setAttribute("searchValue", searchValue);
	
		
		
		return "/admin_m_search.jsp";
	}

}
