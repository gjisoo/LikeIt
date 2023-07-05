package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.miniDAO;
import vo.AuctionVO;
import vo.MemVO;
import vo.ProductVO;
import vo.QnaVO;
import util.Paging;

public class CheckAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		MemVO mvo = null;
		Object obj = request.getSession().getAttribute("mvo");
		if(obj != null) {
			mvo = (MemVO)obj;
		}
		String m_idx = mvo.getM_idx();
		String m_pw = request.getParameter("password");

		MemVO myvo = null;
		Object obj2 = request.getSession().getAttribute("myvo");
		if(obj2 == null) {
			myvo = miniDAO.check_pw(m_idx, m_pw);
			request.getSession().setAttribute("myvo", myvo);
		}else
			myvo = (MemVO)obj2;
		//////////////////////////////////////////
		// QnA
		Paging page1 = new Paging(15, 5);
		
		int qnaTotalCount = miniDAO.qnaTotalCount(m_idx);
		page1.setTotalRecord(qnaTotalCount);
		
		
		String cPage1 = request.getParameter("cPage1");
		
		if(cPage1 == null)
			page1.setNowPage(1);
		else {
			int nowPage = Integer.parseInt(cPage1);
			page1.setNowPage(nowPage);
		}
		
		QnaVO[] ar = miniDAO.qnalistWithCountComm(m_idx, String.valueOf(page1.getBegin()) ,String.valueOf(page1.getEnd()));
		request.setAttribute("ar", ar);
		request.setAttribute("page1", page1);
		
		
		
		// 구매
		Paging page2 = new Paging(3, 5);
		
		int buyTotalCount = miniDAO.buyTotalCount(m_idx);
		page2.setTotalRecord(buyTotalCount);
		
		String cPage2 = request.getParameter("cPage2");
		
		if(cPage2 == null)
			page2.setNowPage(1);
		else {
			int nowPage = Integer.parseInt(cPage2);
			page2.setNowPage(nowPage);
		}
		AuctionVO[] ar2 = miniDAO.buylist(m_idx, String.valueOf(page2.getBegin()), String.valueOf(page2.getEnd()));
		
		request.setAttribute("ar2", ar2);
		request.setAttribute("page2", page2);
		
		// 판매
		Paging page3 = new Paging(3, 5);
		
		int saleTotalCount = miniDAO.saleTotalCount(m_idx);
		page3.setTotalRecord(saleTotalCount);
		
		String cPage3 = request.getParameter("cPage3");
		
		if(cPage3 == null)
			page3.setNowPage(1);
		else {
			int nowPage = Integer.parseInt(cPage3);
			page3.setNowPage(nowPage);
		}
		
		AuctionVO[] ar3 = miniDAO.salelist(m_idx, String.valueOf(page3.getBegin()), String.valueOf(page3.getEnd()));
		
		request.setAttribute("ar3", ar3);
		request.setAttribute("page3", page3);
		
		//////////////////////////////////////////
		
		String path;
		
		if(myvo != null)
			path = "/mypage.jsp";
		else
			path = "/check_pw.jsp";
		
		return path;
	}

}
