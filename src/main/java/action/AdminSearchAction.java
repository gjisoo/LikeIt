package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;
import vo.ProductVO;


public class AdminSearchAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 남은 searchType파라미터와 searchValue파라미터를 받는다.
		String searchType = request.getParameter("searchType");
		String searchValue = request.getParameter("searchValue");
		
		ProductVO[] ar = AdminMiniDAO.searchList(searchType, searchValue);
		
		// JSP에서 표현하기 위해 request에 ar이라는 배열을 저장해야 한다.
		request.setAttribute("search", ar);
		
		
		return "/admin_search.jsp";
	}

}
