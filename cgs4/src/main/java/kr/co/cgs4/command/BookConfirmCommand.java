package kr.co.cgs4.command;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.cgs4.dao.BookDAO;
import kr.co.cgs4.dto.Book_BookInfo;
import kr.co.cgs4.dto.SaleDTO;

public class BookConfirmCommand implements Command {
	


	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		Map<String, Object> map = model.asMap();
		HttpServletRequest hsr = (HttpServletRequest) map.get("request");
		SaleDTO sdto = (SaleDTO) map.get("saleDTO");
		Book_BookInfo bdto = (Book_BookInfo) map.get("bookinfo");
		HttpSession session = (HttpSession) map.get("session");
		String id = (String) session.getAttribute("id");
		final BookDAO bdao = new BookDAO();
		
		//좌석 받아와서 스플릿
		String choosenSits = hsr.getParameter("choosen_sits");
		System.out.println(choosenSits);
		final String[] sits= choosenSits.split(" ");
		
		//난수로 saleid만들기
		String tSale_ID="";
		for (int i = 0; i <8; i++) {
			tSale_ID+=(int)(Math.random()*10);
		}
		final String sale_ID = tSale_ID;
		
		//saleDTO 입력값
		final String screening_ID = sdto.getScreening_ID();//받아옴
		final int sale_price = sdto.getSale_price();//받아옴
		final String paycard_num = sdto.getPaycard_num();//받아옴
		final int sale_cnt = sdto.getSale_cnt();//받아옴
		final int final_price = sdto.getSale_price();//saleprice 같음
		final int common_cnt = sdto.getCommon_cnt(); 
		final int young_cnt = sdto.getYoung_cnt();//받아옴
		final int special_cnt = sdto.getSpecial_cnt();//받아옴
		//나머지는 디폴트 설정
		//현재시간 구하기
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat("yy/MM/dd", Locale.KOREA);
		Date date = new Date();
		final String currDate = mSimpleDateFormat.format(date);
		//sale, sale_seat, member_sale에 넣음
		bdao.saleSubmit(sale_ID, currDate, sale_price, paycard_num, screening_ID, sale_cnt,final_price, common_cnt, young_cnt, special_cnt, sits, id);
		//sale_id를 다음페이지로 보냄
		model.addAttribute("sale_id", sale_ID);
	}
}
