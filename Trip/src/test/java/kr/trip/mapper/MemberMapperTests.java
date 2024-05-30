package kr.trip.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.trip.domain.AuthVO;
import kr.trip.domain.MemberVO;
import lombok.extern.log4j.Log4j;

@ContextConfiguration(
		{"file:src/main/webapp/WEB-INF/spring/root-context.xml",
			"file:src/main/webapp/WEB-INF/spring/security-context.xml"
		}
)
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
public class MemberMapperTests {
	
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder bc;
	
	
	@Test
	public void readTest() {
		
	try {	MemberVO vo = mapper.read("test1234");
	log.info(vo);
	}catch(Exception e) {
		e.printStackTrace();
	}
	}
	@Test
	public void test() {
	}
	

}
