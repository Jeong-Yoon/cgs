package kr.co.cgs4.dto;

import java.sql.Timestamp;

public class EmployeeDTO {
	String emp_ID;
	String emp_name;
	String emp_gender;
	String emp_address;
	Timestamp emp_birth;
	String emp_pnum;
	String emp_email;
	Timestamp hire_date;
	String position;
	int salary;
	String site_ID;
	String cardnum;
	
	public String getEmp_ID() {
		return emp_ID;
	}
	public void setEmp_ID(String emp_ID) {
		this.emp_ID = emp_ID;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_gender() {
		return emp_gender;
	}
	public void setEmp_gender(String emp_gender) {
		this.emp_gender = emp_gender;
	}
	public String getEmp_address() {
		return emp_address;
	}
	public void setEmp_address(String emp_address) {
		this.emp_address = emp_address;
	}
	public Timestamp getEmp_birth() {
		return emp_birth;
	}
	public void setEmp_birth(Timestamp emp_birth) {
		this.emp_birth = emp_birth;
	}
	public String getEmp_pnum() {
		return emp_pnum;
	}
	public void setEmp_pnum(String emp_pnum) {
		this.emp_pnum = emp_pnum;
	}
	public String getEmp_email() {
		return emp_email;
	}
	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}
	public Timestamp getHire_date() {
		return hire_date;
	}
	public void setHire_date(Timestamp hire_date) {
		this.hire_date = hire_date;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getSite_ID() {
		return site_ID;
	}
	public void setSite_ID(String site_ID) {
		this.site_ID = site_ID;
	}
	public String getCardnum() {
		return cardnum;
	}
	public void setCardnum(String cardnum) {
		this.cardnum = cardnum;
	}

}
