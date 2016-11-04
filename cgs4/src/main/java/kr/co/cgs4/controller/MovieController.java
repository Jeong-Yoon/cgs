package kr.co.cgs4.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.cgs4.command.Command;
import kr.co.cgs4.command.FilmCommand;
import kr.co.cgs4.dto.FilmDTO;

@Controller
public class MovieController {
	
	Command command = null;
	
	@RequestMapping("/movie")
	public String movie(HttpServletRequest request, Model model){
		System.out.println("movie()");
//		FilmDAO dao = new FilmDAO();
//		FilmDTO fdto = dao.film();
//		model.addAttribute("test", fdto);
		return "movie";
	}
	
	@RequestMapping("/movie_list")
	public String movie_list(Model model){
		System.out.println("movie_list()");
//		model.addAttribute("request", request);
		command = new FilmCommand();
		command.execute(model);
		return "movie_list";
	}
}