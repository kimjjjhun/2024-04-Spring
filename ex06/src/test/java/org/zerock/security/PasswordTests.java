package org.zerock.security;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.AuthVO;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;
import org.zerock.service.BoardServiceImplTest;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"}
		)
@Log4j
public class PasswordTests {
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Test
	//아이디 권한주입 테스트
	public void testInsertMember() {
		for(int i=1; i<=100; i++) {
			MemberVO memberVO = new MemberVO();
			
			memberVO.setUserid("user"+i);
			memberVO.setUserpw(bCryptPasswordEncoder.encode("1111"));
			memberVO.setName("USER"+i);
			
			
			List<AuthVO> authList = new ArrayList<AuthVO>();
			
			AuthVO userAuth = new AuthVO("user"+i, "ROLE_USER");
			authList.add(userAuth);
			
			if(i>50) {
				AuthVO managerAuth = new AuthVO("user"+i, "ROLE_MEMBER");
				authList.add(managerAuth);
			}
			
			if(i>=90) {
				AuthVO adminAuth = new AuthVO("user"+i, "ROLE_ADMIN");
				authList.add(adminAuth);
			}
			
			memberVO.setAuthList(authList);
			
			memberMapper.insert(memberVO);
			
			authList.stream().forEach(authVO->{
				
				memberMapper.insertAuth(authVO);
			});
		}
	}
	
	
	@Test
	public void testPassword() {
		
		String str ="1234";
		
		String encodeStr = bCryptPasswordEncoder.encode(str);
		
		log.info("===========================================");
		log.info(encodeStr);
		
		boolean match = bCryptPasswordEncoder.matches(str, encodeStr);
		log.info("===========================================");
		log.info(match);
	}
	
	@Test
	public void testRead() {
		
		MemberVO vo = memberMapper.read("user99");
		log.info(vo);
	}

}
