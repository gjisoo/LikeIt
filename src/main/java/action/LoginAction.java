package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MinDAO;
import vo.MemVO;

public class LoginAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		 // TODO Auto-generated method stub
	      String m_id = request.getParameter("m_id");
	      String m_pw = request.getParameter("m_pw");
	      
	      String path = "/login.jsp";
	      
	      MemVO mvo = MinDAO.login(m_id, m_pw);
	      //위의 mvo가 null이면 아이디가 없거나 비밀번호가 틀린 경우다.
	      if(mvo != null){
	         
	         request.getSession().setAttribute("mvo", mvo);
	      }else {
	         request.setAttribute("errorMessage", "로그인 정보가 올바르지 않습니다.");
	         return path;
	      }
	      return null;

	}

}
