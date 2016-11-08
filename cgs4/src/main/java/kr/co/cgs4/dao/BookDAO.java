package kr.co.cgs4.dao;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.SeatDTO;
import kr.co.cgs4.dto.Book_ScreenNum;
import kr.co.cgs4.dto.Book_ScreeningInfo;
import kr.co.cgs4.dto.Book_SeatRow;
import kr.co.cgs4.util.Constant;

public class BookDAO {

    JdbcTemplate template =null;
	
	public  BookDAO(){
		this.template = Constant.template;
	}
	
	public ArrayList<Book_ScreeningInfo> screening_date(String film_name, String site_name, String screening_date){
		String query = "select sc.SCREENING_ID, film_name, site_name, sc.screening_date, sc.screen_num, start_time, seating_cnt "
				+ "from SCREENING sc, site,screen, film where sc.film_id=film.film_id and sc.SITE_ID = site.SITE_ID and site.site_id=screen.site_id "
				+ "and film_name= '"+film_name+"' and site_name = '"+site_name+"' and screening_date = '"+screening_date+"' "
				+ "group by sc.SCREENING_ID, film_name, site_name, sc.screening_date, sc.screen_num, start_time, seating_cnt order by sc.SCREENING_ID";
		return (ArrayList<Book_ScreeningInfo>) template.query(query, new BeanPropertyRowMapper<Book_ScreeningInfo>(Book_ScreeningInfo.class));
	}
	public ArrayList<Book_ScreenNum> screening_num(String film_name, String site_name, String screening_date){
		String query = "select film_name, site_name, sc.screening_date, sc.screen_num "
				+ "from SCREENING sc, site,screen, film "
				+ "where sc.film_id=film.film_id and sc.SITE_ID = site.SITE_ID and site.site_id=screen.site_id "
				+ "and film_name= '"+film_name+"' and site_name = '"+site_name+"' and screening_date = '"+screening_date+"' "
				+ "group by film_name, site_name, sc.screening_date, sc.screen_num";
		return (ArrayList<Book_ScreenNum>) template.query(query, new BeanPropertyRowMapper<Book_ScreenNum>(Book_ScreenNum.class));
	}
	public ArrayList<SeatDTO> seat(String site_name, String screen_num){
		String query = "select site_name, b.site_id, seat_status, row_num, col_num, screen_num "
				+ "from (select ROWNUM rn, e.* from seat e) b, site "
				+ "where b.site_id=site.site_id and site_name='"+site_name+"' and screen_num='"+screen_num+"' order by rn";
		return (ArrayList<SeatDTO>) template.query(query, new BeanPropertyRowMapper<SeatDTO>(SeatDTO.class));
	}
	public ArrayList<Book_SeatRow> sRow(String site_name, String screen_num){
		String query = "select site_name, row_num, screen_num "
				+ "from (select ROWNUM rn, e.* from seat e) b, site "
				+ "where b.site_id=site.site_id and site_name='"+site_name+"' and screen_num='"+screen_num+"' "
				+ "group by site_name, row_num, screen_num order by row_num";

		return (ArrayList<Book_SeatRow>) template.query(query, new BeanPropertyRowMapper<Book_SeatRow>(Book_SeatRow.class));
	}
	
//	select site_name, row_num, screen_num 
//	from (select ROWNUM rn, e.* from seat e) b, site 
//	where b.site_id=site.site_id and site_name='강변점' and screen_num='01' 
//	group by site_name, row_num, screen_num order by row_num;
	
	
	public ArrayList<FilmDTO> film_list(){
		String query = "select * from film" ;
		return (ArrayList<FilmDTO>)template.query(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
	}
	
}
