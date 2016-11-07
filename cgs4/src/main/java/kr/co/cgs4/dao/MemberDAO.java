package kr.co.cgs4.dao;

import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.xml.ws.Response;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

import kr.co.cgs4.dto.MemberDTO;
import kr.co.cgs4.util.Constant;

public class MemberDAO {
	JdbcTemplate template ;

	public MemberDAO() {
		this.template = Constant.template;
	}

	public MemberDTO member() {
		String query = "select * from member;";
		return (MemberDTO) template.queryForObject(query, new BeanPropertyRowMapper<MemberDTO>(MemberDTO.class));
	}

	public MemberDTO member_list(String id, String pw) {
		String query = "select * from member where MEMBER_ID = '" + id + "' and PASSWORD = '" + pw + "'";
			return (MemberDTO) template.queryForObject(query, new BeanPropertyRowMapper<MemberDTO>(MemberDTO.class));
		
	}

	public void signup(final String id, final String pw, final String name, final String address, final String birth, final String phone, final String e_mail){
		//나중에 email 이후 값은 지우고 db구축할것
		  String insert = "insert into member(member_ID, password, name, address, birth, phone_num, email,gender,homepage_ID,join_date,accum_point,member_grade,membership,curr_point) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		  this.template.update(insert, new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, id);
				ps.setString(2, pw);
				ps.setString(3, name);
				ps.setString(4, address);
				ps.setString(5, birth);
				ps.setString(6, phone);
				ps.setString(7, e_mail);
				
				//이후로 나중에 실구현때 지움
				//젠더,가입일은 데이터확인후 꼭 코딩할것
				
				//젠더
				ps.setInt(8, 0);
				//홈페이지아이디
				ps.setString(9, id);
				
				//가입일
				ps.setString(10, "2016-11-07");
				//누적포인트
				ps.setInt(11, 300);
				//멤버등급
				ps.setInt(12, 0);
				//맴버십카드번호
				ps.setString(13, "0000000000000002");
				//현재포인트
				ps.setInt(14, 100);
				
				
				
			}
		});
		
	}
	
	
}
