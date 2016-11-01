package kr.co.cgs3.dto;

import java.sql.Timestamp;

public class Reserve_DTO {
	String reserve_ID;
	Timestamp sale_date;
	String sale_ID;
	String reserve_name;
	String reserve_pnum;
	String ticket_print;
	
	//reserve_id
	public String getReserve_ID() {
		return reserve_ID;
	}
	public void setReserve_ID(String reserve_ID) {
		this.reserve_ID = reserve_ID;
	}
	
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
	
	//reserve_name
	public String getReserve_name() {
		return reserve_name;
	}
	public void setReserve_name(String reserve_name) {
		this.reserve_name = reserve_name;
	}
	
	//reserve_pnum
	public String getReserve_pnum() {
		return reserve_pnum;
	}
	public void setReserve_pnum(String reserve_pnum) {
		this.reserve_pnum = reserve_pnum;
	}
	
	//ticket print
	public String getTicket_print() {
		return ticket_print;
	}
	public void setTicket_print(String ticket_print) {
		this.ticket_print = ticket_print;
	}
	
}
