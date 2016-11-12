package kr.co.cgs4.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.dao.MemberDAO;
import kr.co.cgs4.dto.MemberDTO;

@Controller
public class FindController {

	@RequestMapping("/find_id")
	public String find_id(Model model) {
		System.out.println("find_id()");
		return "find_id";
	}

	@RequestMapping("/find_pw")
	public String find_pw(Model model) {
		System.out.println("find_pw()");
		return "find_pw";
	}

	@RequestMapping(value = "findIDProcess")
	public String findIDProcess(Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws IOException, ParseException {

		String name = request.getParameter("user-name");
		String birth = request.getParameter("user-birth");
		String gender = request.getParameter("gender");

		// 핸드폰번호
		String getUserPnum1 = request.getParameter("user-pnum");
		String getUserPnum2 = request.getParameter("user-pnum2");
		String getUserPnum3 = request.getParameter("user-pnum3");
		String Pnum = getUserPnum1 + getUserPnum2 + getUserPnum3;

		MemberDAO dao = new MemberDAO();

		try {
			MemberDTO dtos = dao.findID(name, birth, gender, Pnum);
			if (dtos != null) {
				String id=dtos.getMember_ID();
				
				
				model.addAttribute("id", id);
			
			
				return "show_id";
			} else {
				// 널값이면 어차피 catch로 가서 여기로 올경우는 없음
				System.out.println("일치데이터없음");
				// 자바에서 경고창띄우는부분
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('입력하신 정보와 일치하는 회원이 없습니다.'); history.go(-1);</script>");
				out.close();
				return "redirect:login";

			}

		} catch (EmptyResultDataAccessException e) {
			//dao.finid의 리턴값이 널값이면 일로옴
			System.out.println("입력이 올바르지않음");
			// 자바에서 경고창띄우는부분
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('입력하신 정보와 일치하는 회원이 없습니다.'); history.go(-1);</script>");
			out.close();
			// 어차피 위에서 history.go(-1)때문에 return으로안감
			return "redirect:login";
		}
		

	}
	
	@RequestMapping(value = "findPWProcess")
	public String findPWProcess(Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws IOException {
		
		String id = request.getParameter("user-id");
		
		String name = request.getParameter("user-name");

		// 핸드폰번호
		String getUserPnum1 = request.getParameter("user-pnum");
		String getUserPnum2 = request.getParameter("user-pnum2");
		String getUserPnum3 = request.getParameter("user-pnum3");
		String Pnum = getUserPnum1 + getUserPnum2 + getUserPnum3;
		
		String email  = request.getParameter("user-email");
		
		
		MemberDAO dao = new MemberDAO();

		try {
			MemberDTO dtos = dao.findPW(id, name, Pnum, email);
			if (dtos != null) {
				String pw=dtos.getPassword();
				
				
				model.addAttribute("pw", pw);
			
			
				return "show_pw";
			} else {
				// 널값이면 어차피 catch로 가서 여기로 올경우는 없음
				System.out.println("일치데이터없음");
				// 자바에서 경고창띄우는부분
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('입력하신 정보와 일치하는 회원이 없습니다.'); history.go(-1);</script>");
				out.close();
				return "redirect:login";

			}

		} catch (EmptyResultDataAccessException e) {
			//dao.finid의 리턴값이 널값이면 일로옴
			System.out.println("입력이 올바르지않음");
			// 자바에서 경고창띄우는부분
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('입력하신 정보와 일치하는 회원이 없습니다.'); history.go(-1);</script>");
			out.close();
			// 어차피 위에서 history.go(-1)때문에 return으로안감
			return "redirect:login";
		}
		

	}

}
