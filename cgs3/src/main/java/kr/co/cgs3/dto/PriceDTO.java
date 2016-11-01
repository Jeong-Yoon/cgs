package kr.co.cgs3.dto;

public class PriceDTO {
	
	String customer_type;
	int price;
	
	//customer_type
	public String getCustomer_type() {
		return customer_type;
	}
	public void setCustomer_type(String customer_type) {
		this.customer_type = customer_type;
	}
	
	//price
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
