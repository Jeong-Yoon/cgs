package kr.co.cgs4.command;

import org.springframework.ui.Model;

public interface Command {
	
	void execute(Model model);
	
}