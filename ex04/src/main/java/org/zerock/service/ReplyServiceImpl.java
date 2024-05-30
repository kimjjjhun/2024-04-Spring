package org.zerock.service;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyPageDTO;
import org.zerock.domain.ReplyVO;
import org.zerock.mapper.BoardMapper;
import org.zerock.mapper.ReplyMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class ReplyServiceImpl implements ReplyService{

	private final ReplyMapper replyMapper;
	private final BoardMapper boardMapper;
	
	@Transactional
	@Override
	public int register(ReplyVO reply) {
		log.info("register....." + reply);
		
		int result = replyMapper.insert(reply);
		boardMapper.updateReplyCnt(reply.getBno(), 1);
		
		return result;
	}

	@Override
	public ReplyVO get(Long rno) {
		
		log.info("get..... " + rno);
		return replyMapper.read(rno);
	}

	@Override
	public int modify(ReplyVO reply) {
		log.info("modify....." + reply);
	
		return replyMapper.update(reply);
	}
	@Transactional
	@Override
	public int remove(Long rno) {
		log.info("delete...... " + rno);
		
		ReplyVO vo = replyMapper.read(rno);
		
		boardMapper.updateReplyCnt(vo.getBno(), -1);
		
		return replyMapper.delete(rno);
	}

	@Override
	public ReplyPageDTO getList(Criteria cri, Long bno) {
		log.info("get Reply List of a Board" + bno);
		
		return new ReplyPageDTO(
				replyMapper.getCountByBno(bno),
				replyMapper.getListWithPaging(cri, bno)
				);
	}
	
	

	
}
