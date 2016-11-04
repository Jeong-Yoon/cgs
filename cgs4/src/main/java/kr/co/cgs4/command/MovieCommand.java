package kr.co.cgs4.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.cgs4.dao.FilmDAO;
import kr.co.cgs4.dto.FilmDTO;

public class MovieCommand implements Command{

	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String film_ID = request.getParameter("film_ID");
		System.out.println(film_ID);
		FilmDAO dao = new FilmDAO();
		FilmDTO dto = dao.film(film_ID);
		
		model.addAttribute("film", dto);
	}
}
