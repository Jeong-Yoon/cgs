package kr.co.cgs4.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.command.BookConfirmCommand;
import kr.co.cgs4.command.Command;
import kr.co.cgs4.dao.BookDAO;
import kr.co.cgs4.dao.CinemaDAO;
import kr.co.cgs4.dto.Book_BookInfo;
import kr.co.cgs4.dto.Book_BuyConfirm;
import kr.co.cgs4.dto.Book_ScreenNum;
import kr.co.cgs4.dto.Book_ScreeningInfo;
import kr.co.cgs4.dto.Book_SeatCnt;
import kr.co.cgs4.dto.Book_SeatOccupation;
import kr.co.cgs4.dto.Book_SeatRow;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.SaleDTO;
import kr.co.cgs4.dto.SeatDTO;
import kr.co.cgs4.dto.SiteDTO;

@Controller
public class BookController {
	
	
	
	@RequestMapping("/book1")
	public String book1(Model model, HttpServletRequest hsr, HttpSession session, HttpServletResponse response) throws IOException {
	System.out.println("book1()");
	if(session.getAttribute("id")!=null){
		BookDAO bdao = new BookDAO();
		CinemaDAO cdao = new CinemaDAO();
		ArrayList<SiteDTO> dtos3=cdao.total_site();
		model.addAttribute("t_site", dtos3);
		//리퀘스트 받아온 값이 null이 아닐때만 좌석정보 불러옴.
		if(hsr.getParameter("site_name")!=null){
			String film_name = hsr.getParameter("film_name");
			String site_name = hsr.getParameter("site_name");
			String sScreening_date = hsr.getParameter("screening_date");
			System.out.println(sScreening_date);
			Date screening_date = java.sql.Date.valueOf(sScreening_date);
			
			System.out.println(screening_date);
			List<Book_SeatCnt> sCnt = bdao.saleCnt();
			ArrayList<Book_ScreeningInfo> bdto = bdao.screening_date(film_name, site_name, screening_date);
			ArrayList<Book_ScreenNum> scdto = bdao.screening_num(film_name, site_name, screening_date);
			model.addAttribute("scnt", sCnt);
			model.addAttribute("blist", bdto);
			model.addAttribute("scNum", scdto);
			
		}
		ArrayList<FilmDTO> fdto = bdao.film_list2();
		model.addAttribute("flist", fdto);
		return "book/book1";
	}else{
		response.setContentType("text/html; charset=UTF-8");    	
    	PrintWriter out =response.getWriter();
    	out.println("<script>alert('로그인이 필요합니다.'); location.href='login';</script>");
    	out.close();
		return "index";
	}
	}
	
	@RequestMapping("/book2")
	public String book2(@ModelAttribute("bInfo") Book_BookInfo bookinfo, Model model, HttpSession session, HttpServletResponse response) throws IOException{
		System.out.println("book2");

		if(session.getAttribute("id")==null){
		PrintWriter writer=response.getWriter();
		writer.println("<script>alert('로그인을 확인해주세요.'); location.href='login';</script>");
		}
		
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
	public String book3(@ModelAttribute("cInfo") Book_BuyConfirm buyConfirm,Model model, HttpSession session, HttpServletResponse response) throws IOException{
	System.out.println("book3");
	if(session.getAttribute("id")==null){
	PrintWriter writer=response.getWriter();
	writer.println("<script>alert('로그인을 확인해주세요.'); location.href='login';</script>");
	}
	return "book/book3";	
	}
	

	@RequestMapping("/book4")
	public String book4(@ModelAttribute("bInfo")Book_BookInfo bookinfo, @ModelAttribute("sdto") SaleDTO sdto,HttpServletRequest hsr, HttpSession session, HttpServletResponse response,Model model) throws IOException{
		System.out.println("book4");
		if(session.getAttribute("id")==null){
			PrintWriter writer=response.getWriter();
			writer.println("<script>alert('로그인을 확인해주세요.'); location.href='login';</script>");
			}
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
