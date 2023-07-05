package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminBbsDAO;
import vo.BbsVO;


public class AdminQnaCommentDelAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// b_idx와 pwd 파라미터 받자.
		
				String c_idx = request.getParameter("c_idx");
				String q_idx = request.getParameter("q_idx");
				AdminBbsDAO.delcomm(c_idx);
				
				return "Controller?type=admin_qnaview&q_idx="+q_idx;
			}

		}
