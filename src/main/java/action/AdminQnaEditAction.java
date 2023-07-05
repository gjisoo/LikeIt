package action;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.AdminBbsDAO;
import vo.BbsVO;


public class AdminQnaEditAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
			String q_idx = request.getParameter("q_idx");
			BbsVO bvo = AdminBbsDAO.getBbs2(q_idx);
			
			request.setAttribute("vo2", bvo);
			return "/admin_qnaedit.jsp";
	}
	
	
}


