package org.zerock.security;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;


@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler{

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication auth) throws IOException, ServletException {
		
		log.warn("로그인 성공");
		
		List<String> roleNames = new ArrayList<String>();
		log.info("=======================");
		log.info(auth.getName());
		log.info("=======================");
		log.info(auth.getPrincipal());
		log.info("=======================");
		log.info(auth.getAuthorities());
		log.info("=======================");
		
		auth.getAuthorities().forEach(authority->{
			roleNames.add(authority.getAuthority());
		});
		
		//로그인성공하고 admin이면 admin페이지로 이동
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/sample/admin");
			return ;
		//로그인성공하고 member이면 member페이지로 이동
		}else if(roleNames.contains("ROLE_MEMBER")){
			response.sendRedirect("/sample/member");
			return ;
		}
		
		response.sendRedirect("/");
	}

}
