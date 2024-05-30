package org.zerock.controller;

import java.util.List;

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
@RequestMapping("/board/*") // board/ 로 요청이 들어오면 실행된다.
public class BoardController {

	private final BoardService boardService;
	//게시글 전체리스트로 이동하면서 페이징처리
	@GetMapping("/list")
	public void list(Criteria cri,Model model){   
		log.info("list........" + cri);
		
		model.addAttribute("list", boardService.getList(cri));  //views/board/list.jsp
		/*아래 123은 임의로 넣은 값이기에 사용할수없음 DB의 전체값을 가져올수없으므로*/
		/* model.addAttribute("pageMaker", new PageDTO(cri, 123)); */
		int total = boardService.getTotal(cri);
		log.info("total : " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	//게시글 등록페이지로 이동
	@GetMapping("/register")
	public String register() {
	    return "/board/register"; // 뷰의 경로를 반환
	}
	//게시글 등록
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("register......." + board);
		boardService.register(board);
		
		rttr.addFlashAttribute("result", board.getBno());
		
		return "redirect:/board/list";   //views/board/list.jsp
	}
	//게시글 상세조회 , 수정페이지 요청   // 원래페이지로 돌아가기위해 bno값과 cri값을 파람으로 받아줌
	@GetMapping({"/get", "/modify"}) 
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("get + modify......" + bno);
		
		model.addAttribute("board", boardService.get(bno)); // views/board/get.jsp
		
	}
	//게시글 업데이트(수정)  // 수정후에 다시 수정전페이지로 돌아가기위해 cri 값을 받아줌
	@PostMapping("/modify")
	public String modify(BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		
		log.info("modify......" + board);
		
		if(boardService.modify(board)) {  //board입력받아서 수정 성공하면 true, 실패하면 false
			rttr.addFlashAttribute("result", "modify");
		}
		//post에선 값을 넣어줘야된다.
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		
		//리다이렉트로 동작하기에 한번만 전달됨
		return "redirect:/board/list";
		
	}
	//게시글 삭제 // 원래 페이지로 돌아가기위해 파람을 사용하여 cri값을 받아준다.
	@PostMapping("/remove")
	public String remove(@RequestParam("bno")Long bno, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("remove........" + bno);
		
		if(boardService.remove(bno)) {
			rttr.addFlashAttribute("result", "delete");
		}
		
		//post에선 값을 넣어줘야된다.
				rttr.addAttribute("pageNum", cri.getPageNum());
				rttr.addAttribute("amount", cri.getAmount());
				rttr.addAttribute("type", cri.getType());
				rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/list";
	}
	
	
}
