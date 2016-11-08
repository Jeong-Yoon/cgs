package kr.co.cgs4.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.cgs4.dao.BookDAO;
import kr.co.cgs4.dao.FilmDAO;
import kr.co.cgs4.dto.Book_ScreenNum;
import kr.co.cgs4.dto.Book_ScreeningInfo;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.ScreenDTO;

public class MovieCommand implements Command{

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String film_ID = request.getParameter("film_ID");
		FilmDAO dao = new FilmDAO();
		FilmDTO dto = dao.film(film_ID);
		model.addAttribute("film", dto);
		request.setAttribute("film_name", dto.getFilm_name());
		BookDAO bdao = new BookDAO();
		//리퀘스트 받아온 값이 null이 아닐때만 좌석정보 불러옴.
		if(request.getParameter("film_name")!=null){
			String film_name = request.getParameter("film_name");
			System.out.println(film_name);
			String site_name = request.getParameter("site_name");
			System.out.println(site_name);
			String screening_date = request.getParameter("screening_date");
			ArrayList<Book_ScreeningInfo> bdto = bdao.screening_date(film_name, site_name, screening_date);
			ArrayList<Book_ScreenNum> scdto = bdao.screening_num(film_name, site_name, screening_date);
			model.addAttribute("blist", bdto);
			model.addAttribute("scNum", scdto);
		}
		
	}
}
