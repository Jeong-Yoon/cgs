package kr.co.cgs4.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

import kr.co.cgs4.dto.ReserveCheckDTO;
import kr.co.cgs4.dto.ReserveListDTO;
import kr.co.cgs4.dto.ReserveSeatDTO;
import kr.co.cgs4.util.Constant;

public class ReserveCheckDAO {

	
	 JdbcTemplate template =null;
	 
	 public ReserveCheckDAO() {
			this.template = Constant.template;
		}
	 
	
	 public ArrayList<ReserveListDTO> reserveList(String mId) {
			
			String query = "select m5.screening_date,f.film_name,m5.reserve_id,m5.site_name,m5.start_time,m5.sale_cnt "
+" from(select m4.*,s2.SITE_NAME from(select m3.*,s1.SCREENING_DATE,s1.START_TIME,s1.SITE_ID,s1.FILM_ID from(select m2.*,r.RESERVE_ID from(select m.MEMBER_ID,s.SALE_ID,s.SALE_CNT,s.SCREENING_ID from MEMBER_SALE m join sale s on m.SALE_ID=s.SALE_ID ) m2 join reserve r on m2.SALE_ID=r.SALE_ID ) m3 join screening s1 on m3.screening_id=s1.SCREENING_ID ) m4 join site s2 on m4.SITE_ID=s2.SITE_ID ) m5 join film f on m5.film_id=f.FILM_ID"
+" where m5.member_id='"+mId+"'";
			return (ArrayList<ReserveListDTO>) template.query(query,new BeanPropertyRowMapper<ReserveListDTO>(ReserveListDTO.class));
		}
	 
	 public ReserveCheckDTO reserveCheck(String rId) {
			
			String query = "select r3.sale_ID,r3.reserve_ID,r3.sale_date,r3.sale_type,r3.final_price,r3.sale_cnt,r3.screen_num,r3.screening_date,r3.film_name,r3.start_time,s2.site_name"
+" from (select r2.*,f.FILM_NAME from (select r1.*,s1.SCREEN_NUM,s1.SCREENING_DATE,s1.FILM_ID,s1.SITE_ID,s1.START_TIME from (select r.RESERVE_ID,r.SALE_DATE,s.SCREENING_ID,s.SALE_TYPE,s.FINAL_PRICE,s.SALE_CNT,s.SALE_ID from reserve r join sale s on r.SALE_ID=s.SALE_ID) r1 join screening s1 on r1.SCREENING_ID=s1.SCREENING_ID) r2 join FILM f on r2.FILM_ID=f.FILM_ID) r3 join site s2 on r3.site_ID=s2.SITE_ID"
+" where reserve_id='"+rId+"'";
			return template.queryForObject(query,new BeanPropertyRowMapper<ReserveCheckDTO>(ReserveCheckDTO.class));
		}
	 
	 
	 public ArrayList<ReserveSeatDTO> reserveSeat(String rId) {
			
			String query = "select r1.RESERVE_ID,s1.ROW_NUM,s1.COL_NUM"
+" from(select r.RESERVE_ID,s.SEAT_ID from reserve r join sale_seat s on r.SALE_ID=s.SALE_ID) r1 join seat s1 on r1.SEAT_ID=s1.SEAT_ID"
+" where reserve_id="+rId;
			return (ArrayList<ReserveSeatDTO>) template.query(query,new BeanPropertyRowMapper<ReserveSeatDTO>(ReserveSeatDTO.class));
		}
	 
	 
/*	 
	 public void deleteReserve(final String sId) {
			// TODO Auto-generated method stub
			String query = "delete from reserve where sale_ID = ?";
			
			this.template.update(query, new PreparedStatementSetter() {
				
		
				public void setValues(PreparedStatement ps) throws SQLException {
					ps.setInt(1, Integer.parseInt(sId));
				}
			});
			
		}
	 
	 
	 public void deleteSale(final String sId) {
			// TODO Auto-generated method stub
			String query = "delete from sale where sale_ID = ?";
			
			this.template.update(query, new PreparedStatementSetter() {
				
		
				public void setValues(PreparedStatement ps) throws SQLException {
					ps.setString(1, sId);
				}
			});
			
		}
	 
	 
	 public void deleteSaleSeat(final String sId) {
			// TODO Auto-generated method stub
			String query = "delete from sale_seat where sale_ID = ?";
			
			this.template.update(query, new PreparedStatementSetter() {
				
		
				public void setValues(PreparedStatement ps) throws SQLException {
					ps.setString(1, sId);
				}
			});
			
		}
	 */
	 
	 public void deleteMemberSale(final String sId) {
			// TODO Auto-generated method stub
			String query = "delete from member_sale where sale_ID = ?";
			
			this.template.update(query, new PreparedStatementSetter() {
				
		
				public void setValues(PreparedStatement ps) throws SQLException {
					ps.setString(1, sId);
				}
			});
			
		}
	 
	 
}
