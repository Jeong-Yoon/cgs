package kr.co.cgs4.dto;

public class ScreenDTO {
	String site_ID;
	String screen_num;
	int seating_cnt;
	
	public String getSite_ID() {
		return site_ID;
	}
	public void setSite_ID(String site_ID) {
		this.site_ID = site_ID;
	}
	public String getScreen_num() {
		return screen_num;
	}
	public void setScreen_num(String screen_num) {
		this.screen_num = screen_num;
	}
	public int getSeating_cnt() {
		return seating_cnt;
	}
	public void setSeating_cnt(int seating_cnt) {
		this.seating_cnt = seating_cnt;
	}

}
