package kr.co.cgs4.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.MemberDTO;
import kr.co.cgs4.dto.SaleDTO;
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
				+ "from SCREENING sc, site,screen where sc.SITE_ID = site.SITE_ID and site.site_id=screen.site_id "
				+ "and film_name= '"+film_name+"' and site_name = '"+site_name+"' and screening_date = '"+screening_date+"' "
				+ "group by sc.SCREENING_ID, film_name, site_name, sc.screening_date, sc.screen_num, start_time, seating_cnt order by sc.SCREENING_ID";
		return (ArrayList<Book_ScreeningInfo>) template.query(query, new BeanPropertyRowMapper<Book_ScreeningInfo>(Book_ScreeningInfo.class));
	}
	public ArrayList<Book_ScreenNum> screening_num(String film_name, String site_name, String screening_date){
		String query = "select film_name, site_name, sc.screening_date, sc.screen_num "
				+ "from SCREENING sc, site,screen "
				+ "where sc.SITE_ID = site.SITE_ID and site.site_id=screen.site_id "
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
				+ "group by site_name, row_num,  order by row_num";

		return (ArrayList<Book_SeatRow>) template.query(query, new BeanPropertyRowMapper<Book_SeatRow>(Book_SeatRow.class));
	}
	public void saleSubmit(final String SALE_ID,final String CURRDATE, final int SALE_PRICE, final String PAYCARD_NUMBER, final String SCREENING_ID, final int SALE_COUNT, final int COMMON_CNT, final int FINAL_PRICE, final int YOUNG_CNT, final int SPECIAL_CNT){
		System.out.println(SALE_ID);
		System.out.println(CURRDATE);
		System.out.println(SALE_PRICE);
		System.out.println(PAYCARD_NUMBER);
		System.out.println(SCREENING_ID);
		System.out.println(SALE_COUNT);
		
		String query= "INSERT INTO SALE VALUES (?, '0', '0', ?, ?, ?, '0', ?, ?, '0', '0', ?, '1', ?, ?, ?)";
		template.update(query, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, SALE_ID);
				ps.setString(2, CURRDATE);
				ps.setInt(3, SALE_PRICE);
				ps.setString(4, PAYCARD_NUMBER);
				ps.setString(5, SCREENING_ID);
				ps.setInt(6, SALE_COUNT);
				ps.setInt(7, FINAL_PRICE);
				ps.setInt(8, COMMON_CNT);
				ps.setInt(9, YOUNG_CNT);
				ps.setInt(10, SPECIAL_CNT);
			}
		});
	}
	public void saleSeat(String sit, final String date, final String sale_id, final String screening_id){
		//seat_id 구하기
		System.out.println(sit);
		String[] rowCol = sit.split("");
		String rowNum = rowCol[0];
		String colNum = rowCol[1];
		String getQuery= "select seat_id from seat where row_num='"+rowNum+"' and col_num='"+colNum+"'";
		final String seat_ID = template.queryForObject(getQuery, new BeanPropertyRowMapper<String>());
		//sale_seat 에 넣기
		System.out.println("seat입력됨.");
		String setQuery= "INSERT INTO SALE_SEAT VALUES (?, ?, '0', ?)";
		template.update(setQuery, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, date);
				ps.setString(2, sale_id);
				ps.setString(3, screening_id);
				ps.setString(4, seat_ID);
			}
		});
//		16/10/28	12345678	00001	0101001
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
