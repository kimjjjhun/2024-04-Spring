package kr.trip.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.trip.domain.ContentVO;
import kr.trip.domain.Criteria;
import kr.trip.domain.HelpaVO;
import kr.trip.domain.PageDTO;
import kr.trip.service.AdminService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@PreAuthorize("hasRole('ROLE_ADMIN')")
@RequestMapping("/admin")
@Log4j
@RequiredArgsConstructor
public class AdminController {
	
	private final AdminService adminservice; 
	
	
	@GetMapping("/main")
	public void main() {}
	
	
	
	@GetMapping("/member")
	public void getMemberList(Model model) {
	model.addAttribute("list",adminservice.getListMember());	
	}
	
	@PostMapping("/member")
	public String deleteMember(@RequestParam("member_email")String member_email, RedirectAttributes rttr) {
		log.info(member_email);
		
		adminservice.deleteMember(member_email);
		
		return "redirect:/admin/list";
	}
	@GetMapping("/help")
	public void getHelpList(Criteria cri,Model model) {
		log.info("admin/help");
		log.info("cri첫 번째 값" + cri);
		model.addAttribute("list", adminservice.getListHelp(cri));
		
		int total = adminservice.getTotal();
		log.info("---------------------");
		log.info(total);
		log.info("---------------------");
		log.info("cri 두 번째 값:"+cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		
	}
	
	@GetMapping("/helpa")
	public void readHelpA(@RequestParam("help_id")int help_id,Model model) {
		
	model.addAttribute("help", adminservice.readHelp(help_id));
	model.addAttribute("helpa", adminservice.readHelpA(help_id));
	
	
	}
	@PostMapping("/helpa")
	public String insertHelpA(HelpaVO vo, RedirectAttributes rttr) {
		log.info("helpA테스트" + vo);
		adminservice.insertHelpA(vo);
		
		return "redirect:/admin/help";
	}
	
	@GetMapping("/content")
	public void getContent() {}
	
	@PostMapping("/content")
	public String postContent(ContentVO vo, RedirectAttributes rttr) {
		log.info(vo);
		adminservice.insertContent(vo);
		
		return "redirect:";
	}
		

}
