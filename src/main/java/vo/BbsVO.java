package vo;

import java.util.List;

public class BbsVO {
	//bbs_t테이블에 있는 컬럼명들과 동일한 멤버변수 선언
	private String q_idx, m_idx, q_title, q_content, q_pw, q_ip, q_hit, q_date, q_status, comm_count;
	
	private String m_id;
	
	// 현재 원글을 참조하는 댓글들 ******************
	private List<CommVO> c_list;
	
	private MemVO mvo;
	
	
	


	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public MemVO getMvo() {
		return mvo;
	}

	public void setMvo(MemVO mvo) {
		this.mvo = mvo;
	}

	public String getComm_count() {
		return comm_count;
	}

	public void setComm_count(String comm_count) {
		this.comm_count = comm_count;
	}

	public String getQ_idx() {
		return q_idx;
	}

	public void setQ_idx(String q_idx) {
		this.q_idx = q_idx;
	}

	public String getM_idx() {
		return m_idx;
	}

	public void setM_idx(String m_idx) {
		this.m_idx = m_idx;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public String getQ_pw() {
		return q_pw;
	}

	public void setQ_pw(String q_pw) {
		this.q_pw = q_pw;
	}

	public String getQ_ip() {
		return q_ip;
	}

	public void setQ_ip(String q_ip) {
		this.q_ip = q_ip;
	}

	public String getQ_hit() {
		return q_hit;
	}

	public void setQ_hit(String q_hit) {
		this.q_hit = q_hit;
	}

	public String getQ_date() {
		return q_date;
	}

	public void setQ_date(String q_date) {
		this.q_date = q_date;
	}

	public String getQ_status() {
		return q_status;
	}

	public void setQ_status(String q_status) {
		this.q_status = q_status;
	}

	public List<CommVO> getC_list() {
		return c_list;
	}

	public void setC_list(List<CommVO> c_list) {
		this.c_list = c_list;
	}
}
