package action;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.AdminBbsDAO;
import vo.BbsVO;
import vo.CommVO;


public class AdminQnaCommentEditAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
			String q_idx = request.getParameter("q_idx");
			String c_idx = request.getParameter("c_idx");
			
			BbsVO bvo = AdminBbsDAO.getBbs2(q_idx);
			CommVO cvo = AdminBbsDAO.getComm(c_idx);
			
			request.setAttribute("vo3", bvo);
			request.setAttribute("vo4", cvo);
			return "/admin_qnacommentedit.jsp";
			
	}
	
	
}


