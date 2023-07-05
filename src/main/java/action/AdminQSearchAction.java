package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;
import vo.QnaVO;
import util.Paging;

public class AdminQSearchAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		
Paging page = new Paging(10,5); // 한 페이지당 3개씩, 페이지는 5장씩 보여준다.
		
		
		String cPage = request.getParameter("cPage");
		
		String searchType = request.getParameter("searchType");
		String searchValue = request.getParameter("searchValue");
		
		

		int count = AdminMiniDAO.q_getCount(searchType, searchValue);
		page.setTotalRecord(count);
		

		System.out.println("count:"+count+":::::");
		
		if(cPage == null) {
			page.setNowPage(1);
		}else {
			int nowPage = Integer.parseInt(cPage);
			page.setNowPage(nowPage);
		}
		
		int begin = page.getBegin();
		int end = page.getEnd();
	
		QnaVO[] ar = AdminMiniDAO.q_searchList(searchType, searchValue, String.valueOf(begin), String.valueOf(end));
		
		
		request.setAttribute("searchType", searchType);
		request.setAttribute("searchValue", searchValue);
		request.setAttribute("q_search", ar);
		request.setAttribute("page", page);
		
		return "/admin_q_search.jsp";
	}

}
