package kr.trip.controller;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.cj.Session;

import kr.trip.domain.AuthVO;
import kr.trip.domain.MemberVO;
import kr.trip.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@RequiredArgsConstructor
@Controller
@Log4j
public class CommonController {

	private final MemberService memberService;
	
	@GetMapping("/customLogin")
	public void loginInput(String error, String logout, Model model) {
		
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if(error != null) {
			model.addAttribute("error", "아이디 및 비번이 틀립니다.");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "로그아웃");
		}
	}
	
	
	@GetMapping("/main")
	public void main(Model model) {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		String member_email = authentication.getName();
		Collection<? extends GrantedAuthority> auth = authentication.getAuthorities();
		model.addAttribute("member_email",member_email);
		model.addAttribute("auth",auth);
	}
	
	
	@GetMapping("/error")
	public void error(Authentication auth, Model model) {
		model.addAttribute("msg","요청이 거절되었습니다.");
	}
	
	@GetMapping("/main/cash")
	public void charge(Model model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = ((UserDetails)principal).getUsername();
		
		model.addAttribute("member_email",username);
	}
	
	@PostMapping("/main/cash")
	@ResponseBody
	public String charge(@RequestParam("member_email") String member_email) {
		
		System.out.println("결제 완료 이메일: " + member_email);
		
		memberService.insertAuth(new AuthVO(member_email, "ROLE_CHARGED"));
		
		return "redirect:/main";
	}
	
}