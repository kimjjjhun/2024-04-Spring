package org.zerock.exception;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import lombok.extern.log4j.Log4j;

@ControllerAdvice  //예외처리할때 사용함
@Log4j
public class CommonExceptionAdvice {
	@ExceptionHandler(Exception.class) // 익셉션클래스를 넣어줄경우 모든예외처리를 받아줌
	public String except(Exception ex, Model model) {
		log.error("Exception.............. + " + ex.getMessage());
		model.addAttribute("exception",ex);
		log.error(model);
		
		return "error_page";
	}
}
