package kr.trip.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.trip.domain.Criteria;
import kr.trip.domain.HelpVO;
import kr.trip.service.HelpService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@PreAuthorize("hasRole('ROLE_MEMBER')")
@RequestMapping("/help")
@RequiredArgsConstructor
public class HelpController {
	
	private final HelpService service;
	
	@GetMapping("/list")
	public void getListHelp(Criteria cri, Model model) {
		model.addAttribute("list",service.getListHelp(cri));
	}
	
	@GetMapping("/insert")
	public void insertHelpGet() {
		log.info("문의사항 입력 페이지로 이동");
	}
	
	@PostMapping("/insert")
	public void insertHelpPost(HelpVO vo) {
		service.insertHelp(vo);
	}
}
	

