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
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int page;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
			if(page < 0){
				page=0;
			}
			System.out.println(page);
		} else {
			page = 0;
		}
		FilmDAO dao = new FilmDAO();
		ArrayList<FilmDTO> dtos = dao.film_list(page);
		System.out.println(dtos);
//		if(dtos!=null){
			request.setAttribute("pagenum", page);
			model.addAttribute("film_list", dtos);
			System.out.println("dtos");
//		}else{
//			System.out.println("dtos");
//			page--;
//			dtos = dao.film_list(page);
//			request.setAttribute("pagenum", page);
//			model.addAttribute("film_list", dtos);
//		}
		
	}

}
