package org.zerock.controller;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.WebApplicationContext;
import org.zerock.service.BoardService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
			"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@Log4j
@WebAppConfiguration
public class BoardControllerTests {
	
	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void testList() throws Exception{
		ModelMap modelMap = mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
			.andReturn()
			.getModelAndView()
			.getModelMap();
		
		log.info(modelMap);
				
	}
	
	@Test
	public void testGet() throws Exception{
		ModelMap modelMap = mockMvc.perform(MockMvcRequestBuilders.get("/board/get")
									.param("bno", "5"))
							.andReturn()
							.getModelAndView()
							.getModelMap();
		
		log.info(modelMap);
	}
	
	@Test
	public void testRegister() throws Exception{
		String viewName = mockMvc.perform(MockMvcRequestBuilders.post("/board/register")
				.param("title", "목업 제목")
				.param("content", "목업 내용")
				.param("writer", "목업자"))
				.andReturn()
				.getModelAndView()
				.getViewName();
		
		log.info("viewName : " +  viewName);
	};
	
	
	@Test
	public void testModify() throws Exception{
		String viewName = mockMvc.perform(MockMvcRequestBuilders.post("/board/modify")
				.param("title", "목업 수정")
				.param("content", "목업 수정")
				.param("writer", "목업수정자")
				.param("bno", "8"))
				
				.andReturn()
				.getModelAndView()
				.getViewName();
		
		log.info(viewName);
	}
	
	@Test
	public void testRemove() throws Exception{
		String viewName = mockMvc.perform(MockMvcRequestBuilders.post("/board/remove")
				.param("bno", "8"))
				
				.andReturn()
				.getModelAndView()
				.getViewName();
		
		log.info(viewName);
	}
	
	@Test
	public void testListPagging() throws Exception {
				ModelMap modelMap = mockMvc.perform(MockMvcRequestBuilders.get("/board/list")
				.param("pageNum", "1")
				.param("amount", "10"))
				.andReturn().getModelAndView().getModelMap();
				
				log.info(modelMap);
				
				
	}
	
	
	
}
