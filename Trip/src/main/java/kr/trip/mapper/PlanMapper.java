package kr.trip.mapper;

import java.util.List;

import kr.trip.domain.AllOfPlanDTO;
import kr.trip.domain.AreaVO;
import kr.trip.domain.ContentVO;
import kr.trip.domain.TravelContentVO;
import kr.trip.domain.TravelPlanVO;

public interface PlanMapper {

	public List<ContentVO>getContentAreaList(String areaname);
	
	public int insertTravelContent(TravelContentVO vo);
	
	public List<ContentVO>getAccommodationList(String areaname);
	
	public int deleteContent(int tContent_id);
	
	public int deleteContentAll(int plan_id);
	
	public AreaVO getAreaContent(String areaname);
	
	public void insert(ContentVO content);
	
	public void insertContentIntoPlan(TravelContentVO tc);
	
	public void insertTravelPlan(TravelPlanVO tp);
	
	public int updateDayOfTravelPlan(TravelPlanVO tp);
	
	public int updateTravelPlan(TravelPlanVO tp);
	
	public int updateTravelContent(TravelContentVO tc);
	
	public int deleteFromTravelContent(int plan_id, String content_id);
	
	public List<AllOfPlanDTO> getContentListOfPlanByEmail(String member_email);
	
	public List<AllOfPlanDTO> getContentListOfPlanByPlanId(int plan_id);
}
