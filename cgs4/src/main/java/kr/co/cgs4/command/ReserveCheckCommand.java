package kr.co.cgs4.command;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		String today = format.format(dtos.getSale_date());
		String temp = "20"+today.substring(2);
		Date dToday=null;
		try {
			dToday=format.parse(temp);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date sDate = new java.sql.Date(dToday.getTime());
		dtos.setSale_date(sDate);
		
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
	
	public void reserveDelete(Model model) {

		Map<String, Object> map = model.asMap();

		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String rId = request.getParameter("rId");

		System.out.println("saleId=" + rId);

		ReserveCheckDAO dao=new ReserveCheckDAO();
		dao.deleteMemberSale(rId);
		dao.deleteReserve(rId);
		dao.deleteSaleSeat(rId);
		dao.deleteSale(rId);
		

	}

}
