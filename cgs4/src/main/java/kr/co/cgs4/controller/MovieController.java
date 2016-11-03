package kr.co.cgs4.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.dao.FilmDAO;
import kr.co.cgs4.dao.TestDAO;
import kr.co.cgs4.dto.FilmDTO;

@Controller
public class MovieController {

	@RequestMapping("/movie")
	public String movie(HttpServletRequest request, Model model){
		System.out.println("movie()");
//		FilmDAO dao = new FilmDAO();
//		FilmDTO fdto = dao.film();
//		model.addAttribute("test", fdto);
		return "movie";
	}
	
	@RequestMapping("/movie_list")
	public String movie_list(Model model, HttpSession session){
		System.out.println("movie_list()");
		FilmDAO dao = new FilmDAO();
		ArrayList<FilmDTO> afdto = dao.film_list();
		model.addAttribute("test", afdto);
		session.setAttribute("afdto", afdto);
		return "movie_list";
	}
}