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

public class miniDAO {
	
	public static MemVO check_pw(String idx, String pw) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("m_idx", idx);
		map.put("m_pw", pw);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		MemVO mvo = ss.selectOne("map.check_pw", map);		
		ss.close();
		
		return mvo;
	}
	
	public static MemVO modifylist(String idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		MemVO mvo = ss.selectOne("map.modifylist", idx);		
		ss.close();
		
		return mvo;
	}
	
	public static int modifyinfo(String m_idx, String m_pw, String m_phone, String m_email) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("m_idx", m_idx);
		map.put("m_pw", m_pw);
		map.put("m_phone", m_phone);
		map.put("m_email", m_email);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.update("map.modifyinfo", map);
		
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
		
	}
	
	public static int delmem(String idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.update("map.delmem", idx);
		
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		
		ss.close();
		
		return cnt;
	}
	
	public static QnaVO[] qnalistWithCountComm(String m_idx, String begin, String end) {
		QnaVO[] ar = null;
		Map<String, String> map = new HashMap<String, String>();
		map.put("m_idx", m_idx);
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<QnaVO> list = ss.selectList("map.qnalistWithCountComm", map);
		if(list != null) {
			ar = new QnaVO[list.size()];
			list.toArray(ar);
		}
		ss.close();
		
		return ar;
	}
	
	public static AuctionVO[] buylist(String m_idx, String begin, String end) {
		AuctionVO[] ar = null;
		Map<String, String> map = new HashMap<String, String>();
		map.put("m_idx", m_idx);
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession ss =FactoryService.getFactory().openSession();
		List<AuctionVO> list = ss.selectList("map.buylist", map);
		
		if(list != null) {
			ar = new AuctionVO[list.size()];
			list.toArray(ar);
		}
		ss.close();
		
		return ar;
	}
	
	public static AuctionVO[] salelist(String m_idx, String begin, String end) {
		AuctionVO[] ar = null;
		Map<String, String> map = new HashMap<String, String>();
		map.put("m_idx", m_idx);
		map.put("begin", begin);
		map.put("end", end);
		
		SqlSession ss =FactoryService.getFactory().openSession();
		List<AuctionVO> list = ss.selectList("map.salelist", map);
	
		if(list != null) {
			ar = new AuctionVO[list.size()];
			list.toArray(ar);
		}
		ss.close();
		
		return ar;
	}
	
	public static int qnaTotalCount(String idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("map.qnaTotalCount", idx);
		ss.close();
		
		return cnt;
	}
	
	public static int buyTotalCount(String idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("map.buyTotalCount", idx);
		ss.close();
		
		return cnt;
	}
	
	public static int saleTotalCount(String idx) {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("map.saleTotalCount", idx);
		ss.close();
		
		return cnt;
	}
	
}
