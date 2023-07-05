package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;

public class AdminModifyAction implements Action{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		String p_idx = request.getParameter("product");
		
		String p_name = request.getParameter("p_name");
		String p_s_price = request.getParameter("p_s_price");
		String p_info = request.getParameter("p_info");
				
		int cnt = AdminMiniDAO.product_modify(p_idx, p_name, p_s_price, p_info);
		
		
		return "Controller?type=product_detail&p_idx="+p_idx;
	}

	
}
