package kr.trip.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kr.trip.domain.MemberVO;
import kr.trip.mapper.MemberMapper;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService{
	
	@Autowired
	private MemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.info("------------------------------------------");
		log.info(username);	
		log.info("------------------------------------------");
		
		MemberVO vo = mapper.read(username);
		
		log.info(vo);
		
		return vo;
	}

}
