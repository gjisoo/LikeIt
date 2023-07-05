package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AdminBbsDAO;


public class AdminQnaDelAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// b_idx와 pwd 파라미터 받자.
		
				String q_idx = request.getParameter("q_idx");
				AdminBbsDAO.del(q_idx);
				
				return "Controller?type=admin_qna";
			}

		}
