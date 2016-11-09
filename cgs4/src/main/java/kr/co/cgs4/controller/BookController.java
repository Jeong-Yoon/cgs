package kr.co.cgs4.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.command.BookConfirmCommand;
import kr.co.cgs4.command.Command;
import kr.co.cgs4.dao.BookDAO;
import kr.co.cgs4.dto.Book_BookInfo;
import kr.co.cgs4.dto.Book_BuyConfirm;
import kr.co.cgs4.dto.Book_ScreenNum;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.SaleDTO;
import kr.co.cgs4.dto.Sale_SeatDTO;
import kr.co.cgs4.dto.SeatDTO;
import kr.co.cgs4.dto.Book_ScreeningInfo;
import kr.co.cgs4.dto.Book_SeatOccupation;
import kr.co.cgs4.dto.Book_SeatRow;

@Controller
public class BookController {
	
	
	
	@RequestMapping("/book1")
	public String book1(Model model, HttpServletRequest hsr) {
	System.out.println("book1()");
	BookDAO bdao = new BookDAO();
	//리퀘스트 받아온 값이 null이 아닐때만 좌석정보 불러옴.
	if(hsr.getParameter("film_name")!=null){
		String film_name = hsr.getParameter("film_name");
		String site_name = hsr.getParameter("site_name");
		String screening_date = hsr.getParameter("screening_date");
		ArrayList<Book_ScreeningInfo> bdto = bdao.screening_date(film_name, site_name, screening_date);
		ArrayList<Book_ScreenNum> scdto = bdao.screening_num(film_name, site_name, screening_date);
		model.addAttribute("blist", bdto);
		model.addAttribute("scNum", scdto);
	}
	ArrayList<FilmDTO> fdto = bdao.film_list();
	model.addAttribute("flist", fdto);
	return "book/book1";
	}
	
	@RequestMapping("/book2")
	public String book2(@ModelAttribute("bInfo") Book_BookInfo bookinfo, Model model){
		System.out.println("book2");
		BookDAO bdao = new BookDAO();
		String screening_id = bookinfo.getScreening_ID();
		String site_name=bookinfo.getSite_name();
		String screen_num=bookinfo.getScreen_num();
		ArrayList<SeatDTO> sdto = bdao.seat(site_name, screen_num);
		ArrayList<Book_SeatRow> srdto = bdao.sRow(site_name, screen_num);
		ArrayList<Book_SeatOccupation> ssdto = bdao.saleSeat(screening_id);
		model.addAttribute("seat", sdto);
		model.addAttribute("sRow", srdto);
		model.addAttribute("sSeat", ssdto);
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
	
	@RequestMapping("/book3")
	public String book3(@ModelAttribute("cInfo") Book_BuyConfirm buyConfirm,Model model, HttpSession session){
	System.out.println("book3");
	System.out.println(session.getAttribute("id"));
	return "book/book3";	
	}
	

	@RequestMapping("/book4")
	public String book4(@ModelAttribute("bInfo")Book_BookInfo bookinfo, @ModelAttribute("sdto") SaleDTO sdto,HttpServletRequest hsr, HttpSession session,Model model){
		System.out.println("book4");
		System.out.println(session.getAttribute("id"));
		model.addAttribute("request", hsr);
		 model.addAttribute("saleDTO", sdto);
		 model.addAttribute("bookinfo", bookinfo);
		 model.addAttribute("session", session);
		 Command command = new BookConfirmCommand();
		 command.execute(model);
		
		System.out.println("완료");
		return "book/book4";
	}

}
