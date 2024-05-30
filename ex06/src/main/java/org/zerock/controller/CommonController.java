package org.zerock.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("=================================");
		log.info(auth);
		log.info("=================================");
		model.addAttribute("msg", "접근 권한이 없습니다.");
	}
	//시큐리티 로그인페이지
	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model) {
		
		if(error != null) {
			model.addAttribute("error","아이디 또는 비밀번호가 틀립니다.");
		}
		
		if(logout != null) {
			model.addAttribute("logout","로그아웃 하였습니다.");
		}
	}
	//시큐리티 로그아웃페이지
	@GetMapping("/customLogout")
	public void logoutGET() {
		log.info("customLogOut...........");
	}
}
