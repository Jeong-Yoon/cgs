/**
 * 
 */
package kr.co.cgs4.dto;

import java.sql.Date;

/**
 * @author XNOTE
 *
 */
public class SiteDTO {
	String site_ID;
	String site_name;
	String site_address;
	String site_pnum;
	String manager_name;
	String manager_ID;
	Date open_date;
	int total_screen;
	int total_seat;
	String site_img;
	
	public String getSite_ID() {
		return site_ID;
	}
	public void setSite_ID(String site_ID) {
		this.site_ID = site_ID;
	}
	public String getSite_name() {
		return site_name;
	}
	public void setSite_name(String site_name) {
		this.site_name = site_name;
	}
	public String getSite_address() {
		return site_address;
	}
	public void setSite_address(String site_address) {
		this.site_address = site_address;
	}
	public String getSite_pnum() {
		return site_pnum;
	}
	public void setSite_pnum(String site_pnum) {
		this.site_pnum = site_pnum;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getManager_ID() {
		return manager_ID;
	}
	public void setManager_ID(String manager_ID) {
		this.manager_ID = manager_ID;
	}
	public Date getOpen_date() {
		return open_date;
	}
	public void setOpen_date(Date open_date) {
		this.open_date = open_date;
	}
	public int getTotal_screen() {
		return total_screen;
	}
	public void setTotal_screen(int total_screen) {
		this.total_screen = total_screen;
	}
	public int getTotal_seat() {
		return total_seat;
	}
	public void setTotal_seat(int total_seat) {
		this.total_seat = total_seat;
	}
	public String getSite_img() {
		return site_img;
	}
	public void setSite_img(String site_img) {
		this.site_img = site_img;
	}

}
