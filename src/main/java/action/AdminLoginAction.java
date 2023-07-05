package action;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.AdminMiniDAO;
import vo.MemVO;

public class AdminLoginAction implements Action {

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {
      
      String m_id = request.getParameter("m_id");
      String m_pw = request.getParameter("m_pw");
      
      
      String path = "/admin_login.jsp";
      
      
      MemVO mvo = AdminMiniDAO.login(m_id, m_pw);
      
      if(m_id != null && m_pw != null){
         if(mvo != null) {
         
            request.getSession().setAttribute("mvo", mvo);
            path = "Controller?type=main";
         }else {
            request.setAttribute("errorMessage", "로그인 정보가 올바르지 않습니다.");
            
         }
      }
      
      return path;
   }

}