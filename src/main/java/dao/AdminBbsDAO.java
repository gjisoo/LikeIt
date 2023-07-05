package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.service.FactoryService;
import vo.BbsVO;
import vo.CommVO;

public class AdminBbsDAO {

	// 게시판 목록을 만드는 ListAction에서 호출하는 메서드
	public static BbsVO[] getList(String searchType, String searchValue, String begin, String end) {
		BbsVO[] ar = null;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchType", searchType);
		map.put("searchValue", searchValue);
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<BbsVO> list = ss.selectList("admin_bbs.list", map);
		
		if(list !=null && list.size() > 0) {
			//list가 null이 아니고 길이가 0보다 크다면 DB로부터 자원을 가져왔다는 뜻이니 배열을 생성하고,
			//list에 있는 요소들을 그대로 복사해 넣는다.
			ar = new BbsVO[list.size()];
			list.toArray(ar);
			
			
			ss.close();
		}
		return ar;
	}
	

	// 보기 기능에서 사용하는 게시물 반환 기능 - 호출은 ViewAction에서 한다.
	public static BbsVO getBbs(String q_idx) {
		
		
		
		SqlSession ss = FactoryService.getFactory().openSession();
		BbsVO vo = ss.selectOne("admin_bbs.getBbs", q_idx);
		ss.close();
		
		return vo;
	}
	
	public static BbsVO getBbs2(String q_idx) {
		
		String q_idx1 = q_idx;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		BbsVO vo = ss.selectOne("admin_bbs.getBbs1",q_idx1);
		ss.close();
		
		return vo;
	}
	
	public static CommVO getComm(String c_idx) {
		
		String c_idx1 = c_idx;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		CommVO vo = ss.selectOne("admin_bbs.getComm",c_idx1);
		ss.close();
		
		return vo;
	}
	
	//댓글 저장 기능
		public static int addComm(String c_content, String c_ip, String q_idx, String m_idx) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("c_content", c_content);
			map.put("c_ip", c_ip);
			map.put("q_idx", q_idx);
			map.put("m_idx", m_idx);
			
		
			
			SqlSession ss = FactoryService.getFactory().openSession();
			int cnt = ss.insert("admin_bbs.addComm", map);
			
			if(cnt > 0)
				ss.commit();
			else
				ss.rollback();
			
			ss.close();
			
			return cnt;
		}
		
	//수정 기능	
		public static int editBbs(String q_idx, String q_title, String q_content, String q_ip) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("q_idx", q_idx);
			
			map.put("q_title", q_title);
			map.put("q_content", q_content);
			map.put("q_ip", q_ip);
			
			SqlSession ss = FactoryService.getFactory().openSession();
			int cnt = ss.update("admin_bbs.edit", map);
			if(cnt > 0)
				ss.commit();
			else
				ss.rollback();
			
			ss.close();
			
			return cnt;
		}
		
	//댓글 수정 기능	
			public static int edit(String c_idx, String m_idx, String c_content, String c_ip) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("c_idx", c_idx);
				map.put("m_idx", m_idx);
				map.put("c_content", c_content);
				map.put("c_ip", c_ip);
				
				SqlSession ss = FactoryService.getFactory().openSession();
				int cnt = ss.update("admin_bbs.editcomm", map);
				if(cnt > 0)
					ss.commit();
				else
					ss.rollback();
				
				ss.close();
				
				return cnt;
			}
		
	//삭제 기능
		public static int del(String q_idx) {
			//admin_bbs.del이라는 SQL문을 호출하기 위해 del에 명시되어 있는 Map구조를 생성하여 호출할 때 넣어줘야 한다.
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("q_idx", q_idx);
			
			SqlSession ss = FactoryService.getFactory().openSession();
			int cnt = ss.update("admin_bbs.del", map);
			if(cnt>0)
				ss.commit();
			else
				ss.rollback();
			
			ss.close();
			
			return cnt;
			
		}
		
	//댓글 삭제 기능
			public static int delcomm(String c_idx) {
				//admin_bbs.del이라는 SQL문을 호출하기 위해 del에 명시되어 있는 Map구조를 생성하여 호출할 때 넣어줘야 한다.
				
				Map<String, String> map = new HashMap<String, String>();
				map.put("c_idx", c_idx);
				SqlSession ss = FactoryService.getFactory().openSession();
				int cnt = ss.update("admin_bbs.delcomm", map);
				if(cnt>0)
					ss.commit();
				else
					ss.rollback();
				
				ss.close();
				
				return cnt;
				
			}
		
		//조회수
		public static int updateHit(String q_idx) {
			SqlSession ss = FactoryService.getFactory().openSession();
			int cnt = ss.update("admin_bbs.hit", q_idx);
			if(cnt>0)
				ss.commit();
			else
				ss.rollback();
			
			ss.close();
			
			return cnt;
			
		}

		public static int getCount(String searchType, String searchValue) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("searchType", searchType);
			map.put("searchValue", searchValue);
			
			SqlSession ss = FactoryService.getFactory().openSession();
			int cnt = ss.selectOne("admin_bbs.count", map);
			ss.close();
			
			return cnt;
		}
		
		public static CommVO[] commList(String q_idx) {
			CommVO[] cvo = null;
			
			SqlSession ss = FactoryService.getFactory().openSession();
			List<CommVO> list = ss.selectList("admin_bbs.commList", q_idx);
			
			ss.close();
			
			if(list !=null && !list.isEmpty()) {
				cvo = new CommVO[list.size()];
				list.toArray(cvo);
			}
			
			return cvo;
			
		}
}

