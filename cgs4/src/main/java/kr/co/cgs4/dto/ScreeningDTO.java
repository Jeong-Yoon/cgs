package kr.co.cgs4.dto;

import java.sql.Date;

public class ScreeningDTO {

	private String screening_ID;
	private Date screening_date;
	private String screening_cnt;
	private String start_time;
	private String end_time;
	private int schedule_open;
	private String film_ID;
	private String site_ID;
	private String screen_num;
	private String film_name;
	

	public String getScreening_ID() {
		return screening_ID;
	}
	public void setScreening_ID(String screening_ID) {
		this.screening_ID = screening_ID;
	}
	public Date getScreening_date() {
		return screening_date;
	}
	public void setScreening_date(Date screening_date) {
		this.screening_date = screening_date;
	}
	public String getScreening_cnt() {
		return screening_cnt;
	}
	public void setScreening_cnt(String screening_cnt) {
		this.screening_cnt = screening_cnt;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public int getSchedule_open() {
		return schedule_open;
	}
	public void setSchedule_open(int schedule_open) {
		this.schedule_open = schedule_open;
	}
	public String getFilm_ID() {
		return film_ID;
	}
	public void setFilm_ID(String film_ID) {
		this.film_ID = film_ID;
	}
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
	
	public String getFilm_name() {
		return film_name;
	}
	public void setFilm_name(String film_name) {
		this.film_name = film_name;
	}
	
	
}
