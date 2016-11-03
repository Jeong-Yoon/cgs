package kr.co.cgs4.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.cgs4.dao.MemberDAO;
import kr.co.cgs4.dto.MemberDTO;


@Controller
public class LoginController {
	
	
	 // 로그인 화면
	@RequestMapping("/login")
	public String login(Model model){
	System.out.println("login()");
	return "login";
	}
	
    // 로그아웃
    @RequestMapping("/logout")
    public String logout(HttpServletRequest session) {
        session.setAttribute("userLoginInfo", null);
        return "redirect:index";
    }
	
	//로그인 처리
//	@RequestMapping(value="loginProcess", method = RequestMethod.POST)
//	public ModelAndView loginProcess(Model model, HttpSession session, HttpServletRequest request) {
//		
//	
//	ModelAndView mav = new ModelAndView();
//	mav.setViewName("redirect:login");
//	MemberDTO loginUser = loginBO.findByUserIdAndPassword(user.getUserId(), user.getPassword());
//	if (loginUser != null) {
//	session.setAttribute("userLoginInfo", loginUser);
//	}
//	return mav;
//	    }
    
    @RequestMapping (value ="loginProcess")
    public ModelAndView loginProcess(Model model){
    	
    	MemberDTO dto = new MemberDTO();
    	MemberDAO dao = new MemberDAO();
    	
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("redirect:login");
    	

    	
    	
    	
    	return 0;
	  
  }
    
}
