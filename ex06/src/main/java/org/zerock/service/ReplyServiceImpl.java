package org.zerock.service;

import java.util.List;

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

	private final ReplyMapper mapper;
	
	private final BoardMapper boardMapper;
	
	@Transactional
	@Override
	public int register(ReplyVO reply) {
		log.info("register....." + reply);
		
		
		boardMapper.updateReplyCnt(reply.getBno(), 1);
		return mapper.insert(reply);
	}

	@Override
	public ReplyVO get(Long rno) {
		
		log.info("get..... " + rno);
		return mapper.read(rno);
	}

	@Override
	public int modify(ReplyVO reply) {
		log.info("modify....." + reply);
	
		return mapper.update(reply);
	}
	
	@Transactional
	@Override
	public int remove(Long rno) {
		log.info("delete...... " + rno);
		
		ReplyVO replyVO = mapper.read(rno);
		
		boardMapper.updateReplyCnt(replyVO.getBno() , -1);
		
		return mapper.delete(rno);
	}

	@Override
	public ReplyPageDTO getList(Criteria cri, Long bno) {
		log.info("get Reply List of a Board" + bno);
		
		return new ReplyPageDTO(
				mapper.getCountByBno(bno),
				mapper.getListWithPaging(cri, bno)
				);
	}

}
