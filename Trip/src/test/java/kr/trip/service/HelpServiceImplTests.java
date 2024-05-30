package kr.trip.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.trip.domain.Criteria;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class HelpServiceImplTests {
	
	@Autowired
	private HelpService helpservice;
	
	@Test
	public void pagingTest() {
		Criteria cri = new Criteria(1, 10, 1);
		log.info("ㅇㅇ");
		log.info(cri);
		
		
	}

}
