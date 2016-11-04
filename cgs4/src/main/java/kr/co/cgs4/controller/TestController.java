package kr.co.cgs4.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.dao.FilmDAO;
import kr.co.cgs4.dao.TestDAO;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.ScreenDTO;
import kr.co.cgs4.util.Constant;

@Controller
public class TestController {
	
	public JdbcTemplate template;
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}
	
	@RequestMapping("/test")
	public String screen(Model model){
		System.out.println("test");
		TestDAO dao = new TestDAO();
		ScreenDTO dto = dao.screen();
		model.addAttribute("test", dto);
		return "test";
	}
	@RequestMapping("/list")
	public String list(Model model) {
		System.out.println("list()");
		FilmDAO dao = new FilmDAO();
		ArrayList<FilmDTO> dtos = dao.film_list();
		model.addAttribute("film_list", dtos);
		return "list";
	}
	

	
//	BDao dao = new BDao();
//	ArrayList<BDto> dtos = dao.list();
//	model.addAttribute("list", dtos);

}
