package kr.co.cgs4.controller;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.command.CinemaCommand;
import kr.co.cgs4.command.Command;
import kr.co.cgs4.dao.CinemaDAO;
import kr.co.cgs4.dao.TestDAO;
import kr.co.cgs4.dto.ScreenDTO;
import kr.co.cgs4.dto.ScreeningDTO;
import kr.co.cgs4.dto.SiteDTO;

@Controller
public class CinemaController {
	
	Command command = null;
	
	@RequestMapping("/cinemas")
	public String book1(Model model) {
	System.out.println("cinemas()");
	
	command=new CinemaCommand();
	command.execute(model);
	
//	CinemaDAO dao=new CinemaDAO();
//	ScreeningDTO dto1=dao.screening();
//	model.addAttribute("screening", dto1);
//	
//	SiteDTO dto2=dao.site();
//	model.addAttribute("site", dto2);
	
		
	return "cinemas";
	}

	
}