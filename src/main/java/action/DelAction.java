package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.miniDAO;

public class DelAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String idx = request.getParameter("idx");
		
		miniDAO.delmem(idx);
		
		request.getSession().removeAttribute("myvo");
		request.getSession().removeAttribute("mvo");
		
		return null;
	}

}
