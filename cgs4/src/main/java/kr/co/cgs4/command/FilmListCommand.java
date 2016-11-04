package kr.co.cgs4.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.cgs4.dao.FilmDAO;
import kr.co.cgs4.dto.FilmDTO;

public class FilmListCommand implements Command {

	@Override
	public void execute(Model model) {
		FilmDAO dao = new FilmDAO();
		ArrayList<FilmDTO> dtos = dao.film_list();
		model.addAttribute("film_list", dtos);
	}

}
