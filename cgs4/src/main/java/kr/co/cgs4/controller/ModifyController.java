package kr.co.cgs4.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.cgs4.dao.MemberDAO;

@Controller
public class ModifyController {

	@RequestMapping("/modify")
	public String modify(Model model) {
		System.out.println("modify()");
		return "modify";
	}

	@RequestMapping("/modify_pw")
	public String modify_fw(Model model) {
		System.out.println("modify_pw()");
		return "modify_pw";
	}

	@RequestMapping(value = "modifyProcess")
	public String modifyProcess(Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws IOException {

		String getPNum = request.getParameter("user-pnum");
		String getEmail = request.getParameter("user-email");
		String getAddress = request.getParameter("user-address");
		String id = (String) session.getAttribute("id");
		String pw = (String) session.getAttribute("pw");

		try {
			// 데이터 가져오기
			MemberDAO dao = new MemberDAO();

			dao.modify(id, pw, getPNum, getEmail, getAddress);

			session.setAttribute("phone_num", getPNum);
			session.setAttribute("email", getEmail);
			session.setAttribute("address", getAddress);

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원 정보 수정이 완료되었습니다'); document.location.href='modify'; </script>");
			out.close();
			return "index";

		} catch (EmptyResultDataAccessException e) {
			System.out.println("입력이 올바르지않음");
			// 자바에서 경고창띄우는부분
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('항목을 제대로 입력해주세요!'); history.go(-1);</script>");
			out.close();
			// 어차피 위에서 history.go(-1)때문에 return으로안감
			return "redirect:index";
		}

	}

	@RequestMapping(value = "modifyPassword")
	public String modifyPassword(Model model, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws IOException {

		String getPw = (String) session.getAttribute("pw");
		String getPW_now = request.getParameter("password_Now");

		String getPW_ch = request.getParameter("password_ch");
		String getPW_chOk = request.getParameter("password_chOk");
		
		String id = (String)session.getAttribute("id");
		

		try {

			if (!getPW_now.equals(getPw)) {
				// 자바에서 경고창띄우는부분
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('현재 비밀번호가 일치하지 않습니다.'); history.go(-1);</script>");
				out.close();
				return "modify_pw";
			} else {
				if (!getPW_ch.equals(getPW_chOk)) {
					// 자바에서 경고창띄우는부분
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('입력하신 비밀번호와 비밀번호 확인 값이 다릅니다!'); history.go(-1);</script>");
					out.close();
					return "modify_pw";
					
				} else {
					// 데이터 입력하기
					MemberDAO dao = new MemberDAO();

					dao.modify_pw(id,getPw,getPW_ch);
					
					//세션끊기
			    	session.invalidate();
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('비밀번호 수정이 완료되었습니다. 로그인을 다시해 주세요'); document.location.href='login'; </script>");
					out.flush();
					out.close();
					return "login";
				}
			}
		} catch (EmptyResultDataAccessException e) {
			System.out.println("입력이 올바르지않음");
			// 자바에서 경고창띄우는부분
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('모든 항목을 입력해주세요!'); history.go(-1);</script>");
			out.close();
			// 어차피 위에서 history.go(-1)때문에 return으로안감
			return "redirect:login";
		}

	}

}
