package action;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BbsDAO;
import action.Action;
import vo.QnaVO;


public class QnaEditAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
			String q_idx = request.getParameter("q_idx");
			QnaVO bvo = BbsDAO.getBbs2(q_idx);

			request.setAttribute("vo2", bvo);
			return "/qnaedit.jsp";
	}
	
	
}


