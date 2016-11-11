package kr.co.cgs4.dao;

import java.util.ArrayList;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import kr.co.cgs4.util.Constant;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.ScreenDTO;
import kr.co.cgs4.dto.TrailerDTO;

public class FilmDAO {
	
	JdbcTemplate template;
	
	public FilmDAO() {
		this.template = Constant.template;
	}
	
	public FilmDTO film(String film_ID){
		String query = "select * from film where film_ID = '" + film_ID + "'";
		return (FilmDTO) template.queryForObject(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
	}
	
	public ArrayList<TrailerDTO> trailer(String film_ID){
		String query = "select * from trailer where film_ID = '" + film_ID + "'";
		return (ArrayList<TrailerDTO>)template.query(query, new BeanPropertyRowMapper<TrailerDTO>(TrailerDTO.class));
	}
	public ArrayList<FilmDTO> film_list(final int page){
		int statNum = page*12+1;
		int endNum = ((page+1)*12)+1;
		String query = "SELECT * FROM (SELECT ROWNUM rnum, a.* FROM (SELECT * FROM film WHERE RELEASE_DATE < SYSDATE ORDER BY film_ID DESC) a) WHERE rnum between " + statNum + " and " + endNum ;
		return (ArrayList<FilmDTO>)template.query(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
	}
	
	public ArrayList<FilmDTO> index_list(){
		String query = "SELECT * FROM (SELECT ROWNUM rnum, a.* FROM (SELECT * FROM film WHERE RELEASE_DATE < SYSDATE ORDER BY film_ID DESC) a) WHERE rnum between 1 and 8 ";
		return (ArrayList<FilmDTO>)template.query(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
	}
	
	public ArrayList<FilmDTO> coming_list(){
		String query = "SELECT * FROM (SELECT ROWNUM rnum, a.* FROM (SELECT * FROM film WHERE RELEASE_DATE > SYSDATE ORDER BY film_ID DESC) a) WHERE rnum between 1 and 4 ";
		return (ArrayList<FilmDTO>)template.query(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
	}
	
	public ArrayList<ScreenDTO> screen(String site_ID){
		String query="select * from screen where site_ID = " + site_ID;
		return (ArrayList<ScreenDTO>)template.query(query, new BeanPropertyRowMapper<ScreenDTO>(ScreenDTO.class));
	}
		
}
