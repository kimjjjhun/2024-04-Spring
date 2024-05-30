package kr.trip.mapper;


import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.trip.domain.Criteria;
import kr.trip.domain.HelpVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class HelpMapperTests {
	
	@Autowired
	private HelpMapper helpmapper;
	
	@Test
	public void insertHelpTest() {
	}
	
	@Test
	public void readHelpTest() {
		HelpVO vo = helpmapper.readHelp(4);
		
		log.info(vo);
	}
	
	@Test
	public void updateHelpTest() {
	}
	
	@Test
	public void deleteHelpTest() {
	log.info(helpmapper.deleteHelp(4));
	}
	
	@Test
	public void getListHelpTest() {
		helpmapper.getListHelp().forEach(result -> log.info(result));
	}
	
	
	
	

}
