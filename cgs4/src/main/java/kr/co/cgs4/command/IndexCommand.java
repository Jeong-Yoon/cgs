package kr.co.cgs4.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.cgs4.dao.FilmDAO;
import kr.co.cgs4.dto.FilmDTO;

public class IndexCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		FilmDAO dao = new FilmDAO();
		ArrayList<FilmDTO> dtos = dao.index_list();
		model.addAttribute("index_list", dtos);
		ArrayList<FilmDTO> cdtos  = dao.coming_list();
		model.addAttribute("coming", cdtos);
		
	}
}
