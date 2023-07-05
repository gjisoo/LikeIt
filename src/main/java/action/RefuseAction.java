package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;

public class RefuseAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String p_idx = request.getParameter("p_idx");
		int cnt = AdminMiniDAO.product_refuse(p_idx);
		
		return "Controller_admin?type=product_detail&product="+p_idx;
		
	}

}
