package kr.co.cgs3.dto;

import java.sql.Timestamp;

public class Member_SaleDTO {
	// varchar2 15자리
	String member_ID;
	// char 8자리
	String sale_ID;
	// date 타입
	Timestamp sale_date;
	// number
	int using_point;
	
	//member_ID
	public String getMember_ID() {
		return member_ID;
	}
	public void setMember_ID(String member_ID) {
		this.member_ID = member_ID;
	}
	
	//sale_ID
	public String getSale_ID() {
		return sale_ID;
	}
	public void setSale_ID(String sale_ID) {
		this.sale_ID = sale_ID;
	}
	
	//sale_date
	public Timestamp getSale_date() {
		return sale_date;
	}
	public void setSale_date(Timestamp sale_date) {
		this.sale_date = sale_date;
	}
	
	//using_point
	public int getUsing_point() {
		return using_point;
	}
	public void setUsing_point(int using_point) {
		this.using_point = using_point;
	}
}
