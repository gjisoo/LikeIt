package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminMiniDAO;
import vo.ProductVO;

public class LineUpAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String select = request.getParameter("select");
		
		ProductVO[] ar = AdminMiniDAO.searchList(select);
		
		request.setAttribute("select", ar);
		
		
		return "/admin_lineUp.jsp";
	}

}
