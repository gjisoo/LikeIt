package vo;

public class ProductVO {

	private String p_idx, p_name, p_s_price, m_idx, s_idx, p_info, p_r_date, p_s_date,
			p_f_date, p_goal_like, p_status, like_count, hit_count, ori_name, file_name, file_size, img_date, m_id, p_artist;

	MemVO mvo;
	
	AuctionVO avo;
	
	
	
	public MemVO getMvo() {
		return mvo;
	}

	public void setMvo(MemVO mvo) {
		this.mvo = mvo;
	}

	public AuctionVO getAvo() {
		return avo;
	}

	public void setAvo(AuctionVO avo) {
		this.avo = avo;
	}

	public String getP_artist() {
		return p_artist;
	}

	public void setP_artist(String p_artist) {
		this.p_artist = p_artist;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getP_idx() {
		return p_idx;
	}

	public void setP_idx(String p_idx) {
		this.p_idx = p_idx;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_s_price() {
		return p_s_price;
	}

	public void setP_s_price(String p_s_price) {
		this.p_s_price = p_s_price;
	}

	public String getM_idx() {
		return m_idx;
	}

	public void setM_idx(String m_idx) {
		this.m_idx = m_idx;
	}

	public String getS_idx() {
		return s_idx;
	}

	public void setS_idx(String s_idx) {
		this.s_idx = s_idx;
	}

	public String getP_info() {
		return p_info;
	}

	public void setP_info(String p_info) {
		this.p_info = p_info;
	}

	public String getP_r_date() {
		return p_r_date;
	}

	public void setP_r_date(String p_r_date) {
		this.p_r_date = p_r_date;
	}

	public String getP_s_date() {
		return p_s_date;
	}

	public void setP_s_date(String p_s_date) {
		this.p_s_date = p_s_date;
	}

	public String getP_f_date() {
		return p_f_date;
	}

	public void setP_f_date(String p_f_date) {
		this.p_f_date = p_f_date;
	}

	public String getP_goal_like() {
		return p_goal_like;
	}

	public void setP_goal_like(String p_goal_like) {
		this.p_goal_like = p_goal_like;
	}

	public String getP_status() {
		return p_status;
	}

	public void setP_status(String p_status) {
		this.p_status = p_status;
	}

	public String getLike_count() {
		return like_count;
	}

	public void setLike_count(String like_count) {
		this.like_count = like_count;
	}

	public String getHit_count() {
		return hit_count;
	}

	public void setHit_count(String hit_count) {
		this.hit_count = hit_count;
	}

	public String getOri_name() {
		return ori_name;
	}

	public void setOri_name(String ori_name) {
		this.ori_name = ori_name;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getFile_size() {
		return file_size;
	}

	public void setFile_size(String file_size) {
		this.file_size = file_size;
	}

	public String getImg_date() {
		return img_date;
	}

	public void setImg_date(String img_date) {
		this.img_date = img_date;
	}

}
