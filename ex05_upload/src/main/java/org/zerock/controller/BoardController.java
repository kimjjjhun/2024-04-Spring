package org.zerock.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.BoardService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@Log4j
@RequiredArgsConstructor
@RequestMapping("/board/*")
public class BoardController {

	private final BoardService boardService;
	
	
	
	@GetMapping("/list")
	public void list(Criteria cri,  Model model){   
		log.info("list........" + cri);
		
		model.addAttribute("list", boardService.getList(cri));  //views/board/list.jsp
		
//		model.addAttribute("pageMaker", new PageDTO(cri, 123));
		
		int total = boardService.getTotal(cri);
		
		log.info("total : " + total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

//	@GetMapping("/list")
//	public Map<String, Object> list(Criteria cri){   
//		log.info("list........" + cri);
//		
//		
////		model.addAttribute("pageMaker", new PageDTO(cri, 123));
//		
//		int total = boardService.getTotal(cri);
//		log.info("total : " + total);
//		
//		//model.addAttribute("list", boardService.getList(cri));  //views/board/list.jsp
//		//model.addAttribute("pageMaker", new PageDTO(cri, total));
//		
//		return Map.of("list", boardService.getList(cri), "pageMaker",new PageDTO(cri, total) );
//	}
	
	@GetMapping("/register")  //  WEB_INF/views/board/register.jsp
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("register......." + board);
		boardService.register(board);
		
		rttr.addFlashAttribute("result", board.getBno());
		
		return "redirect:/board/list";   //views/board/list.jsp
	}
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("get + modify......" + bno);
		
		model.addAttribute("board", boardService.get(bno)); // views/board/get.jsp
		
	}
	
	@PostMapping("/modify")
	public String modify(BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		
		log.info("modify......" + board);
		
		if(boardService.modify(board)) {  //board입력받아서 수정 성공하면 true, 실패하면 false
			rttr.addFlashAttribute("result", "modify");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/list";
		
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno")Long bno, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("remove........" + bno);
		
		if(boardService.remove(bno)) {
			rttr.addFlashAttribute("result", "delete");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/list";
	}
}
