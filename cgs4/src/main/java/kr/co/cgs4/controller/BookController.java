package kr.co.cgs4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
	@RequestMapping("/book1")
	public String book1(Model model) {
	System.out.println("book1()");
	return "book/book1";
	}

}
