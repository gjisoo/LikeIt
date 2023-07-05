package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BbsDAO;
import action.Action;
import util.Paging;
import vo.BbsVO;
import vo.QnaVO;

public class SearchAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 페이징 기법에 관련된 객체 생성(Paging)
		
				Paging page = new Paging(2, 5);//한 페이지당 3개씩, 페이지는 5장식 보여준다.
				//Paging page = new Paging();//한 페이지당 10개씩, 페이지는 5장식 보여준다.
				
				//현재 페이지 값을 파라미터로 받는다.
				String cPage = request.getParameter("cPage");
				
				String searchType = request.getParameter("searchType");
				String searchValue = request.getParameter("searchValue");
				
				int count = BbsDAO.getCount(searchType, searchValue);
				page.setTotalRecord(count);
				
				
				if(cPage ==null) {
					page.setNowPage(1);
				}else {
					int nowPage = Integer.parseInt(cPage);
					page.setNowPage(nowPage);
				}
				
				QnaVO[] ar = BbsDAO.getList(searchType, searchValue, String.valueOf(page.getBegin()), String.valueOf(page.getEnd()));
					
				request.setAttribute("ar", ar);
				request.setAttribute("page", page);
				
				return "/qnasearch.jsp";
		}

}
