package kr.co.cgs4.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestAttributes;
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
    public void loginProcess(Model model ,HttpServletRequest request){
    	//입력받은 아이디와 비밀번호 받기!
    	String id = request.getParameter("user-email");
    	String pw = request.getParameter("user-password");
    	
    	
    	
    	
    	System.out.println("controller_loginProcess()");
    	MemberDAO dao = new MemberDAO();
    	ArrayList<MemberDTO> dtos = dao.member_list();
    	model.addAttribute("member_list",dtos);
    	
    	
    	
//    	
//    	$('.login').submit(function(e) {
//    	      
//    	      e.preventDefault();   
//    	      var error = 0;
//    	      var self = $(this);
//    	      
//    	       var $email = self.find('[type=text]');
//    	       var $pass = self.find('[type=password]');
//    	      
//    	            
//    	      var emailRegex = /^[a-zA-Z0-9._-]/;
//    	      
//    	        if(!emailRegex.test($email.val())) {
//    	         createErrTult("존재하지 않는 아이디입니다. ", $email)
//    	         error++;   
//    	      }
//
//    	      if( $pass.val().length>1 &&  $pass.val()!= $pass.attr('placeholder')  ) {
//    	         $pass.removeClass('invalid_field');         
//    	      } 
//    	      else {
//    	         createErrTult('아이디나 비밀번호가 틀렸습니다.', $pass)
//    	         error++;
//    	      }
//    	      
//    	      
//    	      
//    	      if (error!=0)return;
//    	      self.find('[type=submit]').attr('disabled', 'disabled');
//
//    	      self.children().fadeOut(300,function(){ $(this).remove() })
//    	      $('<p class="login__title">sign in <br><span class="login-edition">welcome to A.Movie</span></p><p class="success">You have successfully<br> signed in!</p>').appendTo(self)
//    	      .hide().delay(300).fadeIn();
//
//
//    	      // var formInput = self.serialize();
//    	      // $.post(self.attr('action'),formInput, function(data){}); // end post
//    	}); // end submit
//    	
//    	
    	 
  }
    
}
