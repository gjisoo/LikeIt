package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		request.getSession().removeAttribute("mvo");
		request.getSession().removeAttribute("myvo");
		
		return null;
	}

}
