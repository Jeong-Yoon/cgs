package kr.co.cgs4.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.dao.EmptyResultDataAccessException;
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
    @RequestMapping(value = "logout")
    public String logout(HttpServletRequest session) {
        session.setAttribute("member_list", null);
        return "redirect:login";
    }
	
    //로그인 프로세스
    @RequestMapping (value ="loginProcess")
    public String loginProcess(Model model ,HttpServletRequest request, HttpServletResponse response) throws IOException {
    	String getid = request.getParameter("user-email");
    	String getpw = request.getParameter("user-password");
    	
    	
    	//입력받은 아이디와 비밀번호 받기! //session으로

    	
    	//데이터 가져오기
    	MemberDAO dao = new MemberDAO();   	
    	//id에 해당하는 사람의 정보 전부를 가져온다
    	try{
    	MemberDTO dtos = dao.member_list(getid, getpw);
    	if(dtos!=null){
    		request.setAttribute("id", getid);
    		request.setAttribute("pw", getpw);
    		model.addAttribute("member_list", dtos);
    	System.out.println("데이터 있음");
    	return "contact";
    	}else{
    		//널값이면 어차피 catch로 가서 여기로 올경우는 없음
    		System.out.println("데이터 없음1");
        	//자바에서 경고창띄우는부분
        	response.setContentType("text/html; charset=UTF-8");    	
        	PrintWriter out =response.getWriter();
        	out.println("<script>alert('로그인에 실패했습니다.'); history.go(-1);</script>");
        	out.close();
    	    return "redirect:login";
    	}
    	}catch (EmptyResultDataAccessException  e) {
    		System.out.println("데이터 없음2");
        	//자바에서 경고창띄우는부분
        	response.setContentType("text/html; charset=UTF-8");    	
        	PrintWriter out =response.getWriter();
        	out.println("<script>alert('아이디나 비밀번호가 틀렸거나 존재하지 않는 아이디입니다.'); history.go(-1);</script>");
        	out.close();
        	//어차피 위에서 history.go(-1)때문에 return으로안감
    		return "redirect:login";
		}
    	

  }   
}
