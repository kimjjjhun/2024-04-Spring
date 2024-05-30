package org.zerock.service;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Aspect   // 3
@Service
@Log4j
public class LogAdvice implements Advice{

	
	@Pointcut("execution(* org.zerock.service.BoardServiceImpl.*(..) )   ")  // 1
	public void allPointCut() {};
	
	@Before("allPointCut()")  //2
	public void logAdvice() {
		log.info("[BoardController] 로그 기록====================");
	}

	@Override
	public void advice() {
		log.info("[BoardController] 로그 기록====================");
		
	}
}
