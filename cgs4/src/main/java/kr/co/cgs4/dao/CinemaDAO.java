package kr.co.cgs4.dao;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import kr.co.cgs4.dto.ScreeningDTO;
import kr.co.cgs4.dto.SiteDTO;
import kr.co.cgs4.util.Constant;

public class CinemaDAO {
	
	
    JdbcTemplate template =null;
	
	public  CinemaDAO(){
		this.template = Constant.template;
	}

	public ScreeningDTO screening(){
		String query = "select * from screening";
		return (ScreeningDTO) template.queryForObject(query, new BeanPropertyRowMapper<ScreeningDTO>(ScreeningDTO.class));
	}
	
	public SiteDTO site(){
		String query = "select * from site";
		return (SiteDTO) template.queryForObject(query, new BeanPropertyRowMapper<SiteDTO>(SiteDTO.class));
	}
	
	
	
}
