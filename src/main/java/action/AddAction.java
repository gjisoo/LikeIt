package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MinDAO;
import vo.MemVO;



public class AddAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		String m_name = request.getParameter("m_name");
		String m_phone = request.getParameter("m_phone");
		String m_email = request.getParameter("m_email");
		
		int cnt = MinDAO.add_mem(m_id, m_pw, m_name, m_phone, m_email);
		
		

		
		return "/login.jsp";
	}

}
