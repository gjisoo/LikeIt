package vo;

public class StatusVO {
	private String s_idx, p_idx, like_count, hit_count, s_status, s_date;
	ProductVO pvo; // 상태값의 상품정보
	
	public String getS_idx() {
		return s_idx;
	}
	public void setS_idx(String s_idx) {
		this.s_idx = s_idx;
	}
	public String getP_idx() {
		return p_idx;
	}
	public void setP_idx(String p_idx) {
		this.p_idx = p_idx;
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
	public String getS_status() {
		return s_status;
	}
	public void setS_status(String s_status) {
		this.s_status = s_status;
	}
	public String getS_date() {
		return s_date;
	}
	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	public ProductVO getPvo() {
		return pvo;
	}
	public void setPvo(ProductVO pvo) {
		this.pvo = pvo;
	}
	
	
}
