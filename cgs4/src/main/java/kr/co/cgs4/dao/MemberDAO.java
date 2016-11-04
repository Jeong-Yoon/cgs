package kr.co.cgs4.dao;

import java.util.ArrayList;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import kr.co.cgs4.dto.MemberDTO;
import kr.co.cgs4.util.Constant;

public class MemberDAO {
	JdbcTemplate template =null;
	
	public MemberDAO(){
		this.template = Constant.template;
	}
	
	public MemberDTO member()	{
		String query = "select * from member;";
		return (MemberDTO) template.queryForObject(query,new BeanPropertyRowMapper<MemberDTO>(MemberDTO.class));
	}
	
	public ArrayList<MemberDTO> member_list()	{
		String query = "select * from member;";
		return (ArrayList<MemberDTO>) template.query(query,new BeanPropertyRowMapper<MemberDTO>(MemberDTO.class));
	}
	
}
