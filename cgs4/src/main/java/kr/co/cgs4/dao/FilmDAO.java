package kr.co.cgs4.dao;

import java.util.ArrayList;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import kr.co.cgs4.util.Constant;

import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.ScreenDTO;

public class FilmDAO {
	
	JdbcTemplate template;
	
	public FilmDAO() {
		this.template = Constant.template;
	}
	
	public FilmDTO film(String film_ID){
		String query = "select * from film where film_ID = " + film_ID;
		return (FilmDTO) template.queryForObject(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
	}
	
	public ArrayList<FilmDTO> film_list(){
		String query = "select * from film order by film_ID desc";
		return (ArrayList<FilmDTO>)template.query(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
	}
	
	public ArrayList<ScreenDTO> screen(String site_ID){
		String query="select * from screen where site_ID = " + site_ID;
		return (ArrayList<ScreenDTO>)template.query(query, new BeanPropertyRowMapper<ScreenDTO>(ScreenDTO.class));
	}
		
}
