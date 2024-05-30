package kr.trip.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.trip.domain.AllOfPlanDTO;
import kr.trip.domain.AreaVO;
import kr.trip.domain.ChoicePlaceDTO;
import kr.trip.domain.ContentVO;
import kr.trip.domain.DateBetweenDTO;
import kr.trip.domain.SleepNameDTO;
import kr.trip.domain.TravelContentVO;
import kr.trip.domain.TravelPlanVO;
import kr.trip.mapper.PlanMapper;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class PlanServiceImpl implements PlanService{
	
	@Autowired
	private PlanMapper mapper;

	@Override
	public List<ContentVO> getContentAreaList(String areaname) {
		log.info(areaname);
		return mapper.getContentAreaList(areaname);
	}

	@Override
	public int insertTravelContent(TravelContentVO vo) {
		log.info("insertTravelContent..." + vo);
		return mapper.insertTravelContent(vo);
	}


	@Override
	public int deleteContent(int tContent_id) {
		return mapper.deleteContent(tContent_id);
	}

	@Override
	public int deleteContentAll(int plan_id) {
		log.info("drop" + plan_id);
		return mapper.deleteContentAll(plan_id);
	}

	@Override
	public AreaVO getAreaContent(String areaname) {
		log.info(areaname);
		return mapper.getAreaContent(areaname);
	}

	public List<ContentVO> getAccommodationList(String areaname) {
		return mapper.getAccommodationList(areaname);
	}

	@Override
	public boolean updateTravelContent(TravelContentVO tc) {
		return mapper.updateTravelContent(tc)==1;
	}

	@Override
	public boolean deleteFromTravelContent(int plan_id, String content_id) {
		return mapper.deleteFromTravelContent(plan_id, content_id)==1;
	}

	@Override
	public List<AllOfPlanDTO> getContentListOfPlanByEmail(String member_email) {
		
		return mapper.getContentListOfPlanByEmail(member_email);
	}

	@Override
	public List<AllOfPlanDTO> getContentListOfPlanByPlanId(int plan_id) {
		
		return mapper.getContentListOfPlanByPlanId(plan_id);
	}
	@Override
	public boolean updateTravelPlan(TravelPlanVO tp) {
		return mapper.updateTravelPlan(tp)==1;
	}
	@Override
	public void insert(ContentVO content) {
		System.out.println("실행");
		mapper.insert(content);
	}

	@Override
	public void insertTravelPlan(TravelPlanVO tp) {
		mapper.insertTravelPlan(tp);
		mapper.updateDayOfTravelPlan(tp);
	}


	@Override
	public void insertContentIntoPlan(List<TravelContentVO> tcList, TravelPlanVO tp) throws ParseException {
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
		SimpleDateFormat format_t = new SimpleDateFormat("hh:mm:ss");
		String startTp = format.format(tp.getGo());
		String endTp = format.format(tp.getEnd());
		Date start_d =format.parse(startTp);
		Date end_d = format.parse(endTp); 
		LocalDate start = DateUtils.convertToLocalDate(start_d);
		LocalDate end = DateUtils.convertToLocalDate(end_d);
		
		List<LocalDate> dates =	getDatesBetweenTwoDates(start,end);
		assignDatesToTravelContent(tcList,dates);
		saveTravelContentList(tcList);
	}
	
	public List<LocalDate> getDatesBetweenTwoDates(LocalDate start, LocalDate end){
		return start.datesUntil(end.plusDays(1)).collect(Collectors.toList());
	}
	private void assignDatesToTravelContent(List<TravelContentVO> tcList, List<LocalDate> dates) {
		int dateCount = dates.size();
		int tcCount = tcList.size();
		
		for(int i=0; i<tcCount; i++) {
			TravelContentVO tc = tcList.get(i);
			LocalDate date = dates.get(i % dateCount);
			tc.setDay(DateUtils.convertToDate(date));
		}
	}
	
	private void saveTravelContentList(List<TravelContentVO> tcList) {
		for(TravelContentVO vo : tcList) {
			mapper.insertContentIntoPlan(vo);
		}
	}



	@Override
	public List<DateBetweenDTO> autoSplit(DateBetweenDTO day) {
String[] daysArray = day.getDay().split(",");
		
		String[] dayOfWeekArray = day.getDayOfWeek().split(",");
		
		String []startTimeArray = day.getStartTime().split(",");
		
		String[]endTimeArray = day.getEndTime().split(",");
		
		log.info(daysArray[1]);
		List<DateBetweenDTO>db = new ArrayList<>();
		for(int i = 0; i < daysArray.length; i++) {
			DateBetweenDTO dto = new DateBetweenDTO();
			dto.setDay(daysArray[i]);
			dto.setDayOfWeek(dayOfWeekArray[i]);
			dto.setStartTime(startTimeArray[i]);
			dto.setEndTime(endTimeArray[i]);
			
			db.add(dto);
		}
		return db;
	}

	@Override
	public List<ChoicePlaceDTO> autoSplit2(ChoicePlaceDTO contentName) {
String[]contentNameArray = contentName.getContentName().split(",");
		
		String[]contentTypesArray = contentName.getContentTypes().split(",");
		
		String[]address = contentName.getAddress().split(",");
		
		String[]playTime = contentName.getPlayTime().split(",");
		
		List<ChoicePlaceDTO>cp = new ArrayList<ChoicePlaceDTO>();
		for(int i =0; i < contentNameArray.length; i++) {
			ChoicePlaceDTO dto = new ChoicePlaceDTO();
			dto.setContentName(contentNameArray[i]);
			dto.setContentTypes(contentTypesArray[i]);
			dto.setAddress(address[i]);
			dto.setPlayTime(playTime[i]);
			
			cp.add(dto);
		}
		return cp;
	}

	@Override
	public List<SleepNameDTO> autoSplit3(SleepNameDTO sleep) {
	String[]sleepNameArray = sleep.getSleepName().split(",");
		
		List<SleepNameDTO>sn = new ArrayList<SleepNameDTO>();
		for(int i = 0; i < sleepNameArray.length; i++) {
			SleepNameDTO dto = new SleepNameDTO();
			
			dto.setSleepName(sleepNameArray[i]);
			
			sn.add(dto);
		}
		log.info(sn);
		return sn;
	}
	
}
