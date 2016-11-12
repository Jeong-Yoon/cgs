package kr.co.cgs4.command;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
		BookDAO bdao = new BookDAO();
		
		//좌석 받아와서 스플릿
		String choosenSits = hsr.getParameter("choosen_sits");
		System.out.println(choosenSits);
		String[] sits= choosenSits.split(" ");
		
		//난수로 saleid만들기
		String sale_ID="", reserve_ID="";
		for (int i = 0; i <8; i++) {
			sale_ID+=(int)(Math.random()*10);
		}
		for (int i = 0; i < 6; i++) {
			reserve_ID+=(int)(Math.random()*10);
		}
		
		
		//saleDTO 입력값
		String screening_ID = sdto.getScreening_ID();//받아옴
		int sale_price = sdto.getSale_price();//받아옴
		String paycard_num = sdto.getPaycard_num();//받아옴
		int sale_cnt = sdto.getSale_cnt();//받아옴
		int final_price = sdto.getSale_price();//saleprice 같음
		int common_cnt = sdto.getCommon_cnt(); 
		int young_cnt = sdto.getYoung_cnt();//받아옴
		int special_cnt = sdto.getSpecial_cnt();//받아옴
		//나머지는 디폴트 설정
		//현재시간 구하기
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
		Calendar c1 = Calendar.getInstance();
		String today = format.format(c1.getTime());
		Date a1=null;
		try {
			a1 =  format.parse(today);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date currDate = new java.sql.Date(a1.getTime());

//		java.sql.Date currDate = java.sql.Date.valueOf()
		//sale, sale_seat, member_sale에 넣음
		bdao.saleSubmit(sale_ID, currDate, sale_price, paycard_num, screening_ID, sale_cnt,final_price, common_cnt, young_cnt, special_cnt, sits, id, reserve_ID);
		//sale_id를 다음페이지로 보냄
		
		//book4화면에서 쓸 데이터를 보냄
		model.addAttribute("sale_id", sale_ID);
		model.addAttribute("sits", choosenSits);
	}
}
