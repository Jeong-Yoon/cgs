package kr.co.cgs4.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ModifyController {
	
	//회원정보 수정
	@RequestMapping("/modify")
	public String login(Model model){
	System.out.println("modify()");
	return "modify";
	}
	
	@RequestMapping(value="modifyProcess")
	public String modifyProcess(Model model ,HttpServletRequest request, HttpServletResponse response, HttpSession session){
		
		
		
		
		
		
		
		return "redirect:index";
		
		
	}
	
	
	

}
