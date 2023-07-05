package dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.service.FactoryService;
import vo.MemVO;

public class MinDAO {

	public static int add_mem(String m_id, String m_pw, String m_name,String m_phone,String m_email) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("m_id", m_id);
		map.put("m_pw", m_pw);
		map.put("m_name", m_name);
		map.put("m_phone", m_phone);
		map.put("m_email", m_email);
		
		
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.insert("product.add_mem", map);
		
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	
	public static boolean checkID(String id) {
		boolean chk = false;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		MemVO mvo = ss.selectOne("product.check_id", id);
		ss.close();
		// 같은 아이디가 없을 때만 chk에 true를 넣는다.
		if(mvo == null)
			chk = true;
		
		
		
		return chk;
	}
	
	public static MemVO login(String id, String pw) {
		HashMap<String, String> map = new HashMap<String, String>();
		//파라미터들을 Map구조에 저장한다.
		map.put("m_id", id);
		map.put("m_pw", pw);
		
		//SQL문장을 호출하기 위해 SqlSession이 필요하다. 이는 FactoryService를 통해
		// SqlSessionFactory를 얻어내어 그로부터 받을 수 있다.
		SqlSession ss = FactoryService.getFactory().openSession();
		
		//이제 원하는 SQL문을 호출!
		MemVO mvo = ss.selectOne("product.login", map);
		ss.close();
		
		return mvo;
	}
	
}
