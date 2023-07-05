package vo;

public class AuctionVO {
	private String a_idx, a_price, a_date, m_idx, p_idx, m_id, a_status, a_file_name;
	private ProductVO pvo;

	
	
	
	public String getA_file_name() {
		return a_file_name;
	}

	public void setA_file_name(String a_file_name) {
		this.a_file_name = a_file_name;
	}

	public String getA_status() {
		return a_status;
	}

	public void setA_status(String a_status) {
		this.a_status = a_status;
	}

	public String getA_idx() {
		return a_idx;
	}

	public void setA_idx(String a_idx) {
		this.a_idx = a_idx;
	}

	public String getA_price() {
		return a_price;
	}

	public void setA_price(String a_price) {
		this.a_price = a_price;
	}

	public String getA_date() {
		return a_date;
	}

	public void setA_date(String a_date) {
		this.a_date = a_date;
	}

	public String getM_idx() {
		return m_idx;
	}

	public void setM_idx(String m_idx) {
		this.m_idx = m_idx;
	}

	public ProductVO getPvo() {
		return pvo;
	}

	public void setPvo(ProductVO pvo) {
		this.pvo = pvo;
	}

	public String getP_idx() {
		return p_idx;
	}

	public void setP_idx(String p_idx) {
		this.p_idx = p_idx;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

}
