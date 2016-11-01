package kr.co.cgs3.dto;

public class Member_Film {
	// varchar2 15자리
	String member_ID;
	// char 5자리
	String screening_ID;
	
	//member_ID
	public String getMember_ID() {
		return member_ID;
	}
	public void setMember_ID(String member_ID) {
		this.member_ID = member_ID;
	}
	
	//screening_ID
	public String getScreening_ID() {
		return screening_ID;
	}
	public void setScreening_ID(String screening_ID) {
		this.screening_ID = screening_ID;
	}

}
