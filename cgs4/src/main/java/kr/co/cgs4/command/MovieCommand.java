package kr.co.cgs4.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.cgs4.dao.FilmDAO;
import kr.co.cgs4.dto.FilmDTO;
import kr.co.cgs4.dto.ScreenDTO;

public class MovieCommand implements Command{

	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String film_ID = request.getParameter("film_ID");
		String site_ID = request.getParameter("site_ID");
		System.out.println(film_ID);
//		System.out.println(site_ID);
		FilmDAO dao = new FilmDAO();
		FilmDTO dto = dao.film(film_ID);
		ArrayList<ScreenDTO> sdto = dao.screen(site_ID);
		model.addAttribute("film", dto);
		System.out.println(dto);
		model.addAttribute("screen", sdto);
	}
}
