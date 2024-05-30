package kr.trip.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.trip.domain.ContentVO;
import kr.trip.domain.Criteria;
import kr.trip.domain.HelpVO;
import kr.trip.domain.HelpaVO;
import kr.trip.domain.MemberVO;
import kr.trip.mapper.AdminMapper;
import kr.trip.mapper.HelpMapper;
import kr.trip.mapper.MemberMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@RequiredArgsConstructor
@Log4j
public class AdminServiceImpl implements AdminService{

	private final MemberMapper membermapper;
	
	private final HelpMapper helpmapper;
	
	private final AdminMapper adminmapper;
	
	@Override
	public List<MemberVO> getListMember() {
		return membermapper.getListMember();
	}

	@Override
	public void deleteMember(String member_email) {
		membermapper.deleteMember(member_email);
		
	}

	@Override
	public List<HelpVO> getListHelp(Criteria cri) {
		
		int page = cri.getPageNum() - 1;
		
		page = page * 10;
		
		cri.setPage(page);
		log.info("cri총 값"+cri);
	//0 == 1, 10 == 2, 20 == 3	
		return helpmapper.getListWithPaging(cri);
	}

	@Override
	public HelpVO readHelp(int help_id) {
		return helpmapper.readHelp(help_id);
	}

	@Override
	public int getTotal() {
		return helpmapper.getTotalCount();
	}

	@Override
	public void insertHelpA(HelpaVO vo) {
		helpmapper.insertHelpA(vo);
		helpmapper.updateAnswer(vo.getHelp_id());
	}

	@Override
	public HelpaVO readHelpA(int help_id) {
		return helpmapper.readHelpA(help_id);
	}

	@Override
	public void insertContent(ContentVO vo) {
		adminmapper.insertContent(vo);
	}
	
	

}
