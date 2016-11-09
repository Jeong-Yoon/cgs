package kr.co.cgs4.dto;

import java.sql.Date;
import java.sql.Timestamp;

public class ReserveCheckDTO {

	
	String reserve_ID;
	Timestamp sale_date;
	String sale_type;
	int final_price;
	int sale_cnt;
	String screen_num;
	Date screening_date;
	String film_name;
	String start_time;
	String site_name;
	
	
	public String getReserve_ID() {
		return reserve_ID;
	}
	public void setReserve_ID(String reserve_ID) {
		this.reserve_ID = reserve_ID;
	}
	public Timestamp getSale_date() {
		return sale_date;
	}
	public void setSale_date(Timestamp sale_date) {
		this.sale_date = sale_date;
	}
	public String getSale_type() {
		return sale_type;
	}
	public void setSale_type(String sale_type) {
		this.sale_type = sale_type;
	}
	public int getFinal_price() {
		return final_price;
	}
	public void setFinal_price(int final_price) {
		this.final_price = final_price;
	}
	public int getSale_cnt() {
		return sale_cnt;
	}
	public void setSale_cnt(int sale_cnt) {
		this.sale_cnt = sale_cnt;
	}
	public String getScreen_num() {
		return screen_num;
	}
	public void setScreen_num(String screen_num) {
		this.screen_num = screen_num;
	}
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
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getSite_name() {
		return site_name;
	}
	public void setSite_name(String site_name) {
		this.site_name = site_name;
	}
	
	
}
