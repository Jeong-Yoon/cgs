package kr.co.cgs4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.command.CinemaCommand;

@Controller
public class ReserveCheckController {
		
		CinemaCommand command = null;
		
		
		@RequestMapping("/reserve_list")
		public String reserve_list(Model model) {
		System.out.println("reserve_list()");
		
		command=new CinemaCommand();
		command.execute1(model);
			
		return "reserve_list";
		}
		
		
		
		@RequestMapping("/reserve_check")
		public String reserve_check(Model model) {
		System.out.println("reserve_check()");
		
/*		command=new CinemaCommand();
		command.execute1(model);*/
			
		return "reserve_check";
		}
		
	

		
}
