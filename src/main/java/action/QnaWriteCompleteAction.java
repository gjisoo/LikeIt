package action;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.Session;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BbsDAO;


public class QnaWriteCompleteAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		try {
			//서블릿이 아니어도 request만 있으면 ServletContext를 구할 수 있다.
			ServletContext application = request.getServletContext();
			
			// 나머지 파라미터 값들 받기
			String m_idx = request.getParameter("m_idx");
			System.out.println(m_idx);
			
			String q_title = request.getParameter("q_title");
			String q_pw = request.getParameter("q_pw");
			String q_content = request.getParameter("content");
			String q_writer = request.getParameter("q_writer");
			
			// 글쓴이의 ip를 알아낸다.
			String q_ip = request.getRemoteAddr();
			
			// dB에 저장하기---------------------------------------m_idx값 넣어야 함.
			int cnt = BbsDAO.add(m_idx ,q_title, q_content, q_pw, q_ip, q_writer);
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/Controller?type=qna";
	}

}
