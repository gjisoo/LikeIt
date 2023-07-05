package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;
import vo.ProductVO;
import vo.QnaVO;

public class MainAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		int reg_count = AdminMiniDAO.reg_count();
		int hold_count = AdminMiniDAO.hold_count();
		int sale_count = AdminMiniDAO.sale_count();
		int total_memberCount = AdminMiniDAO.total_memberCount();
		int new_memberCount = AdminMiniDAO.new_memberCount();
		
		QnaVO[] qvo = AdminMiniDAO.q_list();
		
		request.setAttribute("qvo", qvo);
		
		
		request.setAttribute("reg_count", reg_count);
		request.setAttribute("hold_count", hold_count);
		request.setAttribute("sale_count", sale_count);
		request.setAttribute("total_memberCount", total_memberCount);
		request.setAttribute("new_memberCount", new_memberCount);
		
		
		return "/admin_main.jsp";
	}

}
