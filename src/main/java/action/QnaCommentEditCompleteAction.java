package action;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BbsDAO;


public class QnaCommentEditCompleteAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String path = "qna.jsp";
		
		try {
			
			// 나머지 파라미터 값들 받기
			String c_idx = request.getParameter("c_idx");
			String m_idx = request.getParameter("m_idx");
			String c_content = request.getParameter("content");
			String q_idx = request.getParameter("q_idx");
			String q_pw = request.getParameter("q_pw");
			
			// 글쓴이의 ip를 알아낸다.
			String c_ip = request.getRemoteAddr();
			
			path = "/Controller?type=qnaview&q_idx="+q_idx;
			
			// dB에 저장하기---------------------------------------m_idx값 넣어야 함.
			int cnt = BbsDAO.edit(c_idx, m_idx, c_content, c_ip);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return path;
	}

}
