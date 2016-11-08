package kr.co.cgs4.dto;

import java.sql.Date;
import java.sql.Timestamp;


public class MemberDTO {
	//varchar2 15�ڸ�
	String member_ID;
	//varchar2 15�ڸ�
	String password;
	//varchar2 15�ڸ�
	String name;
	//char 1�ڸ�
	String gender;
	//varchar2 100�ڸ�
	String address;
	//date Ÿ��
	Date birth;
	//varchar2 11�ڸ�
	String phone_num;
	//varchar2 30�ڸ�
	String email;
	//date Ÿ��
	Date join_date;
	//number
	int accum_point;
	//number
	int curr_point;
	//char 1�ڸ�
	String member_grade;
	//char 16�ڸ� 
	String membership;
	
	//member_ID
	public String getMember_ID() {
		return member_ID;
	}
	public void setMember_ID(String member_ID) {
		this.member_ID = member_ID;
	}
	
	//password
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//name
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	//gender
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	//address
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	//birth
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	
	//phone_num
	public String getPhone_num() {
		return phone_num;
	}
	public void setPhone_num(String phone_num) {
		this.phone_num = phone_num;
	}
	
	//email
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	//join_date
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	
	//accum_point
	public int getAccum_point() {
		return accum_point;
	}
	public void setAccum_point(int accum_point) {
		this.accum_point = accum_point;
	}
	
	//curr_point
	public int getCurr_point() {
		return curr_point;
	}
	public void setCurr_point(int curr_point) {
		this.curr_point = curr_point;
	}
	
	//member_grade
	public String getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(String member_grade) {
		this.member_grade = member_grade;
	}
	
	//membership
	public String getMembership() {
		return membership;
	}
	public void setMembership(String membership) {
		this.membership = membership;
	}
	

}
