package kr.co.cgs4.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.cgs4.dto.FilmDTO;

public class BContentCommand implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String film_ID = request.getParameter("film_ID");
		
		BDao dao = new BDao();
		FilmDTO fdto = dao.film(film_ID);
		
		model.addAttribute("film", fdto);
		
	}

}
