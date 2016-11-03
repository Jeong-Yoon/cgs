package kr.co.cgs4.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.util.BookInfo;

@Controller
public class BookController {
	@RequestMapping("/book1")
	public String book1(Model model) {
	System.out.println("book1()");
	return "book/book1";
	}

	@RequestMapping("/book2")
	public String book2(HttpServletRequest hsr, Model model) {
	System.out.println("book2()");
	BookInfo bInfo = new BookInfo();
	bInfo.setFilm_name(hsr.getParameter("choosed_film_name"));
	bInfo.setSite_name(hsr.getParameter("choosed_city_name"));
	bInfo.setScreening_date(hsr.getParameter("choosed_date_name"));
	bInfo.setScreen_num(hsr.getParameter("choosed_cinema_name"));
	bInfo.setStart_time(hsr.getParameter("choosed_time_name"));
	System.out.println(hsr.getParameter("choosed_film_name"));
	System.out.println(hsr.getParameter("choosed_city_name"));
	model.addAttribute("bInfo", bInfo);
	return "book/book2";
	}
}
