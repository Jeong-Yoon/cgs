package kr.co.cgs4.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		
		@RequestMapping(value="reserve_cancel")
		public void reserve_cancel(HttpServletResponse response,HttpServletRequest request,Model model) throws IOException{
		System.out.println("reserve_cancel()");
		
		model.addAttribute("request", request);
		command=new ReserveCheckCommand();
		command.reserveDelete(model);
		
/*		command=new ReserveCheckCommand();
		command.reserveCheck(model);
		command.reserveSeat(model);*/
		
		
		response.setContentType("text/html; charset=UTF-8");    	
    	PrintWriter out =response.getWriter();
    	out.println("<script>alert('예매취소 되었습니다.'); document.location.href='movie_list?page=0';</script>");

    	
		
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
