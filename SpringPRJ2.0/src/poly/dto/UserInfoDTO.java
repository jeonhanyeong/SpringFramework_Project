package poly.dto;

public class UserInfoDTO {
	private int landscaping_enterprise_no;
	private String landscaping_enterprise_id;	//아이디
	private String landscaping_enterprise_pw;	//비번
	private String company_name;			//기업명
	private String company_tel;				//전화번호
	private String business_registration_number;	//사업자등록번호
	
	private String exists_yn;		//중복확인을 위한 가상컬럼
	
	
	public int getLandscaping_enterprise_no() {
		return landscaping_enterprise_no;
	}
	public void setLandscaping_enterprise_no(int landscaping_enterprise_no) {
		this.landscaping_enterprise_no = landscaping_enterprise_no;
	}
	public String getLandscaping_enterprise_id() {
		return landscaping_enterprise_id;
	}
	public void setLandscaping_enterprise_id(String landscaping_enterprise_id) {
		this.landscaping_enterprise_id = landscaping_enterprise_id;
	}
	public String getLandscaping_enterprise_pw() {
		return landscaping_enterprise_pw;
	}
	public void setLandscaping_enterprise_pw(String landscaping_enterprise_pw) {
		this.landscaping_enterprise_pw = landscaping_enterprise_pw;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getCompany_tel() {
		return company_tel;
	}
	public void setCompany_tel(String company_tel) {
		this.company_tel = company_tel;
	}
	public String getBusiness_registration_number() {
		return business_registration_number;
	}
	public void setBusiness_registration_number(String business_registration_number) {
		this.business_registration_number = business_registration_number;
	}
	
	
	public String getExists_yn() {
		return exists_yn;
	}
	public void setExists_yn(String exists_yn) {
		this.exists_yn = exists_yn;
	}
	
}
