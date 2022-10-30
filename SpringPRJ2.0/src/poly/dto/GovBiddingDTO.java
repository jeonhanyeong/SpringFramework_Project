package poly.dto;

public class GovBiddingDTO {
	private int bidding_request_no;
	private String business_plan;
	private String bidding_request_date;
	private String bidding_status;
	private String bidding_date;
	private int government_business_board_no;
	private int landscaping_field_business_no;
	
	public int getBidding_request_no() {
		return bidding_request_no;
	}
	public void setBidding_request_no(int bidding_request_no) {
		this.bidding_request_no = bidding_request_no;
	}
	public String getBusiness_plan() {
		return business_plan;
	}
	public void setBusiness_plan(String business_plan) {
		this.business_plan = business_plan;
	}
	public String getBidding_request_date() {
		return bidding_request_date;
	}
	public void setBidding_request_date(String bidding_request_date) {
		this.bidding_request_date = bidding_request_date;
	}
	public String getBidding_status() {
		return bidding_status;
	}
	public void setBidding_status(String bidding_status) {
		this.bidding_status = bidding_status;
	}
	public String getBidding_date() {
		return bidding_date;
	}
	public void setBidding_date(String bidding_date) {
		this.bidding_date = bidding_date;
	}
	public int getGovernment_business_board_no() {
		return government_business_board_no;
	}
	public void setGovernment_business_board_no(int government_business_board_no) {
		this.government_business_board_no = government_business_board_no;
	}
	public int getLandscaping_field_business_no() {
		return landscaping_field_business_no;
	}
	public void setLandscaping_field_business_no(int landscaping_field_business_no) {
		this.landscaping_field_business_no = landscaping_field_business_no;
	}
}
