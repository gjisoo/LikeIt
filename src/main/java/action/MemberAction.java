package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Paging;
import dao.AdminMiniDAO;
import vo.MemVO;



public class MemberAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		Paging page = new Paging(20,5); // 한 페이지당 3개씩, 페이지는 5장씩 보여준다.
		
		
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
		
		
		MemVO[] mvo = AdminMiniDAO.m_list(page.getBegin(), page.getEnd());

		
		
		request.setAttribute("list", mvo);
		request.setAttribute("page", page);
		request.setAttribute("searchValue", searchValue);
		request.setAttribute("searchType", searchType);
		
		return "/admin_member.jsp";
	}

}
