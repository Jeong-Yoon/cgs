package kr.co.cgs4.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.HomeController;
import kr.co.cgs4.dao.FilmDAO;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.util.BookInfo;

@Controller
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	
	@RequestMapping("/book1")
	public String book1(Model model) {
		logger.info("Welcome home! The client locale is {}.");
		
	System.out.println("book1()");
	FilmDAO fDao = new FilmDAO();
	return "book/book1";
	}
//	System.out.println("list()");
//	FilmDAO dao = new FilmDAO();
//	ArrayList<FilmDTO> dtos = dao.film_list();
//	model.addAttribute("list", dtos);
//	return "list";
	@RequestMapping("/book2")
	public String book2(@ModelAttribute("bInfo") BookInfo bookinfo){	
	return "book/book2";
	}
	//서블릿 리퀘스트 써서 하나하나 받는 법.
//	public String book2(HttpServletRequest hsr, Model model) {
//	System.out.println("book2()");
//	BookInfo bInfo = new BookInfo();
//	bInfo.setFilm_name(hsr.getParameter("film_name"));
//	bInfo.setSite_name(hsr.getParameter("site_name"));
//	bInfo.setScreening_date(hsr.getParameter("screening_date"));
//	bInfo.setScreen_num(hsr.getParameter("screen_num"));
//	bInfo.setStart_time(hsr.getParameter("start_time"));
//	System.out.println(hsr.getParameter("film_name"));
//	System.out.println(hsr.getParameter("site_name"));
//	model.addAttribute("bInfo", bInfo);
	
	
}
