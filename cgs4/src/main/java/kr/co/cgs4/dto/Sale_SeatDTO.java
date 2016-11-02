package kr.co.cgs4.dto;

import java.sql.Timestamp;

public class Sale_SeatDTO {
	
	Timestamp sale_date;
	String sale_ID;
	String screening_ID;
	String seat_ID;
	
	//sale_date
	public Timestamp getSale_date() {
		return sale_date;
	}
	public void setSale_date(Timestamp sale_date) {
		this.sale_date = sale_date;
	}
	
	//sale_id
	public String getSale_ID() {
		return sale_ID;
	}
	public void setSale_ID(String sale_ID) {
		this.sale_ID = sale_ID;
	}
	
	//screening_id
	public String getScreening_ID() {
		return screening_ID;
	}
	public void setScreening_ID(String screening_ID) {
		this.screening_ID = screening_ID;
	}
	
	//seat_id
	public String getSeat_ID() {
		return seat_ID;
	}
	public void setSeat_ID(String seat_ID) {
		this.seat_ID = seat_ID;
	}
	
}
