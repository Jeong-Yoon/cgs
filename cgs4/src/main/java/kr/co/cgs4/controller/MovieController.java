package kr.co.cgs4.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.util.Constant;

import kr.co.cgs4.command.Command;
import kr.co.cgs4.command.FilmListCommand;
import kr.co.cgs4.command.MovieCommand;

@Controller
public class MovieController {
	
	Command command=null;
	
	private JdbcTemplate template;
	
	@Autowired
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		Constant.template = this.template;
	}
	
	@RequestMapping("/movie")
	public String movie(HttpServletRequest request, Model model){
		System.out.println("movie()");
		model.addAttribute("request", request);
		command = new MovieCommand();
		command.execute(model);
		return "movie";
	}
	
	@RequestMapping("/movie_list")
	public String movie_list(HttpServletRequest request, Model model){
		System.out.println("movie_list()");
		model.addAttribute("request", request);
		command = new FilmListCommand();
		command.execute(model);
		return "movie_list";
	}
}