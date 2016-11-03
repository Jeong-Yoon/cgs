package kr.co.cgs4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CinemaController {
	@RequestMapping("/cinemas")
	public String book1(Model model) {
	System.out.println("cinemas()");
	return "cinemas";
	}

}