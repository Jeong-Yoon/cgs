package kr.co.cgs4.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import kr.co.cgs4.dao.ReserveCheckDAO;
import kr.co.cgs4.dto.ReserveCheckDTO;
import kr.co.cgs4.dto.ReserveListDTO;
import kr.co.cgs4.dto.ReserveSeatDTO;

public class ReserveCheckCommand {

	public void reserveList(Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String mId = request.getParameter("mId");

		System.out.println("memberId=" + mId);
		
		ReserveCheckDAO dao=new ReserveCheckDAO();
		
		ArrayList<ReserveListDTO> dtos=dao.reserveList(mId);
		model.addAttribute("rList", dtos);

	}

	public void reserveCheck(Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String rId = request.getParameter("rId");

		System.out.println("reserveId=" + rId);


		ReserveCheckDAO dao=new ReserveCheckDAO();
		ReserveCheckDTO dtos=dao.reserveCheck(rId);
		model.addAttribute("rCheck", dtos);

	}

	public void reserveSeat(Model model) {

		Map<String, Object> map = model.asMap();

		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String rId = request.getParameter("rId");

		System.out.println("reserveId=" + rId);

		ReserveCheckDAO dao=new ReserveCheckDAO();
		ArrayList<ReserveSeatDTO> dtos=dao.reserveSeat(rId);
		model.addAttribute("rSeat", dtos);
		

	}

}
