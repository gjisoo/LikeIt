package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BbsDAO;
import action.Action;


public class QnaDelAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// b_idx와 pwd 파라미터 받자.
		
				String q_idx = request.getParameter("q_idx");
				BbsDAO.del(q_idx);
				
				return "Controller?type=qna";
			}

		}
