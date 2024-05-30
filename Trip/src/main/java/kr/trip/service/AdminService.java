package kr.trip.service;

import java.util.List;

import kr.trip.domain.ContentVO;
import kr.trip.domain.Criteria;
import kr.trip.domain.HelpVO;
import kr.trip.domain.HelpaVO;
import kr.trip.domain.MemberVO;

public interface AdminService {
	
	public List<MemberVO> getListMember();
	
	public void deleteMember(String member_email);

	public List<HelpVO> getListHelp(Criteria cri);
	
	public HelpVO readHelp(int help_id);
	
	public int getTotal();
	
	public void insertHelpA(HelpaVO vo);
	
	public HelpaVO readHelpA(int help_id);
	
	public void insertContent(ContentVO vo);
}
