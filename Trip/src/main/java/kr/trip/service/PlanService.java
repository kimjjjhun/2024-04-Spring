package kr.trip.service;

import java.text.ParseException;
import java.util.List;

import kr.trip.domain.AllOfPlanDTO;
import kr.trip.domain.AreaVO;
import kr.trip.domain.ChoicePlaceDTO;
import kr.trip.domain.ContentVO;
import kr.trip.domain.DateBetweenDTO;
import kr.trip.domain.SleepNameDTO;
import kr.trip.domain.TravelContentVO;
import kr.trip.domain.TravelPlanVO;

public interface PlanService {
	public List<ContentVO>getContentAreaList(String areaname);

	public int insertTravelContent(TravelContentVO vo);
	
	
	public int deleteContent(int tContent_id);
	
	public int deleteContentAll(int plan_id);
	
	public AreaVO getAreaContent(String areaname);
	
	public List<ContentVO>getAccommodationList(String areaname);
	
	public boolean updateTravelContent(TravelContentVO tc);
	
	public boolean deleteFromTravelContent(int plan_id, String content_id);
	
	public List<AllOfPlanDTO> getContentListOfPlanByEmail(String member_email);

	public List<AllOfPlanDTO> getContentListOfPlanByPlanId(int plan_id);
	
	public boolean updateTravelPlan(TravelPlanVO tp);
	
	public void insertTravelPlan(TravelPlanVO tp);
	
	public void insert(ContentVO content);
	
	public void insertContentIntoPlan(List<TravelContentVO> tc, TravelPlanVO tp) throws ParseException;
	
	public List<DateBetweenDTO> autoSplit(DateBetweenDTO day);
	public List<ChoicePlaceDTO> autoSplit2(ChoicePlaceDTO contentName);
	public List<SleepNameDTO> autoSplit3(SleepNameDTO sleep);
	
}
