package kr.co.cgs4.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.command.CinemaCommand;
import kr.co.cgs4.command.ReserveCheckCommand;

@Controller
public class ReserveCheckController {
		
		ReserveCheckCommand command = null;
		
		
		@RequestMapping("/reserve_list")
		public String reserve_list(HttpServletRequest request,Model model) {
		System.out.println("reserve_list()");
		
		model.addAttribute("request", request);
	
		command=new ReserveCheckCommand();
		command.reserveList(model);
		
		return "reserve_list";
		}
		
		
		
		@RequestMapping("/reserve_check")
		public String reserve_check(HttpServletRequest request,Model model) {
		System.out.println("reserve_check()");
		
		model.addAttribute("request", request);
		
		command=new ReserveCheckCommand();
		command.reserveCheck(model);
		command.reserveSeat(model);
	
			
		return "reserve_check";
		}
		
		
	/*	
		@RequestMapping("/cinemas/")
		public String cinemas2(HttpServletRequest request ,Model model) {
		System.out.println("cinemas2()");
		
		System.out.println("Controller sId: "+request.getAttribute("sId"));
		System.out.println(request.getAttribute("sId"));
		
		model.addAttribute("request", request);
		
		command=new CinemaCommand();
		command.execute2(model);
			
		return "cinemas";
		}*/

		
}
