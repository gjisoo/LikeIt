package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MinDAO;

public class CheckIDAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// m_id라는 파라미터를 받는다.
		String m_id = request.getParameter("m_id");
		
		boolean chk = MinDAO.checkID(m_id);
		
		request.setAttribute("chk", chk);
		
		return "/check_id.jsp";
	}

}
