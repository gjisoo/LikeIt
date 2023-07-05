package action;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.AdminBbsDAO;
import vo.BbsVO;


public class AdminQnaCommentEditCompleteAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			
			// 나머지 파라미터 값들 받기
			String q_idx = request.getParameter("q_idx");
			String c_idx = request.getParameter("c_idx");
			String m_idx = request.getParameter("m_idx");
			String c_content = request.getParameter("content");
			
			// 글쓴이의 ip를 알아낸다.
			String c_ip = request.getRemoteAddr();
			
			// dB에 저장하기---------------------------------------m_idx값 넣어야 함.
			int cnt = AdminBbsDAO.edit(c_idx, m_idx, c_content, c_ip);

			return "Controller_admin?type=admin_qnaview&q_idx="+q_idx;
		} catch (Exception e) {
			e.printStackTrace();
		}
			return "Controller_admin?type=admin_qna";
	}

}
