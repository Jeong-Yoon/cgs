package kr.co.cgs4.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

import kr.co.cgs4.dto.Book_ScreenNum;
import kr.co.cgs4.dto.Book_ScreeningInfo;
import kr.co.cgs4.dto.Book_SeatOccupation;
import kr.co.cgs4.dto.Book_SeatRow;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.MemberDTO;
import kr.co.cgs4.dto.SeatDTO;
import kr.co.cgs4.util.Constant;

public class BookDAO {
	
    JdbcTemplate template =null;

//	PlatformTransactionManager transactionManager;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
//	public void setTransactionManager(PlatformTransactionManager transactionManager) {
//		this.transactionManager = transactionManager;
//	}
	public  BookDAO(){
		this.template = Constant.template;
	}
	

	//book1에 필요한 상영정보, 상영관 정보
	public ArrayList<Book_ScreeningInfo> screening_date(String film_name, String site_name, Date screening_date){
		String query = "select sc.SCREENING_ID, film_name, site_name, sc.screening_date, sc.screen_num, start_time, seating_cnt "
				+ "from SCREENING sc, site,screen where sc.SITE_ID = site.SITE_ID and site.site_id=screen.site_id "
				+ "and film_name= '"+film_name+"' and site_name = '"+site_name+"' and screening_date = to_date('"+screening_date+"', 'yyyy-MM-dd') "
				+ "group by sc.SCREENING_ID, film_name, site_name, sc.screening_date, sc.screen_num, start_time, seating_cnt order by sc.SCREENING_ID";
		return (ArrayList<Book_ScreeningInfo>) template.query(query, new BeanPropertyRowMapper<Book_ScreeningInfo>(Book_ScreeningInfo.class));
	}
	public ArrayList<Book_ScreenNum> screening_num(String film_name, String site_name, Date screening_date){
		String query = "select film_name, site_name, sc.screening_date, sc.screen_num "
				+ "from SCREENING sc, site,screen "
				+ "where sc.SITE_ID = site.SITE_ID and site.site_id=screen.site_id "
				+ "and film_name= '"+film_name+"' and site_name = '"+site_name+"' and screening_date = to_date('"+screening_date+"', 'yyyy-MM-dd') "
				+ "group by film_name, site_name, sc.screening_date, sc.screen_num";
		return (ArrayList<Book_ScreenNum>) template.query(query, new BeanPropertyRowMapper<Book_ScreenNum>(Book_ScreenNum.class));
	}
	//
	//book2에 필요한 seatDTO, sale_seat정보
	public ArrayList<SeatDTO> seat(String site_name, String screen_num){
		String query = "select site_name, b.site_id, seat_status, row_num, col_num, screen_num "
				+ "from (select ROWNUM rn, e.* from seat e) b, site "
				+ "where b.site_id=site.site_id and site_name='"+site_name+"' and screen_num='"+screen_num+"' order by rn";
		return (ArrayList<SeatDTO>) template.query(query, new BeanPropertyRowMapper<SeatDTO>(SeatDTO.class));
	}
	public ArrayList<Book_SeatOccupation> saleSeat(String screening_id){
		String query = "select screening_id, row_num, col_num from SALE_SEAT ss , seat "
				+ "where ss.SEAT_ID=seat.SEAT_ID and screening_id= '"+screening_id+"'";
		return (ArrayList<Book_SeatOccupation>) template.query(query, new BeanPropertyRowMapper<Book_SeatOccupation>(Book_SeatOccupation.class));
	}
	
	
	
	public ArrayList<Book_SeatRow> sRow(String site_name, String screen_num){
		String query = "select site_name, row_num, screen_num "
				+ "from (select ROWNUM rn, e.* from seat e) b, site "
				+ "where b.site_id=site.site_id and site_name='"+site_name+"' and screen_num='"+screen_num+"' "
				+ "group by site_name, row_num, screen_num order by row_num";

		return (ArrayList<Book_SeatRow>) template.query(query, new BeanPropertyRowMapper<Book_SeatRow>(Book_SeatRow.class));
	}

	public void saleSubmit(final String SALE_ID,final java.sql.Date CURRDATE, final int SALE_PRICE, final String PAYCARD_NUMBER, final String SCREENING_ID, final int SALE_COUNT, final int COMMON_CNT, final int FINAL_PRICE, final int YOUNG_CNT, final int SPECIAL_CNT, final String[] sits, final String id, final String reserve_ID){
		System.out.println(id);
//		TransactionDefinition definition = new DefaultTransactionDefinition();
//		TransactionStatus status = transactionManager.getTransaction(definition);
		

//		try {
		//sale 넣기
		String query= "INSERT INTO SALE VALUES (?, '0', '0', to_date(?, 'yyyy-MM-dd'), ?, ?, '0', ?, ?, '0', '0', ?, '1', ?, ?, ?)";
		template.update(query, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, SALE_ID);
				ps.setDate(2, CURRDATE);
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
		//sits의 개수만큼 돌면서 seat_sale 넣기
		for (int i = 0; i < sits.length; i++) {
			String[] rowCol = sits[i].trim().split("");
			String rowNum = rowCol[0];
			String colNum = rowCol[1];
			String getQuery= "select seat_id from seat where row_num='"+rowNum+"' and col_num='"+colNum+"'";
			SeatDTO sdto = template.queryForObject(getQuery, new BeanPropertyRowMapper<SeatDTO>(SeatDTO.class));
			//sale_seat 에 넣기
			final String seat_ID = sdto.getSeat_ID();
			String setQuery= "INSERT INTO SALE_SEAT VALUES (to_date(?, 'yyyy-MM-dd'), ?, ?, ?)";
			template.update(setQuery, new PreparedStatementSetter() {
				@Override
				public void setValues(PreparedStatement ps) throws SQLException {
					ps.setDate(1, CURRDATE);
					ps.setString(2, SALE_ID);
					ps.setString(3, SCREENING_ID);
					ps.setString(4, seat_ID);
				}
			});
		}
		//member_sale 넣기
		String msQuery= "INSERT INTO member_sale VALUES ('0', ?, ?, to_date(?, 'yyyy-MM-dd'))";
		template.update(msQuery, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, id);
				ps.setString(2, SALE_ID);
				ps.setDate(3, CURRDATE);
			}
		}); 
		//reserve에 넣을 회원의 이름, 전화번호 구해옴.
		String memQuery= "select name, phone_num from member where member_id='"+id+"'";
		final MemberDTO mdto = template.queryForObject(memQuery, new BeanPropertyRowMapper<MemberDTO>(MemberDTO.class));
		
		//reserve 넣기
		String resQuery= "INSERT INTO reserve VALUES (?, ?, ?, '0', ?, to_date(?, 'yyyy-MM-dd'))";
		template.update(resQuery, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, reserve_ID);
				ps.setString(2, mdto.getName());
				ps.setString(3, mdto.getPhone_num());
				ps.setString(4, SALE_ID);
				ps.setDate(5, CURRDATE);
			}
		}); 

//		transactionManager.commit(status);
		
//	} catch (Exception e) {
//		e.printStackTrace();
		
//		transactionManager.rollback(status);
//	}
	}
	
	
	
	public ArrayList<FilmDTO> film_list(){
		String query = "select * from film" ;
		return (ArrayList<FilmDTO>)template.query(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
	}

	
}
