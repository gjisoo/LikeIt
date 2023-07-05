package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.service.FactoryService;
import vo.AuctionVO;
import vo.MemVO;
import vo.ProductVO;
import vo.QnaVO;





public class AdminMiniDAO {

	public static MemVO login(String id, String pw) {
		HashMap<String, String> map = new HashMap<String, String>();
		// 파라미터들을 Map구조에 저장한다.
		map.put("m_id", id);
		map.put("m_pw", pw);

		// SQL문장을 호출하기 위해 SqlSession이 필요하다. 이는 FactoryService를 통해
		// SqlSessionFactory를 얻어내어 그로부터 받을 수 있다.
		SqlSession ss = FactoryService.getFactory().openSession();

		// 이제 원하는 SQL문을 호출!
		MemVO mvo = ss.selectOne("admin_map.login", map);
		ss.close();

		return mvo;

	}

	public static ProductVO[] saling(String p_idx, String status) {
		ProductVO[] ar = null;

		Map<String, String> map = new HashMap<String, String>();
		map.put("p_idx", p_idx);
		map.put("status", status);

		SqlSession ss = FactoryService.getFactory().openSession();
		List<ProductVO> list = ss.selectList("admin_map.saling", map);

		if (list != null && !list.isEmpty()) {
			ar = new ProductVO[list.size()];
			list.toArray(ar);
		}
		ss.close();
		return ar;
	}

	public static ProductVO[] product_list() {
		ProductVO[] ar = null;

		SqlSession ss = FactoryService.getFactory().openSession();
		List<ProductVO> list = ss.selectList("admin_map.product_list");

		if (list != null && !list.isEmpty()) {
			ar = new ProductVO[list.size()];
			list.toArray(ar);
		}
		ss.close();
		return ar;
	}
	
	public static ProductVO[] searchList(String select) {
		ProductVO[] ar = null;
		
		// 받은 인자를 맵퍼에게 전달하기 위해 Map구조로 만든다.
		
		
		
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<ProductVO> list = ss.selectList("admin_map.select", select);
		
		ss.close();
		
		
		if(list != null && !list.isEmpty()) {
			ar = new ProductVO[list.size()];
			list.toArray(ar);
		}
		
		return ar;
	}
	
	public static ProductVO[] searchList(String type, String value) {
		ProductVO[] ar = null;
		
		// 받은 인자를 맵퍼에게 전달하기 위해 Map구조로 만든다.
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchType", type);
		map.put("searchValue", value);
		
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<ProductVO> list = ss.selectList("admin_map.search", map);
		
		ss.close();
		
		
		if(list != null && !list.isEmpty()) {
			ar = new ProductVO[list.size()];
			list.toArray(ar);
		}
		
		return ar;
	}
	
	
	public static MemVO[] m_searchList(String type, String value, String begin, String end) {
		MemVO[] ar = null;
		
		// 받은 인자를 맵퍼에게 전달하기 위해 Map구조로 만든다.
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchType", type);
		map.put("searchValue", value);
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<MemVO> list = ss.selectList("admin_map.m_search", map);
		
		ss.close();
		
				
		if(list != null && !list.isEmpty()) {
			ar = new MemVO[list.size()];
			list.toArray(ar);
		}
		
		return ar;
	}
	
	public static MemVO[] m_list(int begin, int end) {
		MemVO[] ar = null;

		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<MemVO> list = ss.selectList("admin_map.m_list", map);
		if (list != null && !list.isEmpty()) {
			// 받은 자원이 1개라도 있다면 배열화 시킨다.
			ar = new MemVO[list.size()];

			list.toArray(ar);
		}
		
		ss.close();

		return ar;
	}
	
	public static int reg_count() {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("admin_map.reg_count");
		ss.close();
		return cnt;
	}
	
	public static int hold_count() {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("admin_map.hold_count");
		ss.close();
		return cnt;
	}
	
	public static int sale_count() {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("admin_map.sale_count");
		ss.close();
		return cnt;
	}
	

	public static QnaVO[] q_list() {
		QnaVO[] ar = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<QnaVO> list = ss.selectList("admin_map.q_Mainlist");
		
		if(list != null && !list.isEmpty()) {
			ar = new QnaVO[list.size()];
			list.toArray(ar);
		}
		ss.close();
		
		return ar;
	}
	
	
	public static QnaVO[] q_list(int begin, int end) {
		QnaVO[] ar = null;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
	
		SqlSession ss = FactoryService.getFactory().openSession();
		List<QnaVO> list = ss.selectList("admin_map.q_list",map);
		
		if(list != null && !list.isEmpty()) {
			ar = new QnaVO[list.size()];
			list.toArray(ar);
		}
		ss.close();
		
		return ar;
	}
	
	public static QnaVO[] q_searchList(String type, String value, String begin, String end) {
		QnaVO[] ar = null;
		
		// 받은 인자를 맵퍼에게 전달하기 위해 Map구조로 만든다.
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchType", type);
		map.put("searchValue", value);
		map.put("begin", begin);
		map.put("end", end);
		
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<QnaVO> list = ss.selectList("admin_map.q_search", map);
		
		ss.close();
	
		
		if(list != null && !list.isEmpty()) {
			ar = new QnaVO[list.size()];
			list.toArray(ar);
		}
		
		return ar;
	}
	
	public static MemVO mem_info(String idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		MemVO mvo = ss.selectOne("admin_map.mem_info", idx);
		
		ss.close();
		return mvo;
	}
	
	public static ProductVO product_info(String idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		ProductVO pvo = ss.selectOne("admin_map.product_info", idx);
		
		
		ss.close();
		return pvo;
	}
	
	public static QnaVO qna_info(String idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		QnaVO qvo = ss.selectOne("admin_map.qna_info", idx);
		
		ss.close();
		return qvo;
	}
	
	public static int product_approve(String p_idx) {
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.update("admin_map.product_approve", p_idx);
		
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	public static int product_refuse(String p_idx) {
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.update("admin_map.product_refuse", p_idx);
		
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	public static int product_cancel(String p_idx) {
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.update("admin_map.product_cancel", p_idx);
		
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	
	public static int product_modify(String p_idx, String p_name, String p_s_price, String p_info) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("p_idx", p_idx);
		map.put("p_name", p_name);
		map.put("p_s_price", p_s_price);
		map.put("p_info", p_info);
		
	
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.update("admin_map.product_modify", map);
		
	
		
		if(cnt > 0 )
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	
	public static ProductVO getBbs(String p_idx) {

		SqlSession ss = FactoryService.getFactory().openSession();
		ProductVO vo = ss.selectOne("admin_map.getBbs", p_idx);
		ss.close();

		return vo;
	}
	
	public static int q_getCount(String searchType, String searchValue) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchType", searchType);
		map.put("searchValue", searchValue);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("admin_map.q_getCount", map);
		ss.close();
		
		return cnt;
	}
	
	public static int getCount(String searchType, String searchValue) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchType", searchType);
		map.put("searchValue", searchValue);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("admin_map.getCount", map);
		ss.close();
		
		return cnt;
	}
	
	public static int sold_count(String m_idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("admin_map.sold_count", m_idx);
		
		ss.close();
		
		return cnt;
		
	}

	public static int bought_count(String m_idx) {
			
			SqlSession ss = FactoryService.getFactory().openSession();
			int cnt = ss.selectOne("admin_map.bought_count", m_idx);
			
			ss.close();
			
			return cnt;
			
		}

	public static int total_sold(String m_idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("admin_map.total_sold", m_idx);
		
		ss.close();
		
		
		
		return cnt;
		
	}
	
	public static int total_bought(String m_idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("admin_map.total_bought", m_idx);
		
		
		ss.close();
		
		return cnt;
		
	}
	
	public static ProductVO[] sold_product_list(String m_idx) {
		
		ProductVO[] ar = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<ProductVO> list = ss.selectList("admin_map.sold_product_list", m_idx);
		
		if(list != null && !list.isEmpty()) {
			ar = new ProductVO[list.size()];
			list.toArray(ar);
		}
		
		ss.close();
		
		return ar;
	}
	
public static AuctionVO[] auction_info(String idx) {
	
		AuctionVO[] ar = null;
		
	
		SqlSession ss = FactoryService.getFactory().openSession();
		List<AuctionVO> avo = ss.selectList("admin_map.auction_info", idx);
		
		if(avo != null && !avo.isEmpty()) {
			ar = new AuctionVO[avo.size()];
			avo.toArray(ar);
		}
		
		ss.close();
		return ar;
	}
	
public static int total_memberCount() {
	SqlSession ss = FactoryService.getFactory().openSession();
	int cnt = ss.selectOne("admin_map.total_memberCount");
	
	ss.close();
	
	return cnt;
	
}

public static int new_memberCount() {
	SqlSession ss = FactoryService.getFactory().openSession();
	int cnt = ss.selectOne("admin_map.new_memberCount");
	
	ss.close();
	
	return cnt;
	
}
	

public static AuctionVO getBuyer(String p_idx) {
	
	SqlSession ss = FactoryService.getFactory().openSession();
	
	AuctionVO avo = ss.selectOne("admin_map.getBuyer",p_idx);
	
	
	ss.close();
	
	return avo;
}

// 건영형님
public static int add_mem(String m_id, String m_pw, String m_name,String m_phone,String m_email) {
	
	Map<String, String> map = new HashMap<String, String>();
	map.put("m_id", m_id);
	map.put("m_pw", m_pw);
	map.put("m_name", m_name);
	map.put("m_phone", m_phone);
	map.put("m_email", m_email);
	
	SqlSession ss = FactoryService.getFactory().openSession();
	int cnt = ss.insert("admin_map.add_mem", map);
	
	if(cnt > 0)
		ss.commit();
	else
		ss.rollback();
	
	ss.close();
	
	return cnt;
}

public static boolean CheckID(String id) {
	boolean chk = false;
	
	SqlSession ss = FactoryService.getFactory().openSession();
	MemVO mvo = ss.selectOne("mem.check_id", id);
	ss.close();
	// 같은 아이디가 없을 때만 chk에 true를 넣는다.
	if(mvo == null)
		chk = true;
	
	
	
	return chk;
}

public static int getProduct_count(String searchType, String searchValue, String select) {
	Map<String, String> map = new HashMap<String, String>();
	map.put("searchType", searchType);
	map.put("searchValue", searchValue);
	map.put("select", select);
	
	SqlSession ss = FactoryService.getFactory().openSession();
	int cnt = ss.selectOne("admin_map.product_count", map);
	ss.close();
	
	return cnt;
}

public static ProductVO[] getProduct_li(String type, String value, int begin, int end, String select) {
	ProductVO[] ar = null;
	
	// 받은 인자를 맵퍼에게 전달하기 위해 Map구조로 만든다.
	Map<String, String> map = new HashMap<String, String>();
	if(type != null && value != null) {
		map.put("searchType", type);
		map.put("searchValue", value);
	}
	map.put("begin", String.valueOf(begin));
	map.put("end", String.valueOf(end));
	map.put("select", select);
	
	
	SqlSession ss = FactoryService.getFactory().openSession();
	List<ProductVO> list = ss.selectList("admin_map.product_li", map);
	
	ss.close();
	
	
	if(list != null && !list.isEmpty()) {
		ar = new ProductVO[list.size()];
		list.toArray(ar);
	}
	
	return ar;
}

}