package kr.co.cgs4.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.dao.TestDAO;
import kr.co.cgs4.dto.FilmDTO;

@Controller
public class MovieController {

	@RequestMapping("/movie")
	public String movie(HttpServletRequest request, Model model){
		System.out.println("movie()");
		TestDAO dao = new TestDAO();
		FilmDTO fdto = dao.film();
		model.addAttribute("test", fdto);
		return "movie";
	}
	
	@RequestMapping("/movie_list")
	public String movie_list(Model model){
		System.out.println("movie_list()");
		TestDAO dao = new TestDAO();
		FilmDTO fdto = dao.film();
		model.addAttribute("test", fdto);
		return "movie_list";
	}
}
