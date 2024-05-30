package org.zerock.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.SampleDTO;
import org.zerock.domain.TodoDTO;

import com.google.gson.Gson;

import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

@Controller
/*@RestController*/
@RequestMapping("/sample/*")
@Log4j
public class SampleController {
	
	/*
	 * // 날짜 가져오기 //
	 * 
	 * @InitBinder public void initBinder(WebDataBinder binder) { SimpleDateFormat
	 * dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	 * binder.registerCustomEditor(java.util.Date.class , new
	 * CustomDateEditor(dateFormat, false)); }
	 */
	
	@RequestMapping("")
	public void basic() {
		log.info("basic..");
	}
	
	@RequestMapping(value= "/basic", method = {RequestMethod.GET})
	public void basicGet() {
		log.info("basic Get...");
	}
	
	@RequestMapping(value= "/basic", method = {RequestMethod.POST})
	public void basicGetPost() {
		log.info("basic post...");
	}
	
	@GetMapping("/basic2")
	public void basicGet2() {
		log.info("basic get2...");
	}

	@PostMapping("/basic2")
	public void basicPost2() {
		log.info("basic Post2...");
	}
	
	@GetMapping("/ex01")
	public String ex01(SampleDTO dto) {
		log.info(dto);
		return "ex01";
	}
	
	@PostMapping("/ex01")
	public String ex01_(SampleDTO dto) {
		log.info(dto);
		return "ex01";
	}
	
	@GetMapping("/ex02")
	public String ex02(@RequestParam("name") String name,@RequestParam("age")int age) {
		log.info(name);
		log.info(age);
		return "ex02";
	}
	
	@PostMapping("/ex02")
	public String ex02_(@RequestParam("name") String name,@RequestParam("age")int age) {
		log.info(name);
		log.info(age);
		return "ex02";
	}
	
	@GetMapping("/ex03")
	public String ex03(TodoDTO dto) {
		log.info(dto);
		log.info(dto.getTitle());
		log.info(dto.getDueDate());
		return "ex03"; // 리턴이 있을경우 WEB-INF/view/ex03.jsp 로 이동
		
	}
	
	@GetMapping("/ex04")
	public String ex04(SampleDTO dto, int page, Model model) {
		log.info("dto : " + dto);
		log.info("page : " + page);
		
		model.addAttribute("list", dto);
		model.addAttribute("page", page);
		return "/sample/ex04";
	}
	
	@GetMapping("/ex044")
	public String ex04_(@RequestParam("age2") int age2, 
			RedirectAttributes rttr) {
		
		rttr.addFlashAttribute("age2", age2);
		
		
		return "redirect:/sample/ex01";
	}
	// 리턴이 없을경우 -> WEB-INF/view/sample/ex05.jsp 로 이동
	@GetMapping("/ex05")
	public void ex05() {
		log.info("ex05");
		
	}
	
	@GetMapping("/ex06")
	@ResponseBody    // java객체를 >> Json으로 변환해서 전달
	public SampleDTO ex06() {
		SampleDTO sampleDTO = new SampleDTO();
		
		sampleDTO.setName("bbbb");
		sampleDTO.setAge(100);
		return sampleDTO;
	}
	
	@GetMapping("/ex066") // Json값을 Java로 변환해서 dto 전달
	public String ex066(@RequestBody SampleDTO dto) {
		log.info("------------------------ex066");
		log.info(dto.getName());
		log.info(dto.getAge());
		log.info(dto);
		
		return "ex066";
	}
	
	/*
	 * @GetMapping("/ex07") public SampleDTO ex07() { SampleDTO sampleDTO = new
	 * SampleDTO();
	 * 
	 * sampleDTO.setName("ccc"); sampleDTO.setAge(80); return sampleDTO; }
	 */
	
	@GetMapping("/ex07")
	public ResponseEntity<String> ex07(){
		log.info("ex07.............");
		
		//{"name" : "홍길동"} // json 형태로 전달
		String msg = "{\"name\":\"홍길동\"}";
		
		HttpHeaders headers = new HttpHeaders();
		
		headers.add("Content-Type", "application/json; charset=utf-8");
		
		return new ResponseEntity<String>(msg, headers, HttpStatus.ACCEPTED);
	}
	
	@GetMapping("/ex08") // java 객체를 gson을 이용해서 json타입으로 변환한다음 전송
	public ResponseEntity<String> ex08(){
		log.info("ex08.............");
		
		SampleDTO dto = new SampleDTO();
		dto.setName("홍길동");
		dto.setAge(49);
		
		Gson gson = new Gson();
		String jsonStr = gson.toJson(dto);
		
		log.info(jsonStr);
		
		HttpHeaders headers = new HttpHeaders();
		
		headers.add("Content-Type", "application/json; charset=utf-8");
		
		return new ResponseEntity<String>(jsonStr, headers, HttpStatus.ACCEPTED);
	}
	
	//파일업로드하기
	@GetMapping("/exUpload") // 리턴값이 없을경우 WEP-INF/views/sample/exUpload.jsp 로 이동
	public void exIpload() {
		log.info("exUpload.............");
	}
	//파일업로드 - 포스트방식으로 요청을 받고 처리
	@PostMapping("/exUploadPost")
	public void exUploadPost(ArrayList<MultipartFile> files) {
		files.forEach(file -> {
			log.info("------------------------------");
			log.info("name :" + file.getOriginalFilename());
			log.info("size :" + file.getSize());
		});
	}
}
