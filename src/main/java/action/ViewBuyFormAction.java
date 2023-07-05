package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ProductVO;

public class ViewBuyFormAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 입찰하기 버튼 클릭 시
		
		
		return "buyForm.jsp";
	}

}
