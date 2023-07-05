package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import vo.AuctionVO;

public class AucAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String p_idx = request.getParameter("p_idx");
		AuctionVO[] ar = ProductDAO.getAucList(p_idx);
		
		request.setAttribute("ar", ar);
		
		return "/auc_list.jsp";
	}

}
