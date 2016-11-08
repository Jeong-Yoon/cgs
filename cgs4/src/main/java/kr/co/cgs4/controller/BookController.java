package kr.co.cgs4.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.dao.BookDAO;
import kr.co.cgs4.dto.Book_BookInfo;
import kr.co.cgs4.dto.Book_BuyConfirm;
import kr.co.cgs4.dto.Book_ScreenNum;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.SaleDTO;
import kr.co.cgs4.dto.SeatDTO;
import kr.co.cgs4.dto.Book_ScreeningInfo;
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
		String site_name=bookinfo.getSite_name();
		String screen_num=bookinfo.getScreen_num();
		ArrayList<SeatDTO> sdto = bdao.seat(site_name, screen_num);
		ArrayList<Book_SeatRow> srdto = bdao.sRow(site_name, screen_num);
		model.addAttribute("seat", sdto);
		model.addAttribute("sRow", srdto);
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
	public String book3(@ModelAttribute("cInfo") Book_BuyConfirm buyConfirm,Model model){
	System.out.println("book3");
	return "book/book3";	
	}
	
	@RequestMapping("/book4")
	public String book4(Book_BookInfo bookinfo, SaleDTO sdto,HttpServletRequest hsr,Model model){
		System.out.println("book4");
		String choosenSits = hsr.getParameter("choosen_sits");
		String[] sits= choosenSits.split(" ");
		BookDAO bdao = new BookDAO();
		//난수로 saleid만들기
		String sale_ID="";
		for (int i = 0; i <8; i++) {
			sale_ID+=(int)(Math.random()*10);
		}
		System.out.println(sale_ID);
		//현재시간 구하기
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yy/MM/dd", Locale.KOREA);
		Date date = new Date();
		String currDate = mSimpleDateFormat.format(date);
		
		//saleDTO 입력값
		String screening_ID = sdto.getScreening_ID();//받아옴
		int sale_price = sdto.getSale_price();//받아옴
		String paycard_num = sdto.getPaycard_num();//받아옴
		int sale_cnt = sdto.getSale_cnt();//받아옴
		int final_price = sdto.getSale_price();//saleprice 같음
		int common_cnt = sdto.getCommon_cnt(); 
		int young_cnt = sdto.getYoung_cnt();//받아옴
		int special_cnt = sdto.getSpecial_cnt();//받아옴
		//나머지는 디폴트 설정
		//sale에 집어넣음
		bdao.saleSubmit(sale_ID, currDate, sale_price, paycard_num, screening_ID, sale_cnt,final_price, common_cnt, young_cnt, special_cnt);
		//sits의 개수만큼 sale_seat에 집어넣음.
		for (int i = 0; i < sits.length; i++) {
			bdao.saleSeat(sits[i], currDate, sale_ID, screening_ID);
		}
		System.out.println("완료");
		return "book/book4";
	}
}
