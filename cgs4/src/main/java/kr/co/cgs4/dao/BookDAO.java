package kr.co.cgs4.dao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.util.Constant;
import kr.co.cgs4.util.ScreeningInfo;

public class BookDAO {

    JdbcTemplate template =null;
	
	public  BookDAO(){
		this.template = Constant.template;
	}
	
	public ArrayList<ScreeningInfo> screening_date(String film_name, String site_name, String screening_date){
		String query = "select sc.SCREENING_ID, film_name, site_name, sc.screening_date, sc.screen_num, start_time, seating_cnt "
				+ "from SCREENING sc, site,screen, film where sc.film_id=film.film_id and sc.SITE_ID = site.SITE_ID and site.site_id=screen.site_id "
				+ "and film_name= '"+film_name+"' and site_name = '"+site_name+"' and screening_date = '"+screening_date+"' "
				+ "group by sc.SCREENING_ID, film_name, site_name, sc.screening_date, sc.screen_num, start_time, seating_cnt order by sc.SCREENING_ID";
		return (ArrayList<ScreeningInfo>) template.query(query, new BeanPropertyRowMapper<ScreeningInfo>(ScreeningInfo.class));
	}
	
	public ArrayList<FilmDTO> film_list(){
		String query = "select * from film" ;
		return (ArrayList<FilmDTO>)template.query(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
	}
	
//	select film_name, site_name, sc.screening_date, sc.screen_num, start_time, seating_cnt from SCREENING sc, site,screen, film
//	where sc.film_id=film.film_id and sc.SITE_ID = site.SITE_ID and site.site_id=screen.site_id and film_name='닥터 스트레인지' and site_name='강변점' and sc.screening_date='2016/11/04';

	
//	public ArrayList<FilmDTO> film_list(){
//		String query = "select * from film order by film_ID desc";
//		return (ArrayList<FilmDTO>)template.query(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
//	}
	

}
