package kr.co.cgs4.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.command.CinemaCommand;

@Controller
public class CinemaController {
	
	CinemaCommand command = null;
	
	@RequestMapping("/cinemas")
	public String cinemas1(Model model) {
	System.out.println("cinemas()");
	
	command=new CinemaCommand();
	command.execute1(model);
		
	return "cinemas";
	}
	
	@RequestMapping("/cinemas/")
	public String cinemas2(HttpServletRequest request ,Model model) {
	System.out.println("cinemas2()");
	
	System.out.println("Controller sId: "+request.getAttribute("sId"));
	System.out.println(request.getAttribute("sId"));
	
	model.addAttribute("request", request);
	
	command=new CinemaCommand();
	command.execute2(model);
		
	return "cinemas";
	}

	
}