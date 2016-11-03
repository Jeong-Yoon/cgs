package kr.co.cgs4.dao;


import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import kr.co.cgs4.dto.EmployeeDTO;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.ScreenDTO;
import kr.co.cgs4.util.Constant;

public class TestDAO {
	JdbcTemplate template =null;
	
	public TestDAO(){
		this.template = Constant.template;
	}
	
	public ScreenDTO screen(){
		String query = "select * from screen";
		return (ScreenDTO) template.queryForObject(query, new BeanPropertyRowMapper<ScreenDTO>(ScreenDTO.class));
	}

	public FilmDTO film(){
		String query = "select * from film";
		return (FilmDTO) template.queryForObject(query, new BeanPropertyRowMapper<FilmDTO>(FilmDTO.class));
	}

//	public ArrayList<BDto> list() {
//		String query = "select bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent from mvc_board order by bGroup desc, bStep asc";
//		return (ArrayList<BDto>)template.query(query, new BeanPropertyRowMapper<BDto>(BDto.class));	
//	}

}
