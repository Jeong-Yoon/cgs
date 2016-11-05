package kr.co.cgs4.util;

import java.sql.Timestamp;

public class ScreeningInfo {
	private String screening_ID;
	private String film_name;
	private String site_name;
	private Timestamp screening_date;
	private String screen_num;
	private String start_time;
	private String seating_cnt;
	private String sale_cnt;
	
	public String getScreening_ID() {
		return screening_ID;
	}
	public void setScreening_ID(String screening_ID) {
		this.screening_ID = screening_ID;
	}
	public String getFilm_name() {
		return film_name;
	}
	public void setFilm_name(String film_name) {
		this.film_name = film_name;
	}
	public String getSite_name() {
		return site_name;
	}
	public void setSite_name(String site_name) {
		this.site_name = site_name;
	}
	public Timestamp getScreening_date() {
		return screening_date;
	}
	public void setScreening_date(Timestamp screening_date) {
		this.screening_date = screening_date;
	}
	public String getScreen_num() {
		return screen_num;
	}
	public void setScreen_num(String screen_num) {
		this.screen_num = screen_num;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getSeating_cnt() {
		return seating_cnt;
	}
	public void setSeating_cnt(String seating_cnt) {
		this.seating_cnt = seating_cnt;
	}
	public String getSale_cnt() {
		return sale_cnt;
	}
	public void setSale_cnt(String sale_cnt) {
		this.sale_cnt = sale_cnt;
	}
	
}
