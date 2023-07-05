package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import vo.MemVO;

public class AddAuctionAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String p_idx = request.getParameter("p_idx");
		String a_price = request.getParameter("buyPrice");
		String a_file_name = request.getParameter("pvo_file");
		
		
		String m_idx = null;
		String m_id = null;
		
		Object obj = request.getSession().getAttribute("mvo");
		
		if(obj != null) {
			MemVO mvo = (MemVO)obj;
			m_idx = mvo.getM_idx();
			m_id = mvo.getM_id();
		}
		
		ProductDAO.addAuction(p_idx, a_price, m_idx, m_id, a_file_name);
		
		return null;
	}

}
