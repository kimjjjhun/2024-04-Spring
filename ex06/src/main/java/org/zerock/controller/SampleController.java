package org.zerock.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.SampleVO;

import com.google.gson.Gson;

import lombok.extern.log4j.Log4j;

//@Controller
@RestController  // @Controller + @ResponseBody
@Log4j
//@RequestMapping("/sample")
public class SampleController {

	@GetMapping(value = "/getText", produces = "text/plain; charset=utf-8")
	//@ResponseBody
	public String getText() {
		
		log.info("MIME TYPE : " + MediaType.TEXT_PLAIN_VALUE);
		
		return "안녕하세요2";
	}
	
	@GetMapping(value = "/getSample", produces = MediaType.APPLICATION_JSON_VALUE)
	public SampleVO getSample() {
		return new SampleVO(111, "스타2", "로드2");
	}

	@GetMapping(value = "/getSample2")
	public SampleVO getSample2() {
		return new SampleVO(111, "스타2", "로드2");
	}

	@GetMapping(value = "/getList" ,  produces = MediaType.APPLICATION_JSON_VALUE)
	public List<SampleVO> getList() {
		
		List<SampleVO> list = new ArrayList<SampleVO>();
		
		for(int i=1; i<10; i++) {
			SampleVO vo = new SampleVO(i, i+"Frist", i+ "List");
			list.add(vo);
		}
		
//		return IntStream.range(1, 10).
//				mapToObj(i->new SampleVO(i, i+"Frist", i+ "List"))
//				.collect(Collectors.toList());
		
		return list;
	}
	
	@GetMapping(value =  "/getMap", produces = MediaType.APPLICATION_JSON_VALUE )
	public Map<String, SampleVO> getMap(){
		Map<String, SampleVO> map = new HashMap<String, SampleVO>();
		
		map.put("First", new SampleVO(111, "그루트", "주니어"));
		
		return map;
	}

	@GetMapping(value =  "/getMap2", produces = MediaType.APPLICATION_JSON_VALUE )
	public Map<String, Object> getMap2(){
	
//		Map<String, String> map = Map.of("name : ", "park", "age : ", "20");
//		return map;
		
		return Map.of("name : ", "kim", "age : ", 20);
	}
	
	@GetMapping(value = "/check", params = {"height", "weight"}, 
			produces = MediaType.APPLICATION_JSON_VALUE )
	public ResponseEntity<SampleVO> check(Double height, Double weight){
		SampleVO vo = new SampleVO(0, ""+ height, ""+ weight);
		
		ResponseEntity<SampleVO> result =null;
		
		if(height<150) {
			result = ResponseEntity.status(HttpStatus.BAD_GATEWAY).body(vo);
		}else {
			result = ResponseEntity.status(HttpStatus.CREATED).body(vo);
		}
		
		return result;
	}
	
	//localhost:8181/sample/product/조운/50
	//                           
	@GetMapping(value = "/product/{name}/{age}" , produces = MediaType.APPLICATION_JSON_VALUE)
	public String getPath( 
			@PathVariable("name") String name,  //조운
			@PathVariable("age") Integer age  //50
			) {
		
		Map<String, Object> map = Map.of("name" , name, "age:" , age );
		
		Gson gson = new Gson();
		String jsonStr = gson.toJson(map);
		
		log.info("====> " + jsonStr);
		
		return jsonStr;
	}

	@GetMapping(value = "/product2/{name}/{age}" , produces = MediaType.APPLICATION_JSON_VALUE)
	public Map<String, Object> getPath2( 
			@PathVariable("name") String name,  //조운
			@PathVariable("age") Integer age  //50
			) {
		
		return  Map.of("name" , name, "age:" , age );
	}
	
	
	//json값을 요청 받아서 json으로 반환 
	@PostMapping(value = "/ticket", produces = MediaType.APPLICATION_JSON_VALUE)
	public SampleVO convert(@RequestBody SampleVO vo) {
		log.info("===========>> " + vo);
	
		return vo;
	}
}

























