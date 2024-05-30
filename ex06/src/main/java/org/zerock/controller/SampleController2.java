package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/sample")
public class SampleController2 {
	
	@GetMapping("/all")
	public void doAll() {
		log.info("ALL................");
	}
	@GetMapping("/member")
	public void doMember() {
		log.info("Member................");
	}
	@GetMapping("/admin")
	public void doAdmin() {
		log.info("Admin................");
	}
}
