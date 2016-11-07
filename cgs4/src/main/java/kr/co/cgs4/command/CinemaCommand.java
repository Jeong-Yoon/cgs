package kr.co.cgs4.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.cgs4.dao.CinemaDAO;
import kr.co.cgs4.dto.ScreeningDTO;
import kr.co.cgs4.dto.SiteDTO;

public class CinemaCommand {
	
	public void execute1(Model model){
		
		CinemaDAO dao=new CinemaDAO();
		ArrayList<ScreeningDTO> dtos1=dao.screening();
		model.addAttribute("screening", dtos1);
		
		ArrayList<SiteDTO> dtos2=dao.site();
		model.addAttribute("site", dtos2);
		
		ArrayList<SiteDTO> dtos3=dao.total_site();
		model.addAttribute("t_site", dtos3);
		
		
	}

	public void execute2(Model model){
		
		Map<String,Object>map=model.asMap();
		
		HttpServletRequest request=(HttpServletRequest)map.get("request");
		
		String sId=request.getParameter("sId");
		
		System.out.println("siteId="+sId);
		
		
		CinemaDAO dao=new CinemaDAO();
		ArrayList<ScreeningDTO> dtos1=dao.screening_2(sId);
		model.addAttribute("screening", dtos1);
		
		ArrayList<SiteDTO> dtos2=dao.site_2(sId);
		model.addAttribute("site", dtos2);
		

		ArrayList<SiteDTO> dtos3=dao.total_site();
		model.addAttribute("t_site", dtos3);
		
		
	}

	

}
