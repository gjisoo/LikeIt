package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.miniDAO;
import vo.MemVO;

public class ModifyAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		MemVO mvo = null;
		
		String idx = request.getParameter("idx");
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		
		miniDAO.modifyinfo(idx, pass, phone, email);
		
		mvo = miniDAO.check_pw(idx, pass);
		
		request.setAttribute("mvo", mvo);
		request.getSession().setAttribute("myvo", mvo);
		
		return "Controller?type=check";
	}

}
