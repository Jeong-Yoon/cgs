package kr.co.cgs4.dao;

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
		String query = "select * from member";
		return (MemberDTO) template.queryForObject(query,new BeanPropertyRowMapper<MemberDTO>(MemberDTO.class));
	}
	
}
