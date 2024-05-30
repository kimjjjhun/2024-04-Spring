package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/sample")
public class SampleController2 {
		
	@GetMapping("/all")			//비회원포함 모든회원 호출가능
	public void doAll() {
		log.info("all..............");
	}
	@GetMapping("/member")		//정규회원만 호출가능
	public void doMember() {
		log.info("all..............");
	}
	@GetMapping("/admin")		//관리자만 호출가능
	public void doAdmin() {
		log.info("all..............");
	}
}
