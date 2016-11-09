package kr.co.cgs4.dto;

import java.sql.Date;

public class ReserveListDTO {

	Date screening_date;
	String film_name;
	String reserve_ID;
	String site_name;
	String start_time;
	int sale_cnt;
	
	
	
	public Date getScreening_date() {
		return screening_date;
	}
	public void setScreening_date(Date screening_date) {
		this.screening_date = screening_date;
	}
	public String getFilm_name() {
		return film_name;
	}
	public void setFilm_name(String film_name) {
		this.film_name = film_name;
	}
	public String getReserve_ID() {
		return reserve_ID;
	}
	public void setReserve_ID(String reserve_ID) {
		this.reserve_ID = reserve_ID;
	}
	public String getSite_name() {
		return site_name;
	}
	public void setSite_name(String site_name) {
		this.site_name = site_name;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public int getSale_cnt() {
		return sale_cnt;
	}
	public void setSale_cnt(int sale_cnt) {
		this.sale_cnt = sale_cnt;
	}
	
	
	
}
