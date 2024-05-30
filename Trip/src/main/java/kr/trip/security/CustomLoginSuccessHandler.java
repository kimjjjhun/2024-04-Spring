package kr.trip.security;

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
		
	log.warn("Login Secucess");
		
		List<String> roleNames = new ArrayList<String>();
		log.info("---------------------------------------");
		log.info(auth.getName());
		log.info(auth.getPrincipal());
		log.info(auth.getAuthorities());
		
		auth.getAuthorities().forEach( authority-> {
			roleNames.add(authority.getAuthority());
		});
		
		if(roleNames.contains("ROLE_ADMIN")) {
			response.sendRedirect("/admin/main");
			return ;
		}else if(roleNames.contains("ROLE_MEMBER")){
			response.sendRedirect("/main");
			return ;
		}
		
		response.sendRedirect("/");
	}
	}

