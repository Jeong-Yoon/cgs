package kr.co.cgs4.dao;

import java.util.ArrayList;

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

	
public ArrayList<ScreeningDTO> screening() {
		
		String query = "select * from screening where site_ID=0001";
		return (ArrayList<ScreeningDTO>) template.query(query,new BeanPropertyRowMapper<ScreeningDTO>(ScreeningDTO.class));
	}

	public ArrayList<SiteDTO> site() {
		String query = "select * from site where site_ID=0001";
		return (ArrayList<SiteDTO>) template.query(query, new BeanPropertyRowMapper<SiteDTO>(SiteDTO.class));
	}
	
	public ArrayList<ScreeningDTO> screening_2(String sId) {
		
		String query = "select * from screening where site_ID="+sId;
		return (ArrayList<ScreeningDTO>) template.query(query,new BeanPropertyRowMapper<ScreeningDTO>(ScreeningDTO.class));
	}

	public ArrayList<SiteDTO> site_2(String sId) {
		String query = "select * from site where site_ID="+sId;
		return (ArrayList<SiteDTO>) template.query(query, new BeanPropertyRowMapper<SiteDTO>(SiteDTO.class));
	}
	
	
	
	public ArrayList<SiteDTO> total_site() {
		String query = "select site_ID,site_name from site";
		return (ArrayList<SiteDTO>) template.query(query, new BeanPropertyRowMapper<SiteDTO>(SiteDTO.class));
	}

	
	
}
