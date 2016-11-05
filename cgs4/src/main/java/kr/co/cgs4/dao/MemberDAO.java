package kr.co.cgs4.dao;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.xml.ws.Response;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import kr.co.cgs4.dto.MemberDTO;
import kr.co.cgs4.util.Constant;

public class MemberDAO {
	JdbcTemplate template ;

	public MemberDAO() {
		this.template = Constant.template;
	}

	public MemberDTO member() {
		String query = "select * from member;";
		return (MemberDTO) template.queryForObject(query, new BeanPropertyRowMapper<MemberDTO>(MemberDTO.class));
	}

	public MemberDTO member_list(String id, String pw) {
		String query = "select * from member where MEMBER_ID = " + id + " and PASSWORD = '" + pw + "'";
			return (MemberDTO) template.queryForObject(query, new BeanPropertyRowMapper<MemberDTO>(MemberDTO.class));
		
	}
	
//	public MemberDTO member_name(String id){
//		String query = "select name from member where MEMBER_ID = " + id;
//		return (MemberDTO) template.queryForObject(query, new BeanPropertyRowMapper<MemberDTO>(MemberDTO.class));
//	}
}
