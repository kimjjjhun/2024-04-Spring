package org.zerock.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.zerock.aop.Advice;
import org.zerock.aop.logAdvice;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService{
	
	
	/*
	 * @Autowired
	 * 
	 * @Qualifier("logAdvice")
	 */
	// 리소스를 사용하여 어떤걸 사용할지 정의할수있다. 필드주입과 페어를 사용하는것보다 간소화하다.
	/*
	 * @Resource(name = "logAdvice") private Advice advice;
	 */
	
	private final BoardMapper boardMapper;
	
	@Override
	public void register(BoardVO board) {
		
		
		boardMapper.insertSelectKey(board);
	}

	@Override
	public BoardVO get(Long bno) {
		
		
		return boardMapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		
		
		return boardMapper.update(board)  == 1;
	}

	@Override
	public boolean remove(Long bno) {
		
		
		
		return boardMapper.delete(bno) == 1;
	}

	@Override
	public List<BoardVO> getList(Criteria cri) {
		
		
		
		return boardMapper.getListWithPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		
		return boardMapper.getTotalCount(cri);
	}

}
