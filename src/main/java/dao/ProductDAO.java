package dao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.service.FactoryService;
import vo.AuctionVO;
import vo.ProductVO;

public class ProductDAO {

	// 판매중인 상품 불러오는 기능
	public static ProductVO[] getSaleList(String begin, String end) {
		
ProductVO[] ar = null;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		List<ProductVO> list = ss.selectList("product.saleList",map);
		
		if(list != null && list.size() > 0) {
			ar = new ProductVO[list.size()];
			
			list.toArray(ar);
		}
		
		ss.close();
		
		return ar;
		
	}
	
	//상품 등록 요청 저장기능
	public static int add_product(String p_name, String p_s_price, String m_idx,
			String m_id, String p_info, String p_goal_like, String ori_name, String file_name, String file_size) {
		
		ProductVO pvo = new ProductVO();
		pvo.setP_name(p_name);
		
		pvo.setP_s_price(p_s_price);
		pvo.setM_idx(m_idx);
		pvo.setM_id(m_id);
		pvo.setP_info(p_info);
		pvo.setP_goal_like(p_goal_like);
		pvo.setOri_name(ori_name);
		pvo.setFile_name(file_name);
		pvo.setFile_size(file_size);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.insert("product.add", pvo);
		
		String p_idx = pvo.getP_idx();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("p_idx", p_idx);
		map.put("a_price", p_s_price);
		map.put("file_name", file_name);
		
		ss.insert("product.addAuc", map);
		
		if(cnt > 0) {
			ss.commit();
		}
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	
	public static int getSaleCount() {
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("product.saleCount");
		ss.close();
		
		return cnt;
	}
	
	public static ProductVO getProduct(String p_idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		ProductVO pvo = ss.selectOne("product.getProductInfo",p_idx);
		ss.close();
		
		return pvo;
	}
	
	public static AuctionVO[] getAucList(String p_idx) {
		AuctionVO[] ar = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		List<AuctionVO> list = ss.selectList("product.auc_list", p_idx);
		
		if(list != null && list.size() > 0) {
			ar = new AuctionVO[list.size()];
			
			list.toArray(ar);
		}
		
		ss.close();
		
		return ar;
	}
	
	public static ProductVO[] getHoldList(String begin, String end) {
		
		ProductVO[] ar = null;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		List<ProductVO> list = ss.selectList("product.holdList",map);
		
		if(list != null && list.size() > 0) {
			ar = new ProductVO[list.size()];
			
			list.toArray(ar);
		}
		
		ss.close();
		
		return ar;
	}

	public static int getHoldCount() {
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("product.holdCount");
		ss.close();
		
		return cnt;
	}
	
	public static int getSearchHoldCount(String searchValue) {
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("product.searchHoldCount", searchValue);
		ss.close();
		
		return cnt;
	}
	
	public static int getSearchSaleCount(String searchValue) {
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("product.searchSaleCount", searchValue);
		ss.close();
		
		return cnt;
	}
	
	// 판매대기 검색
	public static ProductVO[] searchHoldList(String begin, String end, String searchValue) {
		
		ProductVO[] ar = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("searchValue", searchValue);
		
		
		List<ProductVO> list = ss.selectList("product.searchHoldList", map);
		
		if(list != null && list.size() > 0) {
			ar = new ProductVO[list.size()];
			
			list.toArray(ar);
		}
		
		System.out.println(list.size());
		System.out.println("begin"+begin);
		System.out.println("end"+end);
		ss.close();
		
		return ar;
	}
	
	//판매중 검색
	public static ProductVO[] searchSaleList(String begin, String end, String searchValue) {
		
		ProductVO[] ar = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("searchValue", searchValue);
		
		
		List<ProductVO> list = ss.selectList("product.searchSaleList", map);
		
		if(list != null && list.size() > 0) {
			ar = new ProductVO[list.size()];
			
			list.toArray(ar);
		}
		
		System.out.println(list.size());
		System.out.println("begin"+begin);
		System.out.println("end"+end);
		ss.close();
		
		return ar;
	}
	
	// 조회수 증가 기능
	public static int updateHit(String p_idx) {
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.update("product.hit", p_idx);
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	
	// 상품 좋아요 수 증가
	public static int pUpdateLike(String p_idx) {
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.update("product.like", p_idx);
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	
	// 상품 좋아요 수 감소
		public static int pDownLike(String p_idx) {
			SqlSession ss = FactoryService.getFactory().openSession();
			int cnt = ss.update("product.like_down", p_idx);
			if(cnt > 0)
				ss.commit();
			else
				ss.rollback();
			
			ss.close();
			
			return cnt;
		}
	
// 회원------------------------------------------------------------------------------
	
	// 좋아요 테이블에 상태값 저장
	public static int mUpdateLike(String p_idx, String m_idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("p_idx", p_idx);
		map.put("m_idx", m_idx);
		
		int cnt = ss.insert("product.addLike", map);
		
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	
	
	public static int mDownLike(String p_idx, String m_idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("p_idx", p_idx);
		map.put("m_idx", m_idx);
		
		int cnt = ss.insert("product.downLike", map);
		
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	
	public static int getLikeStatus(String p_idx, String m_idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("p_idx", p_idx);
		map.put("m_idx", m_idx);
		
		int l_status = 0;
		l_status = ss.selectOne("product.checkLikeCount",map);
		
		if(l_status != 0) {
			
			l_status = ss.selectOne("product.getLikeStatus", map);
			ss.close();
			
		}
		
		return l_status;
	}
	
	
	// 목표 좋아요 수 달성 시
	public static int updateStatus(String p_idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		ss.update("product.changeLikeStatus", p_idx);
		ss.commit();
		ss.close();
		
		return 0;
	}
	
	//홈에 들어올때 날짜가 옥션날짜 종료된 상품들 상태값 변경
	public static void delProduct() {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		ss.update("product.delProduct");
		ss.update("product.delAuction");
		ss.commit();
		ss.close();
		
	}
	
	//판매중 상품중에 오늘날짜가 판매 시작일과 동일한지 확인
	public static int getCompareTO(String p_idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int res = ss.selectOne("product.isCompareTo",p_idx);
		
		// count를 썼기 때문에 0이라면 경매시작일이 오늘날짜가 아닌 상품이다.
		
		return res;
	}
	
	//--------------옥션--------------------------------------------------------------------------
	public static int addAuction(String p_idx, String a_price, String m_idx, String m_id, String a_file_name) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("p_idx", p_idx);
		map.put("a_price", a_price);
		map.put("m_idx", m_idx);
		map.put("m_id", m_id);
		map.put("a_file_name", a_file_name);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		ss.insert("product.addAuction", map);
		ss.commit();
		ss.close();
		
		return 0;
	}
	
	//----------홍범------------------------------------------------------------------------------
	
	 // 홈화면 판매중 상품
	   public static ProductVO[] getRecentSaleList() {
	      
	      ProductVO[] ar = null;
	      
	      SqlSession ss = FactoryService.getFactory().openSession();
	      
	      List<ProductVO> list = ss.selectList("product.home_saleProduct");
	      
	      if(list != null && list.size() > 0) {
	         ar = new ProductVO[list.size()];
	         
	         list.toArray(ar);
	      }
	      
	      ss.close();
	      
	      return ar;
	      
	   }
	   
	   // 홈화면 판매대기 상품
	   public static ProductVO[] getRecentHoldList() {
	      
	      ProductVO[] ar = null;
	      
	      SqlSession ss = FactoryService.getFactory().openSession();
	      
	      List<ProductVO> list = ss.selectList("product.home_waitProduct");
	      
	      if(list != null && list.size() > 0) {
	         ar = new ProductVO[list.size()];
	         
	         list.toArray(ar);
	      }
	      
	      ss.close();
	      
	      return ar;
	      
	   }
	   
	   
}





















