package org.zerock.service;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
@Aspect
public class Log4JAdvice implements Advice{
	
	@Pointcut("execution(* org.zerock.service.ReplyServiceImpl.*(..) )   ")  // 1
	public void allPointCut() {};
	
	@After("allPointCut()")
	public void log4JAdvice() {
		log.info("[ReplyController] 로그 기록====================");
	}

	@Override
	public void advice() {
		log.info("[ReplyController] 로그 기록====================");
		
	}
}
