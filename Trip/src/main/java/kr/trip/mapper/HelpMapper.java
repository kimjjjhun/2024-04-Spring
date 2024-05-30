package kr.trip.mapper;

import java.util.List;

import kr.trip.domain.Criteria;
import kr.trip.domain.HelpVO;
import kr.trip.domain.HelpaVO;

public interface HelpMapper {
	//Paging
	public List<HelpVO> getListWithPaging(Criteria cri);
	//List
	public List<HelpVO> getListHelp();
	//C
	public int insertHelp(HelpVO vo);
	//R
	public HelpVO readHelp(int help_id);
	//U
	public int updateHelp(HelpVO vo);
	//D
	public int deleteHelp(int help_id);
	
	public int getTotalCount();
	
	public int insertHelpA(HelpaVO vo);
	
	public int updateAnswer(int help_id);
	
	public HelpaVO readHelpA(int help_id);
}
