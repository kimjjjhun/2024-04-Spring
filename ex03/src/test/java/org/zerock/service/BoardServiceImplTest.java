package org.zerock.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceImplTest {

	@Autowired
	private BoardService boardService;
	
	
	@Test
	public void testRegister() {
		BoardVO board = BoardVO.builder()
				.title("서비스 제목")
				.content("서비스 내용")
				.writer("service00")
				.build();
		
		boardService.register(board);
		
		log.info("생성된 게시물 번호 : " + board.getBno());
	}
	
	@Test
	public void testGetList() {
		//boardService.getList().forEach(vo-> log.info(vo));
	}
}
