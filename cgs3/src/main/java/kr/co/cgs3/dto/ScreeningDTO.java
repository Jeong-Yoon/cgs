package kr.co.cgs3.dto;

public class ScreeningDTO {

	private String screening_ID;
	private String screening_date;
	private String screening_cnt;
	private String start_time;
	private String end_time;
	private int schedule_open;
	private String film_id;
	private String site_id;
	private String screen_num;
	public String getScreening_ID() {
		return screening_ID;
	}
	public void setScreening_ID(String screening_ID) {
		this.screening_ID = screening_ID;
	}
	public String getScreening_date() {
		return screening_date;
	}
	public void setScreening_date(String screening_date) {
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
	public String getFilm_id() {
		return film_id;
	}
	public void setFilm_id(String film_id) {
		this.film_id = film_id;
	}
	public String getSite_id() {
		return site_id;
	}
	public void setSite_id(String site_id) {
		this.site_id = site_id;
	}
	public String getScreen_num() {
		return screen_num;
	}
	public void setScreen_num(String screen_num) {
		this.screen_num = screen_num;
	}
	
	
	
}
