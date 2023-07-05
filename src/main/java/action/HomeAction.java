package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import vo.ProductVO;

public class HomeAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		ProductDAO.delProduct(); // 날짜 종료된 상품 판매종료로 상태값 바꾸기
		
		ProductVO[] sale_ar = ProductDAO.getRecentSaleList();
		ProductVO[] hold_ar = ProductDAO.getRecentHoldList();
		
		request.setAttribute("sale_ar", sale_ar);
		request.setAttribute("hold_ar", hold_ar);
		
		return "home.jsp";
	}

}
