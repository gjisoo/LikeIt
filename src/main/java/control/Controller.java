package control;

import java.io.FileInputStream;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;

/**
 * Servlet implementation class Controller
 */
@WebServlet(
		name = "Controller", 
		urlPatterns = { "/Controller" }, 
		initParams = { 
				@WebInitParam(name = "myParam", value = "/WEB-INF/action.properties")
		})
public class Controller extends HttpServlet {
private static final long serialVersionUID = 1L;
    
    // 초기 파라미터로 전달된 action.properties파일의 경로를 가지고
	// 그 파일의 내용(클래스의 경로)들을 가져와서 객체로 생성한 후 저장할 곳
	private Map<String, Action> actionMap;
	
    public Controller() {
        super();
        actionMap = new HashMap<String, Action>();
    }

	@Override
	public void init() throws ServletException {
		// 생성자 다음에 한번 수행하는 함수!
		// 첫 요처자에 의해 단 한번만 수행하는 곳이다.
		
		// 현재 서블릿이 생성될 때 전달되는 초기 파라미터를 가져온다.
		String props_path = getInitParameter("myParam");
		
		// 받은 action.properties파일의 경롤르 절대경로화 시킨다.
		// 하지만 jsp에서 마음대로 사용했던 내장객체인 application이 없다.
		// 서블릿에서는 application을 직접 구할 수 있다.
		ServletContext application = getServletContext();
		
		String realPath = application.getRealPath(props_path);
		
		//절대경로화 시킨 이유는
		// 해당 파일의 내용(클래스 경로)을 스트림을 이용하여 
		//읽어와서 Properties객체에 담기 위함이다.
		Properties props = new Properties();
		
		// Properties의 load함수를 이용하여 내용들을 읽기한다. 이때
		// 필요한 것이 InputStream이 필요하다.
		FileInputStream fis = null;
		try {
			// action.properties파일과 연결되는 스트림을 준비
			fis = new FileInputStream(realPath);
			
			props.load(fis); // action.properties파일의 내용들을 읽어서
			//비어있던 Properties객체에 키와 값을 쌍으로 저장했다.
			// 예)  emp ------->  "ex2.EmpAction"
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*
		 	생성할 객체들의 경로가 모두 Properties객체로 저장되었다. 하지만
		 	현재 컨트롤러 입장에서는 생성할 객체가 몇개이며, 어떤 객체인지 알지 못한다.
		 	Properties에 저장된 키들을 모두 가져와서 반복자(Iterator)로 수행해야 한다.
		 */
		
		//먼저 Properties에 저장된 키들을 모두 가져온다.
		Iterator<Object> it = props.keySet().iterator();
		// 키들만 모였다. (emp, memo)
		
		//키들을 모두 얻었으니 키에 연결된 클래스 경로를 하나씩 얻어내어
		// 객체를 생성한 후 actionMap에 저장한다.
		while(it.hasNext()) {
			// 먼저 키를 하나 얻어내어 문자열로 변환!
			String key = (String)it.next(); // "emp"
			
			//위에서 얻어낸 키와 연결된 값(value)을 얻자!
			String value = props.getProperty(key); // "ex2.EmpAction"
			
			try {
				Object obj = Class.forName(value).newInstance();
				// 쉽게 말해서 Class를 통해 정확한 클래스의 경로가 있다면
				// 객체를 생성할 수 있다.
				
				//생성된 객체를 Action으로 형 변환하여 actionMap에 저장
				actionMap.put(key, (Action)obj);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}// while문의 끝
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청시 한글처리
		request.setCharacterEncoding("utf-8");
		
		// type이라는 파라미터 받기
		String type = request.getParameter("type");
		
		// type이 null이면 기본객체 인식할 수 있도록 "list"로 초기화 한다.
		if(type == null)
			type = "home";
		
		// type으로 받은 값이 actionMap의 key로 사용되고 있으므로
		// 원하는 객체를 얻어낸다.
		Action action = actionMap.get(type);
		
		String viewPath = action.execute(request, response);
		
		/*
		 * if(viewPath == "down") { RequestDispatcher disp =
		 * request.getRequestDispatcher(viewPath); disp.include(request, response); }
		 */
		//viewPath가 null이면 현재 컨트롤러를 sendRedirect로 다시 호출하도록 한다.
		if(viewPath == null) {
			response.sendRedirect("Controller");
		}else if(!viewPath.equals("stop")){
			//forward로 이동~~~!
			RequestDispatcher disp = request.getRequestDispatcher(viewPath);
			disp.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


}
