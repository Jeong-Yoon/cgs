package kr.co.cgs4.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import kr.co.cgs4.dao.CinemaDAO;
import kr.co.cgs4.dto.ScreeningDTO;
import kr.co.cgs4.dto.SiteDTO;

public class CinemaCommand implements Command{

	@Override
	public void execute(Model model){
		
		CinemaDAO dao=new CinemaDAO();
		ArrayList<ScreeningDTO> dtos1=dao.screening();
		model.addAttribute("screening", dtos1);
		
		ArrayList<SiteDTO> dtos2=dao.site();
		model.addAttribute("site", dtos2);
		
		
	}
	
	
	
	
}
