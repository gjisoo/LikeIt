package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.miniDAO;
import vo.MemVO;

public class MypageAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		
		MemVO mvo = miniDAO.modifylist(idx);
		
		request.setAttribute("mvo", mvo);
		request.setAttribute("idx", idx);
		
		return "/modify.jsp";
	}

}
