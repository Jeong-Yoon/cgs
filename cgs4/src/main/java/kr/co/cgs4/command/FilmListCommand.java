package kr.co.cgs4.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

import kr.co.cgs4.dao.FilmDAO;
import kr.co.cgs4.dto.FilmDTO;

public class FilmListCommand implements Command {

	@Override
	public void execute(Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int page = Integer.parseInt(request.getParameter("page")); 
		if (request.getParameter("page") != null) {
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
//		if(dtos.size()>0){
//			request.setAttribute("pagenum", page);
//			model.addAttribute("film_list", dtos);
//			System.out.println("dtos");
//		}else{
////			response.setContentType("text/html; charset=UTF-8");    	
////        	PrintWriter out =response.getWriter();
////        	out.println("<script>alert('로그인에 실패했습니다.'); history.go(-1);</script>");
////        	out.close();
//			System.out.println("dtos22");
//			page--;
//			dtos = dao.film_list(page);
//		}
		if(dtos.size()==0){
			page--;
			dtos = dao.film_list(page);
		}
		
		request.setAttribute("pagenum", page);
		model.addAttribute("film_list", dtos);
		
	}

}
