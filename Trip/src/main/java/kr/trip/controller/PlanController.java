package kr.trip.controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.trip.domain.AllOfPlanDTO;
import kr.trip.domain.AreaVO;
import kr.trip.domain.ChoicePlaceDTO;
import kr.trip.domain.DateBetweenDTO;
import kr.trip.domain.SleepNameDTO;
import kr.trip.domain.TravelContentVO;
import kr.trip.domain.TravelPlanVO;
import kr.trip.service.PlanService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/plan")
@Controller
@RequiredArgsConstructor
@Log4j
public class PlanController {

	private final PlanService service;

	@GetMapping("/place")
	public void plan2(String areaname, Model model) {
		log.info("과연" + areaname);
		model.addAttribute("list", service.getContentAreaList(areaname));
		model.addAttribute("sleep", service.getAccommodationList(areaname));
		model.addAttribute("area",service.getAreaContent(areaname));
		model.addAttribute("areaname", areaname);
	}

	@PostMapping("/place")
	@Transactional
	@ResponseBody
	public String choosePlace(TravelPlanVO tp, List<TravelContentVO> tcList, RedirectAttributes rttr)
			throws ParseException {

		service.insertTravelPlan(tp);

		service.insertContentIntoPlan(tcList, tp);

		List<AllOfPlanDTO> list = service.getContentListOfPlanByPlanId(tp.getPlan_id());

		rttr.addAttribute("travelPlan", tp);
		rttr.addAttribute("allList", list);

		return "redirect:/plan/library";
	}

	@GetMapping("/library")
	public void getPlan(DateBetweenDTO day , ChoicePlaceDTO place, SleepNameDTO sleepName,String areaname, Model model) {
		log.info("date값" + day);
		log.info("place값" + place);
		log.info("sleep값"+ sleepName );
		

		List<DateBetweenDTO> db = service.autoSplit(day);
		List<ChoicePlaceDTO> cp = service.autoSplit2(place);
		List<SleepNameDTO> sp = service.autoSplit3(sleepName);
		
	
		model.addAttribute("area",service.getAreaContent(areaname));	
		model.addAttribute("areaname", areaname);
	}
	
	  
	  @ResponseBody
	  @GetMapping(value="/getArea/{areaname}", produces =
	  {MediaType.APPLICATION_JSON_VALUE}) public
	  ResponseEntity<AreaVO>getAreaContent(@PathVariable("areaname")String
	  areaname){ log.info("컨트롤러 받은 값" + areaname); AreaVO vo =
	  service.getAreaContent(areaname); log.info(vo); return new
	  ResponseEntity<AreaVO>(vo, HttpStatus.OK); }
	  
	 

	  @ResponseBody
	  
	  @PostMapping(value="/insert", consumes ="application/json", produces =
	  {MediaType.TEXT_PLAIN_VALUE}) public
	  ResponseEntity<String>insert(@RequestBody TravelContentVO plan){
	  log.info("insert..." + plan);
	  
	  return service.insertTravelContent(plan) == 1 ? new
	  ResponseEntity<String>("result", HttpStatus.OK) : new
	  ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR); }
	  
	  @ResponseBody
	  
	  @DeleteMapping(value="/delete/{tcontent_id}", produces =
	  {MediaType.TEXT_PLAIN_VALUE}) public
	  ResponseEntity<String>delete(@PathVariable("tcontent_id")int tcontent_id){
	  log.info("delete..." + tcontent_id);
	  
	  return service.deleteContent(tcontent_id) == 1 ? new
	  ResponseEntity<String>("result", HttpStatus.OK) : new
	  ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR); }
	  
	  
	  @ResponseBody
	  
	  @DeleteMapping(value="/drop/{plan_id}", produces =
	  {MediaType.APPLICATION_JSON_VALUE}) public
	  ResponseEntity<String>drop(@PathVariable("plan_id")int plan_id){
	  
	  log.info("drop.."+plan_id);
	  
	  return service.deleteContentAll(plan_id) != 0 ? new
	  ResponseEntity<String>("result", HttpStatus.OK) : new
	  ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR); }

}
