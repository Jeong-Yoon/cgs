package kr.co.cgs4.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import kr.co.cgs4.util.Constant;

public class BookDAO {

    JdbcTemplate template =null;
	
	public  BookDAO(){
		this.template = Constant.template;
	}

}
